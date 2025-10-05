package org.apache.http.impl.pool;

import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.pool.AbstractConnPool;
import org.apache.http.pool.ConnFactory;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
public class BasicConnPool extends AbstractConnPool<HttpHost, HttpClientConnection, BasicPoolEntry> {
    private static final AtomicLong COUNTER = new AtomicLong();

    public BasicConnPool() {
        super(new BasicConnFactory(SocketConfig.DEFAULT, ConnectionConfig.DEFAULT), 2, 20);
    }

    public BasicConnPool(SocketConfig socketConfig, ConnectionConfig connectionConfig) {
        super(new BasicConnFactory(socketConfig, connectionConfig), 2, 20);
    }

    @Deprecated
    public BasicConnPool(HttpParams httpParams) {
        super(new BasicConnFactory(httpParams), 2, 20);
    }

    public BasicConnPool(ConnFactory<HttpHost, HttpClientConnection> connFactory) {
        super(connFactory, 2, 20);
    }

    /* access modifiers changed from: protected */
    public BasicPoolEntry createEntry(HttpHost httpHost, HttpClientConnection httpClientConnection) {
        return new BasicPoolEntry(Long.toString(COUNTER.getAndIncrement()), httpHost, httpClientConnection);
    }

    /* access modifiers changed from: protected */
    public boolean validate(BasicPoolEntry basicPoolEntry) {
        return !((HttpClientConnection) basicPoolEntry.getConnection()).isStale();
    }
}
