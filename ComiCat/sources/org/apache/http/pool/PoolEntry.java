package org.apache.http.pool;

import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
public abstract class PoolEntry<T, C> {
    private final C conn;
    private final long created;
    private long expiry;
    private final String id;
    private final T route;
    private volatile Object state;
    private long updated;
    private final long validityDeadline;

    public PoolEntry(String str, T t, C c) {
        this(str, t, c, 0, TimeUnit.MILLISECONDS);
    }

    public PoolEntry(String str, T t, C c, long j, TimeUnit timeUnit) {
        Args.notNull(t, "Route");
        Args.notNull(c, "Connection");
        Args.notNull(timeUnit, "Time unit");
        this.id = str;
        this.route = t;
        this.conn = c;
        this.created = System.currentTimeMillis();
        if (j > 0) {
            this.validityDeadline = this.created + timeUnit.toMillis(j);
        } else {
            this.validityDeadline = Long.MAX_VALUE;
        }
        this.expiry = this.validityDeadline;
    }

    public abstract void close();

    public C getConnection() {
        return this.conn;
    }

    public long getCreated() {
        return this.created;
    }

    public synchronized long getExpiry() {
        return this.expiry;
    }

    public String getId() {
        return this.id;
    }

    public T getRoute() {
        return this.route;
    }

    public Object getState() {
        return this.state;
    }

    public synchronized long getUpdated() {
        return this.updated;
    }

    @Deprecated
    public long getValidUnit() {
        return this.validityDeadline;
    }

    public long getValidityDeadline() {
        return this.validityDeadline;
    }

    public abstract boolean isClosed();

    public synchronized boolean isExpired(long j) {
        return j >= this.expiry;
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public String toString() {
        return "[id:" + this.id + "][route:" + this.route + "][state:" + this.state + "]";
    }

    public synchronized void updateExpiry(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        this.updated = System.currentTimeMillis();
        this.expiry = Math.min(j > 0 ? this.updated + timeUnit.toMillis(j) : Long.MAX_VALUE, this.validityDeadline);
    }
}
