package org.apache.http.pool;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>> implements ConnPool<T, E>, ConnPoolControl<T> {
    private final LinkedList<E> available = new LinkedList<>();
    private final ConnFactory<T, C> connFactory;
    private volatile int defaultMaxPerRoute;
    private volatile boolean isShutDown;
    private final Set<E> leased = new HashSet();
    private final Lock lock = new ReentrantLock();
    private final Map<T, Integer> maxPerRoute = new HashMap();
    private volatile int maxTotal;
    private final LinkedList<PoolEntryFuture<E>> pending = new LinkedList<>();
    private final Map<T, RouteSpecificPool<T, C, E>> routeToPool = new HashMap();
    private volatile int validateAfterInactivity;

    public AbstractConnPool(ConnFactory<T, C> connFactory2, int i, int i2) {
        this.connFactory = (ConnFactory) Args.notNull(connFactory2, "Connection factory");
        this.defaultMaxPerRoute = Args.positive(i, "Max per route value");
        this.maxTotal = Args.positive(i2, "Max total value");
    }

    private int getMax(T t) {
        Integer num = this.maxPerRoute.get(t);
        return num != null ? num.intValue() : this.defaultMaxPerRoute;
    }

    private RouteSpecificPool<T, C, E> getPool(final T t) {
        RouteSpecificPool<T, C, E> routeSpecificPool = this.routeToPool.get(t);
        if (routeSpecificPool != null) {
            return routeSpecificPool;
        }
        AnonymousClass1 r0 = new RouteSpecificPool<T, C, E>(t) {
            /* access modifiers changed from: protected */
            public E createEntry(C c) {
                return AbstractConnPool.this.createEntry(t, c);
            }
        };
        this.routeToPool.put(t, r0);
        return r0;
    }

    /* access modifiers changed from: private */
    public E getPoolEntryBlocking(T t, Object obj, long j, TimeUnit timeUnit, PoolEntryFuture<E> poolEntryFuture) {
        RouteSpecificPool pool;
        Date date = null;
        if (j > 0) {
            date = new Date(System.currentTimeMillis() + timeUnit.toMillis(j));
        }
        this.lock.lock();
        try {
            pool = getPool(t);
            E e = null;
            while (e == null) {
                Asserts.check(!this.isShutDown, "Connection pool shut down");
                while (true) {
                    e = pool.getFree(obj);
                    if (e != null) {
                        if (e.isExpired(System.currentTimeMillis())) {
                            e.close();
                        } else if (this.validateAfterInactivity > 0 && e.getUpdated() + ((long) this.validateAfterInactivity) <= System.currentTimeMillis() && !validate(e)) {
                            e.close();
                        }
                        if (!e.isClosed()) {
                            break;
                        }
                        this.available.remove(e);
                        pool.free(e, false);
                    } else {
                        break;
                    }
                }
                if (e == null) {
                    int max = getMax(t);
                    int max2 = Math.max(0, (pool.getAllocatedCount() + 1) - max);
                    if (max2 > 0) {
                        for (int i = 0; i < max2; i++) {
                            PoolEntry lastUsed = pool.getLastUsed();
                            if (lastUsed == null) {
                                break;
                            }
                            lastUsed.close();
                            this.available.remove(lastUsed);
                            pool.remove(lastUsed);
                        }
                    }
                    if (pool.getAllocatedCount() < max) {
                        int max3 = Math.max(this.maxTotal - this.leased.size(), 0);
                        if (max3 > 0) {
                            if (this.available.size() > max3 - 1 && !this.available.isEmpty()) {
                                PoolEntry poolEntry = (PoolEntry) this.available.removeLast();
                                poolEntry.close();
                                getPool(poolEntry.getRoute()).remove(poolEntry);
                            }
                            E add = pool.add(this.connFactory.create(t));
                            this.leased.add(add);
                            this.lock.unlock();
                            return add;
                        }
                    }
                    pool.queue(poolEntryFuture);
                    this.pending.add(poolEntryFuture);
                    boolean await = poolEntryFuture.await(date);
                    pool.unqueue(poolEntryFuture);
                    this.pending.remove(poolEntryFuture);
                    if (!await && date != null && date.getTime() <= System.currentTimeMillis()) {
                        break;
                    }
                } else {
                    this.available.remove(e);
                    this.leased.add(e);
                    onReuse(e);
                    this.lock.unlock();
                    return e;
                }
            }
            throw new TimeoutException("Timeout waiting for connection");
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    private void purgePoolMap() {
        Iterator<Map.Entry<T, RouteSpecificPool<T, C, E>>> it = this.routeToPool.entrySet().iterator();
        while (it.hasNext()) {
            RouteSpecificPool routeSpecificPool = (RouteSpecificPool) it.next().getValue();
            if (routeSpecificPool.getAllocatedCount() + routeSpecificPool.getPendingCount() == 0) {
                it.remove();
            }
        }
    }

    public void closeExpired() {
        final long currentTimeMillis = System.currentTimeMillis();
        enumAvailable(new PoolEntryCallback<T, C>() {
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.isExpired(currentTimeMillis)) {
                    poolEntry.close();
                }
            }
        });
    }

    public void closeIdle(long j, TimeUnit timeUnit) {
        long j2 = 0;
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j);
        if (millis >= 0) {
            j2 = millis;
        }
        final long currentTimeMillis = System.currentTimeMillis() - j2;
        enumAvailable(new PoolEntryCallback<T, C>() {
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.getUpdated() <= currentTimeMillis) {
                    poolEntry.close();
                }
            }
        });
    }

    public abstract E createEntry(T t, C c);

    /* access modifiers changed from: protected */
    public void enumAvailable(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator it = this.available.iterator();
            while (it.hasNext()) {
                PoolEntry poolEntry = (PoolEntry) it.next();
                poolEntryCallback.process(poolEntry);
                if (poolEntry.isClosed()) {
                    getPool(poolEntry.getRoute()).remove(poolEntry);
                    it.remove();
                }
            }
            purgePoolMap();
        } finally {
            this.lock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public void enumLeased(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            for (E process : this.leased) {
                poolEntryCallback.process(process);
            }
        } finally {
            this.lock.unlock();
        }
    }

    public int getDefaultMaxPerRoute() {
        this.lock.lock();
        try {
            return this.defaultMaxPerRoute;
        } finally {
            this.lock.unlock();
        }
    }

    public int getMaxPerRoute(T t) {
        Args.notNull(t, "Route");
        this.lock.lock();
        try {
            return getMax(t);
        } finally {
            this.lock.unlock();
        }
    }

    public int getMaxTotal() {
        this.lock.lock();
        try {
            return this.maxTotal;
        } finally {
            this.lock.unlock();
        }
    }

    public Set<T> getRoutes() {
        this.lock.lock();
        try {
            return new HashSet(this.routeToPool.keySet());
        } finally {
            this.lock.unlock();
        }
    }

    public PoolStats getStats(T t) {
        Args.notNull(t, "Route");
        this.lock.lock();
        try {
            RouteSpecificPool pool = getPool(t);
            return new PoolStats(pool.getLeasedCount(), pool.getPendingCount(), pool.getAvailableCount(), getMax(t));
        } finally {
            this.lock.unlock();
        }
    }

    public PoolStats getTotalStats() {
        this.lock.lock();
        try {
            return new PoolStats(this.leased.size(), this.pending.size(), this.available.size(), this.maxTotal);
        } finally {
            this.lock.unlock();
        }
    }

    public int getValidateAfterInactivity() {
        return this.validateAfterInactivity;
    }

    public boolean isShutdown() {
        return this.isShutDown;
    }

    public Future<E> lease(T t, Object obj) {
        return lease(t, obj, (FutureCallback) null);
    }

    public Future<E> lease(T t, Object obj, FutureCallback<E> futureCallback) {
        Args.notNull(t, "Route");
        Asserts.check(!this.isShutDown, "Connection pool shut down");
        final T t2 = t;
        final Object obj2 = obj;
        return new PoolEntryFuture<E>(this.lock, futureCallback) {
            public E getPoolEntry(long j, TimeUnit timeUnit) {
                E access$000 = AbstractConnPool.this.getPoolEntryBlocking(t2, obj2, j, timeUnit, this);
                AbstractConnPool.this.onLease(access$000);
                return access$000;
            }
        };
    }

    /* access modifiers changed from: protected */
    public void onLease(E e) {
    }

    /* access modifiers changed from: protected */
    public void onRelease(E e) {
    }

    /* access modifiers changed from: protected */
    public void onReuse(E e) {
    }

    public void release(E e, boolean z) {
        this.lock.lock();
        try {
            if (this.leased.remove(e)) {
                RouteSpecificPool pool = getPool(e.getRoute());
                pool.free(e, z);
                if (!z || this.isShutDown) {
                    e.close();
                } else {
                    this.available.addFirst(e);
                }
                onRelease(e);
                PoolEntryFuture nextPending = pool.nextPending();
                if (nextPending != null) {
                    this.pending.remove(nextPending);
                } else {
                    nextPending = this.pending.poll();
                }
                if (nextPending != null) {
                    nextPending.wakeup();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    public void setDefaultMaxPerRoute(int i) {
        Args.positive(i, "Max per route value");
        this.lock.lock();
        try {
            this.defaultMaxPerRoute = i;
        } finally {
            this.lock.unlock();
        }
    }

    public void setMaxPerRoute(T t, int i) {
        Args.notNull(t, "Route");
        Args.positive(i, "Max per route value");
        this.lock.lock();
        try {
            this.maxPerRoute.put(t, Integer.valueOf(i));
        } finally {
            this.lock.unlock();
        }
    }

    public void setMaxTotal(int i) {
        Args.positive(i, "Max value");
        this.lock.lock();
        try {
            this.maxTotal = i;
        } finally {
            this.lock.unlock();
        }
    }

    public void setValidateAfterInactivity(int i) {
        this.validateAfterInactivity = i;
    }

    public void shutdown() {
        if (!this.isShutDown) {
            this.isShutDown = true;
            this.lock.lock();
            try {
                Iterator it = this.available.iterator();
                while (it.hasNext()) {
                    ((PoolEntry) it.next()).close();
                }
                for (E close : this.leased) {
                    close.close();
                }
                for (RouteSpecificPool<T, C, E> shutdown : this.routeToPool.values()) {
                    shutdown.shutdown();
                }
                this.routeToPool.clear();
                this.leased.clear();
                this.available.clear();
            } finally {
                this.lock.unlock();
            }
        }
    }

    public String toString() {
        return "[leased: " + this.leased + "][available: " + this.available + "][pending: " + this.pending + "]";
    }

    public boolean validate(E e) {
        return true;
    }
}
