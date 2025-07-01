// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.core.io:
//            JsonStringEncoder

public class SerializedString
    implements SerializableString, Serializable
{

    protected byte _unquotedUTF8Ref[];
    protected final String _value;

    public SerializedString(String s)
    {
        if (s == null)
        {
            throw new IllegalStateException("Null String illegal for SerializedString");
        } else
        {
            _value = s;
            return;
        }
    }

    public final byte[] asUnquotedUTF8()
    {
        byte abyte1[] = _unquotedUTF8Ref;
        byte abyte0[] = abyte1;
        if (abyte1 == null)
        {
            abyte0 = JsonStringEncoder.getInstance().encodeAsUTF8(_value);
            _unquotedUTF8Ref = abyte0;
        }
        return abyte0;
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj == null || obj.getClass() != getClass())
        {
            return false;
        } else
        {
            obj = (SerializedString)obj;
            return _value.equals(((SerializedString) (obj))._value);
        }
    }

    public final String getValue()
    {
        return _value;
    }

    public final int hashCode()
    {
        return _value.hashCode();
    }

    public final String toString()
    {
        return _value;
    }
}
