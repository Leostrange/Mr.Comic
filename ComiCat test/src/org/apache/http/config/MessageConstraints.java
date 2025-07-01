// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import org.apache.http.util.Args;

public class MessageConstraints
    implements Cloneable
{
    public static class Builder
    {

        private int maxHeaderCount;
        private int maxLineLength;

        public MessageConstraints build()
        {
            return new MessageConstraints(maxLineLength, maxHeaderCount);
        }

        public Builder setMaxHeaderCount(int i)
        {
            maxHeaderCount = i;
            return this;
        }

        public Builder setMaxLineLength(int i)
        {
            maxLineLength = i;
            return this;
        }

        Builder()
        {
            maxLineLength = -1;
            maxHeaderCount = -1;
        }
    }


    public static final MessageConstraints DEFAULT = (new Builder()).build();
    private final int maxHeaderCount;
    private final int maxLineLength;

    MessageConstraints(int i, int j)
    {
        maxLineLength = i;
        maxHeaderCount = j;
    }

    public static Builder copy(MessageConstraints messageconstraints)
    {
        Args.notNull(messageconstraints, "Message constraints");
        return (new Builder()).setMaxHeaderCount(messageconstraints.getMaxHeaderCount()).setMaxLineLength(messageconstraints.getMaxLineLength());
    }

    public static Builder custom()
    {
        return new Builder();
    }

    public static MessageConstraints lineLen(int i)
    {
        return new MessageConstraints(Args.notNegative(i, "Max line length"), -1);
    }

    protected volatile Object clone()
    {
        return clone();
    }

    protected MessageConstraints clone()
    {
        return (MessageConstraints)super.clone();
    }

    public int getMaxHeaderCount()
    {
        return maxHeaderCount;
    }

    public int getMaxLineLength()
    {
        return maxLineLength;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[maxLineLength=").append(maxLineLength).append(", maxHeaderCount=").append(maxHeaderCount).append("]");
        return stringbuilder.toString();
    }

}
