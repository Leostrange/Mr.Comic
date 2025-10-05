package com.fasterxml.jackson.core.io;

import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;

public abstract class InputDecorator implements Serializable {
    public abstract InputStream decorate(IOContext iOContext, InputStream inputStream);

    public abstract Reader decorate(IOContext iOContext, Reader reader);
}
