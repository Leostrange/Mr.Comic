// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http;


public interface ExceptionLogger
{

    public static final ExceptionLogger NO_OP = new ExceptionLogger() {

        public final void log(Exception exception)
        {
        }

    };
    public static final ExceptionLogger STD_ERR = new ExceptionLogger() {

        public final void log(Exception exception)
        {
            exception.printStackTrace();
        }

    };

    public abstract void log(Exception exception);

}
