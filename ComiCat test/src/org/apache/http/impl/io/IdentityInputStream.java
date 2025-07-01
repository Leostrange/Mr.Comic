// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

public class IdentityInputStream extends InputStream
{

    private boolean closed;
    private final SessionInputBuffer in;

    public IdentityInputStream(SessionInputBuffer sessioninputbuffer)
    {
        closed = false;
        in = (SessionInputBuffer)Args.notNull(sessioninputbuffer, "Session input buffer");
    }

    public int available()
    {
        if (in instanceof BufferInfo)
        {
            return ((BufferInfo)in).length();
        } else
        {
            return 0;
        }
    }

    public void close()
    {
        closed = true;
    }

    public int read()
    {
        if (closed)
        {
            return -1;
        } else
        {
            return in.read();
        }
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (closed)
        {
            return -1;
        } else
        {
            return in.read(abyte0, i, j);
        }
    }
}
