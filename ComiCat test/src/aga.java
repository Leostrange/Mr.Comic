// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import meanlabs.comicreader.ComicReaderApp;

public final class aga
{

    static aga a;
    public Bitmap b;
    Bitmap c;
    Bitmap d;
    Bitmap e;

    aga()
    {
        android.content.res.Resources resources = ComicReaderApp.a().getResources();
        b = BitmapFactory.decodeResource(resources, 0x7f020070);
        c = BitmapFactory.decodeResource(resources, 0x7f02006a);
        d = BitmapFactory.decodeResource(resources, 0x7f02005e);
        e = BitmapFactory.decodeResource(resources, 0x7f020096);
    }

    public static aga a()
    {
        if (a == null)
        {
            a = new aga();
        }
        return a;
    }
}
