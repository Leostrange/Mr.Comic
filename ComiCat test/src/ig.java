// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;

public abstract class ig extends id
{

    public ig()
    {
    }

    public final Object a(JsonParser jsonparser)
    {
        return h(jsonparser);
    }

    public final void a(Object obj, JsonGenerator jsongenerator)
    {
        b(obj, jsongenerator);
    }

    public abstract void b(Object obj, JsonGenerator jsongenerator);

    public abstract Object h(JsonParser jsonparser);
}
