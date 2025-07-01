// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.ISequentialOutStream;

// Referenced classes of package net.sf.sevenzipjbinding.impl:
//            InArchiveImpl

static final class password extends password
    implements ICryptoGetTextPassword
{

    private String password;

    public final String cryptoGetTextPassword()
    {
        return password;
    }

    public (ISequentialOutStream isequentialoutstream, String s)
    {
        super(isequentialoutstream);
        password = s;
    }
}
