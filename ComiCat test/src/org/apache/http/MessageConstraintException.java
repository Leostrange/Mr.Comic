// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http;

import java.nio.charset.CharacterCodingException;

public class MessageConstraintException extends CharacterCodingException
{

    private static final long serialVersionUID = 0x545694392b779bb7L;
    private final String message;

    public MessageConstraintException(String s)
    {
        message = s;
    }

    public String getMessage()
    {
        return message;
    }
}
