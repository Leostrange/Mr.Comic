// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;

// Referenced classes of package org.apache.http.config:
//            ConnectionConfig, MessageConstraints

public static class fragmentSizeHint
{

    private int bufferSize;
    private Charset charset;
    private int fragmentSizeHint;
    private CodingErrorAction malformedInputAction;
    private MessageConstraints messageConstraints;
    private CodingErrorAction unmappableInputAction;

    public ConnectionConfig build()
    {
        Charset charset1;
label0:
        {
            Charset charset2 = charset;
            charset1 = charset2;
            if (charset2 != null)
            {
                break label0;
            }
            if (malformedInputAction == null)
            {
                charset1 = charset2;
                if (unmappableInputAction == null)
                {
                    break label0;
                }
            }
            charset1 = Consts.ASCII;
        }
        int i;
        int j;
        if (bufferSize > 0)
        {
            i = bufferSize;
        } else
        {
            i = 8192;
        }
        if (fragmentSizeHint >= 0)
        {
            j = fragmentSizeHint;
        } else
        {
            j = i;
        }
        return new ConnectionConfig(i, j, charset1, malformedInputAction, unmappableInputAction, messageConstraints);
    }

    public messageConstraints setBufferSize(int i)
    {
        bufferSize = i;
        return this;
    }

    public bufferSize setCharset(Charset charset1)
    {
        charset = charset1;
        return this;
    }

    public charset setFragmentSizeHint(int i)
    {
        fragmentSizeHint = i;
        return this;
    }

    public fragmentSizeHint setMalformedInputAction(CodingErrorAction codingerroraction)
    {
        malformedInputAction = codingerroraction;
        if (codingerroraction != null && charset == null)
        {
            charset = Consts.ASCII;
        }
        return this;
    }

    public charset setMessageConstraints(MessageConstraints messageconstraints)
    {
        messageConstraints = messageconstraints;
        return this;
    }

    public messageConstraints setUnmappableInputAction(CodingErrorAction codingerroraction)
    {
        unmappableInputAction = codingerroraction;
        if (codingerroraction != null && charset == null)
        {
            charset = Consts.ASCII;
        }
        return this;
    }

    ()
    {
        fragmentSizeHint = -1;
    }
}
