// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;


// Referenced classes of package meanlabs.comicreader:
//            Viewer

final class a
    implements Runnable
{

    final Viewer a;

    public final void run()
    {
        Viewer.b(a);
    }

    (Viewer viewer)
    {
        a = viewer;
        super();
    }
}
