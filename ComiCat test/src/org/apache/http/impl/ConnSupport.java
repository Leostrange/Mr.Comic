// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import org.apache.http.config.ConnectionConfig;

public final class ConnSupport
{

    public ConnSupport()
    {
    }

    public static CharsetDecoder createDecoder(ConnectionConfig connectionconfig)
    {
        if (connectionconfig == null)
        {
            return null;
        }
        Object obj1 = connectionconfig.getCharset();
        Object obj = connectionconfig.getMalformedInputAction();
        CodingErrorAction codingerroraction = connectionconfig.getUnmappableInputAction();
        if (obj1 != null)
        {
            obj1 = ((Charset) (obj1)).newDecoder();
            if (obj != null)
            {
                connectionconfig = ((ConnectionConfig) (obj));
            } else
            {
                connectionconfig = CodingErrorAction.REPORT;
            }
            obj = ((CharsetDecoder) (obj1)).onMalformedInput(connectionconfig);
            if (codingerroraction != null)
            {
                connectionconfig = codingerroraction;
            } else
            {
                connectionconfig = CodingErrorAction.REPORT;
            }
            return ((CharsetDecoder) (obj)).onUnmappableCharacter(connectionconfig);
        } else
        {
            return null;
        }
    }

    public static CharsetEncoder createEncoder(ConnectionConfig connectionconfig)
    {
        Object obj1;
        if (connectionconfig != null)
        {
            if ((obj1 = connectionconfig.getCharset()) != null)
            {
                Object obj = connectionconfig.getMalformedInputAction();
                CodingErrorAction codingerroraction = connectionconfig.getUnmappableInputAction();
                obj1 = ((Charset) (obj1)).newEncoder();
                if (obj != null)
                {
                    connectionconfig = ((ConnectionConfig) (obj));
                } else
                {
                    connectionconfig = CodingErrorAction.REPORT;
                }
                obj = ((CharsetEncoder) (obj1)).onMalformedInput(connectionconfig);
                if (codingerroraction != null)
                {
                    connectionconfig = codingerroraction;
                } else
                {
                    connectionconfig = CodingErrorAction.REPORT;
                }
                return ((CharsetEncoder) (obj)).onUnmappableCharacter(connectionconfig);
            }
        }
        return null;
    }
}
