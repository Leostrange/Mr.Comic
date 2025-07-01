// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.net.Socket;
import java.util.Map;

public interface PrivateKeyStrategy
{

    public abstract String chooseAlias(Map map, Socket socket);
}
