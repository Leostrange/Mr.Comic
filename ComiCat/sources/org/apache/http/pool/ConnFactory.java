package org.apache.http.pool;

public interface ConnFactory<T, C> {
    C create(T t);
}
