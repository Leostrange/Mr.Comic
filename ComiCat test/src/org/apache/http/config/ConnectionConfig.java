// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.config:
//            MessageConstraints

public class ConnectionConfig
    implements Cloneable
{
    public static class Builder
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

        public Builder setBufferSize(int i)
        {
            bufferSize = i;
            return this;
        }

        public Builder setCharset(Charset charset1)
        {
            charset = charset1;
            return this;
        }

        public Builder setFragmentSizeHint(int i)
        {
            fragmentSizeHint = i;
            return this;
        }

        public Builder setMalformedInputAction(CodingErrorAction codingerroraction)
        {
            malformedInputAction = codingerroraction;
            if (codingerroraction != null && charset == null)
            {
                charset = Consts.ASCII;
            }
            return this;
        }

        public Builder setMessageConstraints(MessageConstraints messageconstraints)
        {
            messageConstraints = messageconstraints;
            return this;
        }

        public Builder setUnmappableInputAction(CodingErrorAction codingerroraction)
        {
            unmappableInputAction = codingerroraction;
            if (codingerroraction != null && charset == null)
            {
                charset = Consts.ASCII;
            }
            return this;
        }

        Builder()
        {
            fragmentSizeHint = -1;
        }
    }


    public static final ConnectionConfig DEFAULT = (new Builder()).build();
    private final int bufferSize;
    private final Charset charset;
    private final int fragmentSizeHint;
    private final CodingErrorAction malformedInputAction;
    private final MessageConstraints messageConstraints;
    private final CodingErrorAction unmappableInputAction;

    ConnectionConfig(int i, int j, Charset charset1, CodingErrorAction codingerroraction, CodingErrorAction codingerroraction1, MessageConstraints messageconstraints)
    {
        bufferSize = i;
        fragmentSizeHint = j;
        charset = charset1;
        malformedInputAction = codingerroraction;
        unmappableInputAction = codingerroraction1;
        messageConstraints = messageconstraints;
    }

    public static Builder copy(ConnectionConfig connectionconfig)
    {
        Args.notNull(connectionconfig, "Connection config");
        return (new Builder()).setCharset(connectionconfig.getCharset()).setMalformedInputAction(connectionconfig.getMalformedInputAction()).setUnmappableInputAction(connectionconfig.getUnmappableInputAction()).setMessageConstraints(connectionconfig.getMessageConstraints());
    }

    public static Builder custom()
    {
        return new Builder();
    }

    protected volatile Object clone()
    {
        return clone();
    }

    protected ConnectionConfig clone()
    {
        return (ConnectionConfig)super.clone();
    }

    public int getBufferSize()
    {
        return bufferSize;
    }

    public Charset getCharset()
    {
        return charset;
    }

    public int getFragmentSizeHint()
    {
        return fragmentSizeHint;
    }

    public CodingErrorAction getMalformedInputAction()
    {
        return malformedInputAction;
    }

    public MessageConstraints getMessageConstraints()
    {
        return messageConstraints;
    }

    public CodingErrorAction getUnmappableInputAction()
    {
        return unmappableInputAction;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[bufferSize=").append(bufferSize).append(", fragmentSizeHint=").append(fragmentSizeHint).append(", charset=").append(charset).append(", malformedInputAction=").append(malformedInputAction).append(", unmappableInputAction=").append(unmappableInputAction).append(", messageConstraints=").append(messageConstraints).append("]");
        return stringbuilder.toString();
    }

}
