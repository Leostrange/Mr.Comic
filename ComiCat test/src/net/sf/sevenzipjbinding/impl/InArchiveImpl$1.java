// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import net.sf.sevenzipjbinding.PropID;

// Referenced classes of package net.sf.sevenzipjbinding.impl:
//            InArchiveImpl

static class 
{

    static final int $SwitchMap$net$sf$sevenzipjbinding$PropID[];

    static 
    {
        $SwitchMap$net$sf$sevenzipjbinding$PropID = new int[PropID.values().length];
        try
        {
            $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.SIZE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.PACKED_SIZE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.IS_FOLDER.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.ENCRYPTED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
