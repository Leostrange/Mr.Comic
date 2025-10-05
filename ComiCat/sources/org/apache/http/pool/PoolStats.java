package org.apache.http.pool;

import java.io.Serializable;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class PoolStats implements Serializable {
    private static final long serialVersionUID = -2807686144795228544L;
    private final int available;
    private final int leased;
    private final int max;
    private final int pending;

    public PoolStats(int i, int i2, int i3, int i4) {
        this.leased = i;
        this.pending = i2;
        this.available = i3;
        this.max = i4;
    }

    public int getAvailable() {
        return this.available;
    }

    public int getLeased() {
        return this.leased;
    }

    public int getMax() {
        return this.max;
    }

    public int getPending() {
        return this.pending;
    }

    public String toString() {
        return "[leased: " + this.leased + "; pending: " + this.pending + "; available: " + this.available + "; max: " + this.max + "]";
    }
}
