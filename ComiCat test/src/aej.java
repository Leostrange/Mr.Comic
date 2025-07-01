// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.sqlite.SQLiteStatement;

public final class aej
{

    SQLiteStatement a;

    public aej()
    {
        a = null;
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
