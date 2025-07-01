// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.ViewPropertyAnimator;

static class > extends >
{

    public final void a(View view, bv bv)
    {
        view.animate().setUpdateListener(new <init>(bv, view));
    }

    >()
    {
    }
}
