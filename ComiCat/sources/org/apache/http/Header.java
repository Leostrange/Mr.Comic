package org.apache.http;

public interface Header {
    HeaderElement[] getElements();

    String getName();

    String getValue();
}
