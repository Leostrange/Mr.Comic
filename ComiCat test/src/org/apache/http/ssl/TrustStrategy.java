// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.security.cert.X509Certificate;

public interface TrustStrategy
{

    public abstract boolean isTrusted(X509Certificate ax509certificate[], String s);
}
