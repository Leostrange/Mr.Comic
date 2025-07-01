// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;
import java.util.zip.ZipEntry;

final class ang.Object
    implements Comparator
{

    final afi a;

    public final int compare(Object obj, Object obj1)
    {
        obj = (ZipEntry)obj;
        obj1 = (ZipEntry)obj1;
        return agv.a(((ZipEntry) (obj)).getName(), ((ZipEntry) (obj1)).getName());
    }

    (afi afi1)
    {
        a = afi1;
        super();
    }
}
