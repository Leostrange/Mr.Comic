package org.apache.http.pool;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

abstract class RouteSpecificPool<T, C, E extends PoolEntry<T, C>> {
    private final LinkedList<E> available = new LinkedList<>();
    private final Set<E> leased = new HashSet();
    private final LinkedList<PoolEntryFuture<E>> pending = new LinkedList<>();
    private final T route;

    RouteSpecificPool(T t) {
        this.route = t;
    }

    public E add(C c) {
        E createEntry = createEntry(c);
        this.leased.add(createEntry);
        return createEntry;
    }

    /* access modifiers changed from: protected */
    public abstract E createEntry(C c);

    public void free(E e, boolean z) {
        Args.notNull(e, "Pool entry");
        Asserts.check(this.leased.remove(e), "Entry %s has not been leased from this pool", (Object) e);
        if (z) {
            this.available.addFirst(e);
        }
    }

    public int getAllocatedCount() {
        return this.available.size() + this.leased.size();
    }

    public int getAvailableCount() {
        return this.available.size();
    }

    public E getFree(Object obj) {
        if (!this.available.isEmpty()) {
            if (obj != null) {
                Iterator it = this.available.iterator();
                while (it.hasNext()) {
                    E e = (PoolEntry) it.next();
                    if (obj.equals(e.getState())) {
                        it.remove();
                        this.leased.add(e);
                        return e;
                    }
                }
            }
            Iterator it2 = this.available.iterator();
            while (it2.hasNext()) {
                E e2 = (PoolEntry) it2.next();
                if (e2.getState() == null) {
                    it2.remove();
                    this.leased.add(e2);
                    return e2;
                }
            }
        }
        return null;
    }

    public E getLastUsed() {
        if (!this.available.isEmpty()) {
            return (PoolEntry) this.available.getLast();
        }
        return null;
    }

    public int getLeasedCount() {
        return this.leased.size();
    }

    public int getPendingCount() {
        return this.pending.size();
    }

    public final T getRoute() {
        return this.route;
    }

    public PoolEntryFuture<E> nextPending() {
        return this.pending.poll();
    }

    public void queue(PoolEntryFuture<E> poolEntryFuture) {
        if (poolEntryFuture != null) {
            this.pending.add(poolEntryFuture);
        }
    }

    public boolean remove(E e) {
        Args.notNull(e, "Pool entry");
        return this.available.remove(e) || this.leased.remove(e);
    }

    public void shutdown() {
        Iterator it = this.pending.iterator();
        while (it.hasNext()) {
            ((PoolEntryFuture) it.next()).cancel(true);
        }
        this.pending.clear();
        Iterator it2 = this.available.iterator();
        while (it2.hasNext()) {
            ((PoolEntry) it2.next()).close();
        }
        this.available.clear();
        for (E close : this.leased) {
            close.close();
        }
        this.leased.clear();
    }

    public String toString() {
        return "[route: " + this.route + "][leased: " + this.leased.size() + "][available: " + this.available.size() + "][pending: " + this.pending.size() + "]";
    }

    public void unqueue(PoolEntryFuture<E> poolEntryFuture) {
        if (poolEntryFuture != null) {
            this.pending.remove(poolEntryFuture);
        }
    }
}
