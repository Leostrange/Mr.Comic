package com.fasterxml.jackson.core.io;

import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;

public abstract class OutputDecorator implements Serializable {
    public abstract OutputStream decorate(IOContext iOContext, OutputStream outputStream);

    public abstract Writer decorate(IOContext iOContext, Writer writer);
}
