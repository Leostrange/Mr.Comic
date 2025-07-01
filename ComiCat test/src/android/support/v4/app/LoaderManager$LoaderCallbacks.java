// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import g;

// Referenced classes of package android.support.v4.app:
//            LoaderManager

public static interface 
{

    public abstract g onCreateLoader(int i, Bundle bundle);

    public abstract void onLoadFinished(g g, Object obj);

    public abstract void onLoaderReset(g g);
}
