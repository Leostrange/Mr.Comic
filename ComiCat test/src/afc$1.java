// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

final class ang.Object
    implements Comparator
{

    final afc a;

    public final int compare(Object obj, Object obj1)
    {
        obj = (ISimpleInArchiveItem)obj;
        obj1 = (ISimpleInArchiveItem)obj1;
        return agv.a(afc.a(((ISimpleInArchiveItem) (obj))), afc.a(((ISimpleInArchiveItem) (obj1))));
    }

    (afc afc1)
    {
        a = afc1;
        super();
    }
}
