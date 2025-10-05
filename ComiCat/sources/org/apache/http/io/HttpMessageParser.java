package org.apache.http.io;

import org.apache.http.HttpMessage;

public interface HttpMessageParser<T extends HttpMessage> {
    T parse();
}
