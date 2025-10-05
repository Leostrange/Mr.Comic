package org.apache.http.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.util.Args;

public class BasicFuture<T> implements Future<T>, Cancellable {
    private final FutureCallback<T> callback;
    private volatile boolean cancelled;
    private volatile boolean completed;
    private volatile Exception ex;
    private volatile T result;

    public BasicFuture(FutureCallback<T> futureCallback) {
        this.callback = futureCallback;
    }

    private T getResult() {
        if (this.ex == null) {
            return this.result;
        }
        throw new ExecutionException(this.ex);
    }

    public boolean cancel() {
        return cancel(true);
    }

    public boolean cancel(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            if (this.completed) {
                z2 = false;
            } else {
                this.completed = true;
                this.cancelled = true;
                notifyAll();
                if (this.callback != null) {
                    this.callback.cancelled();
                }
            }
        }
        return z2;
    }

    public boolean completed(T t) {
        boolean z = true;
        synchronized (this) {
            if (this.completed) {
                z = false;
            } else {
                this.completed = true;
                this.result = t;
                notifyAll();
                if (this.callback != null) {
                    this.callback.completed(t);
                }
            }
        }
        return z;
    }

    public boolean failed(Exception exc) {
        boolean z = true;
        synchronized (this) {
            if (this.completed) {
                z = false;
            } else {
                this.completed = true;
                this.ex = exc;
                notifyAll();
                if (this.callback != null) {
                    this.callback.failed(exc);
                }
            }
        }
        return z;
    }

    public synchronized T get() {
        while (!this.completed) {
            wait();
        }
        return getResult();
    }

    public synchronized T get(long j, TimeUnit timeUnit) {
        T result2;
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j);
        long currentTimeMillis = millis <= 0 ? 0 : System.currentTimeMillis();
        if (this.completed) {
            result2 = getResult();
        } else if (millis <= 0) {
            throw new TimeoutException();
        } else {
            long j2 = millis;
            do {
                wait(j2);
                if (this.completed) {
                    result2 = getResult();
                } else {
                    j2 = millis - (System.currentTimeMillis() - currentTimeMillis);
                }
            } while (j2 > 0);
            throw new TimeoutException();
        }
        return result2;
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    public boolean isDone() {
        return this.completed;
    }
}
