// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.pool;

import java.util.Collection;
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
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

// Referenced classes of package org.apache.http.pool:
//            ConnPool, ConnPoolControl, ConnFactory, RouteSpecificPool, 
//            PoolEntry, PoolEntryFuture, PoolEntryCallback, PoolStats

public abstract class AbstractConnPool
    implements ConnPool, ConnPoolControl
{

    private final LinkedList available = new LinkedList();
    private final ConnFactory connFactory;
    private volatile int defaultMaxPerRoute;
    private volatile boolean isShutDown;
    private final Set leased = new HashSet();
    private final Lock lock = new ReentrantLock();
    private final Map maxPerRoute = new HashMap();
    private volatile int maxTotal;
    private final LinkedList pending = new LinkedList();
    private final Map routeToPool = new HashMap();
    private volatile int validateAfterInactivity;

    public AbstractConnPool(ConnFactory connfactory, int i, int j)
    {
        connFactory = (ConnFactory)Args.notNull(connfactory, "Connection factory");
        defaultMaxPerRoute = Args.positive(i, "Max per route value");
        maxTotal = Args.positive(j, "Max total value");
    }

    private int getMax(Object obj)
    {
        obj = (Integer)maxPerRoute.get(obj);
        if (obj != null)
        {
            return ((Integer) (obj)).intValue();
        } else
        {
            return defaultMaxPerRoute;
        }
    }

    private RouteSpecificPool getPool(final Object final_obj)
    {
        RouteSpecificPool routespecificpool = (RouteSpecificPool)routeToPool.get(final_obj);
        Object obj = routespecificpool;
        if (routespecificpool == null)
        {
            obj = new RouteSpecificPool(final_obj) {

                final AbstractConnPool this$0;
                final Object val$route;

                protected PoolEntry createEntry(Object obj1)
                {
                    return AbstractConnPool.this.createEntry(route, obj1);
                }

            
            {
                this$0 = AbstractConnPool.this;
                route = obj1;
                super(final_obj);
            }
            };
            routeToPool.put(final_obj, obj);
        }
        return ((RouteSpecificPool) (obj));
    }

    private PoolEntry getPoolEntryBlocking(Object obj, Object obj1, long l, TimeUnit timeunit, PoolEntryFuture poolentryfuture)
    {
        Date date;
        date = null;
        if (l > 0L)
        {
            date = new Date(System.currentTimeMillis() + timeunit.toMillis(l));
        }
        lock.lock();
        RouteSpecificPool routespecificpool = getPool(obj);
        timeunit = null;
_L10:
        if (timeunit != null)
        {
            break; /* Loop/switch isn't completed */
        }
        PoolEntry poolentry;
        boolean flag;
        if (!isShutDown)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Asserts.check(flag, "Connection pool shut down");
_L3:
        poolentry = routespecificpool.getFree(obj1);
        if (poolentry == null)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        if (!poolentry.isExpired(System.currentTimeMillis())) goto _L2; else goto _L1
_L1:
        poolentry.close();
_L5:
        if (!poolentry.isClosed())
        {
            break MISSING_BLOCK_LABEL_187;
        }
        available.remove(poolentry);
        routespecificpool.free(poolentry, false);
          goto _L3
        obj;
        lock.unlock();
        throw obj;
_L2:
        if (validateAfterInactivity <= 0 || poolentry.getUpdated() + (long)validateAfterInactivity > System.currentTimeMillis() || validate(poolentry)) goto _L5; else goto _L4
_L4:
        poolentry.close();
          goto _L5
        if (poolentry == null)
        {
            break MISSING_BLOCK_LABEL_232;
        }
        available.remove(poolentry);
        leased.add(poolentry);
        onReuse(poolentry);
        lock.unlock();
        return poolentry;
        int j;
        int k;
        j = getMax(obj);
        k = Math.max(0, (routespecificpool.getAllocatedCount() + 1) - j);
        if (k <= 0) goto _L7; else goto _L6
_L6:
        int i = 0;
_L8:
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        timeunit = routespecificpool.getLastUsed();
        if (timeunit == null)
        {
            break; /* Loop/switch isn't completed */
        }
        timeunit.close();
        available.remove(timeunit);
        routespecificpool.remove(timeunit);
        i++;
        if (true) goto _L8; else goto _L7
_L7:
        if (routespecificpool.getAllocatedCount() >= j)
        {
            break MISSING_BLOCK_LABEL_443;
        }
        i = leased.size();
        i = Math.max(maxTotal - i, 0);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_443;
        }
        if (available.size() > i - 1 && !available.isEmpty())
        {
            obj1 = (PoolEntry)available.removeLast();
            ((PoolEntry) (obj1)).close();
            getPool(((PoolEntry) (obj1)).getRoute()).remove(((PoolEntry) (obj1)));
        }
        obj = routespecificpool.add(connFactory.create(obj));
        leased.add(obj);
        lock.unlock();
        return ((PoolEntry) (obj));
        routespecificpool.queue(poolentryfuture);
        pending.add(poolentryfuture);
        flag = poolentryfuture.await(date);
        routespecificpool.unqueue(poolentryfuture);
        pending.remove(poolentryfuture);
        timeunit = poolentry;
        if (flag) goto _L10; else goto _L9
_L9:
        timeunit = poolentry;
        if (date == null) goto _L10; else goto _L11
_L11:
        timeunit = poolentry;
        if (date.getTime() > System.currentTimeMillis()) goto _L10; else goto _L12
_L12:
        throw new TimeoutException("Timeout waiting for connection");
        obj;
        routespecificpool.unqueue(poolentryfuture);
        pending.remove(poolentryfuture);
        throw obj;
    }

    private void purgePoolMap()
    {
        Iterator iterator = routeToPool.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            RouteSpecificPool routespecificpool = (RouteSpecificPool)((java.util.Map.Entry)iterator.next()).getValue();
            int i = routespecificpool.getPendingCount();
            if (routespecificpool.getAllocatedCount() + i == 0)
            {
                iterator.remove();
            }
        } while (true);
    }

    public void closeExpired()
    {
        enumAvailable(new PoolEntryCallback() {

            final AbstractConnPool this$0;
            final long val$now;

            public void process(PoolEntry poolentry)
            {
                if (poolentry.isExpired(now))
                {
                    poolentry.close();
                }
            }

            
            {
                this$0 = AbstractConnPool.this;
                now = l;
                super();
            }
        });
    }

    public void closeIdle(long l, TimeUnit timeunit)
    {
        long l1 = 0L;
        Args.notNull(timeunit, "Time unit");
        l = timeunit.toMillis(l);
        if (l < 0L)
        {
            l = l1;
        }
        enumAvailable(new PoolEntryCallback() {

            final AbstractConnPool this$0;
            final long val$deadline;

            public void process(PoolEntry poolentry)
            {
                if (poolentry.getUpdated() <= deadline)
                {
                    poolentry.close();
                }
            }

            
            {
                this$0 = AbstractConnPool.this;
                deadline = l;
                super();
            }
        });
    }

    public abstract PoolEntry createEntry(Object obj, Object obj1);

    protected void enumAvailable(PoolEntryCallback poolentrycallback)
    {
        lock.lock();
        Iterator iterator = available.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            PoolEntry poolentry = (PoolEntry)iterator.next();
            poolentrycallback.process(poolentry);
            if (poolentry.isClosed())
            {
                getPool(poolentry.getRoute()).remove(poolentry);
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_84;
        poolentrycallback;
        lock.unlock();
        throw poolentrycallback;
        purgePoolMap();
        lock.unlock();
        return;
    }

    protected void enumLeased(PoolEntryCallback poolentrycallback)
    {
        lock.lock();
        for (Iterator iterator = leased.iterator(); iterator.hasNext(); poolentrycallback.process((PoolEntry)iterator.next())) { }
        break MISSING_BLOCK_LABEL_58;
        poolentrycallback;
        lock.unlock();
        throw poolentrycallback;
        lock.unlock();
        return;
    }

    public int getDefaultMaxPerRoute()
    {
        lock.lock();
        int i = defaultMaxPerRoute;
        lock.unlock();
        return i;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public int getMaxPerRoute(Object obj)
    {
        Args.notNull(obj, "Route");
        lock.lock();
        int i = getMax(obj);
        lock.unlock();
        return i;
        obj;
        lock.unlock();
        throw obj;
    }

    public int getMaxTotal()
    {
        lock.lock();
        int i = maxTotal;
        lock.unlock();
        return i;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public Set getRoutes()
    {
        lock.lock();
        HashSet hashset = new HashSet(routeToPool.keySet());
        lock.unlock();
        return hashset;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public PoolStats getStats(Object obj)
    {
        Args.notNull(obj, "Route");
        lock.lock();
        RouteSpecificPool routespecificpool = getPool(obj);
        obj = new PoolStats(routespecificpool.getLeasedCount(), routespecificpool.getPendingCount(), routespecificpool.getAvailableCount(), getMax(obj));
        lock.unlock();
        return ((PoolStats) (obj));
        obj;
        lock.unlock();
        throw obj;
    }

    public PoolStats getTotalStats()
    {
        lock.lock();
        PoolStats poolstats = new PoolStats(leased.size(), pending.size(), available.size(), maxTotal);
        lock.unlock();
        return poolstats;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public int getValidateAfterInactivity()
    {
        return validateAfterInactivity;
    }

    public boolean isShutdown()
    {
        return isShutDown;
    }

    public Future lease(Object obj, Object obj1)
    {
        return lease(obj, obj1, null);
    }

    public Future lease(Object obj, Object obj1, FutureCallback futurecallback)
    {
        Args.notNull(obj, "Route");
        boolean flag;
        if (!isShutDown)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Asserts.check(flag, "Connection pool shut down");
        return new PoolEntryFuture(obj, obj1) {

            final AbstractConnPool this$0;
            final Object val$route;
            final Object val$state;

            public volatile Object getPoolEntry(long l, TimeUnit timeunit)
            {
                return getPoolEntry(l, timeunit);
            }

            public PoolEntry getPoolEntry(long l, TimeUnit timeunit)
            {
                timeunit = getPoolEntryBlocking(route, state, l, timeunit, this);
                onLease(timeunit);
                return timeunit;
            }

            
            {
                this$0 = AbstractConnPool.this;
                route = obj;
                state = obj1;
                super(final_lock1, final_futurecallback);
            }
        };
    }

    protected void onLease(PoolEntry poolentry)
    {
    }

    protected void onRelease(PoolEntry poolentry)
    {
    }

    protected void onReuse(PoolEntry poolentry)
    {
    }

    public volatile void release(Object obj, boolean flag)
    {
        release((PoolEntry)obj, flag);
    }

    public void release(PoolEntry poolentry, boolean flag)
    {
        lock.lock();
        if (!leased.remove(poolentry)) goto _L2; else goto _L1
_L1:
        RouteSpecificPool routespecificpool;
        routespecificpool = getPool(poolentry.getRoute());
        routespecificpool.free(poolentry, flag);
        if (!flag) goto _L4; else goto _L3
_L3:
        if (isShutDown) goto _L4; else goto _L5
_L5:
        available.addFirst(poolentry);
_L7:
        onRelease(poolentry);
        poolentry = routespecificpool.nextPending();
        if (poolentry == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        pending.remove(poolentry);
_L8:
        if (poolentry == null) goto _L2; else goto _L6
_L6:
        poolentry.wakeup();
_L2:
        lock.unlock();
        return;
_L4:
        poolentry.close();
          goto _L7
        poolentry;
        lock.unlock();
        throw poolentry;
        poolentry = (PoolEntryFuture)pending.poll();
          goto _L8
    }

    public void setDefaultMaxPerRoute(int i)
    {
        Args.positive(i, "Max per route value");
        lock.lock();
        defaultMaxPerRoute = i;
        lock.unlock();
        return;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public void setMaxPerRoute(Object obj, int i)
    {
        Args.notNull(obj, "Route");
        Args.positive(i, "Max per route value");
        lock.lock();
        maxPerRoute.put(obj, Integer.valueOf(i));
        lock.unlock();
        return;
        obj;
        lock.unlock();
        throw obj;
    }

    public void setMaxTotal(int i)
    {
        Args.positive(i, "Max value");
        lock.lock();
        maxTotal = i;
        lock.unlock();
        return;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
    }

    public void setValidateAfterInactivity(int i)
    {
        validateAfterInactivity = i;
    }

    public void shutdown()
    {
        if (isShutDown)
        {
            return;
        }
        isShutDown = true;
        lock.lock();
        for (Iterator iterator = available.iterator(); iterator.hasNext(); ((PoolEntry)iterator.next()).close()) { }
        break MISSING_BLOCK_LABEL_66;
        Exception exception;
        exception;
        lock.unlock();
        throw exception;
        for (Iterator iterator1 = leased.iterator(); iterator1.hasNext(); ((PoolEntry)iterator1.next()).close()) { }
        for (Iterator iterator2 = routeToPool.values().iterator(); iterator2.hasNext(); ((RouteSpecificPool)iterator2.next()).shutdown()) { }
        routeToPool.clear();
        leased.clear();
        available.clear();
        lock.unlock();
        return;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[leased: ");
        stringbuilder.append(leased);
        stringbuilder.append("][available: ");
        stringbuilder.append(available);
        stringbuilder.append("][pending: ");
        stringbuilder.append(pending);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public boolean validate(PoolEntry poolentry)
    {
        return true;
    }

}
