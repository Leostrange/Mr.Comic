// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package android.support.v7.widget:
//            SwitchCompat

final class b extends Animation
{

    final float a;
    final float b;
    final SwitchCompat c;

    protected final void applyTransformation(float f, Transformation transformation)
    {
        SwitchCompat.a(c, a + b * f);
    }

    (SwitchCompat switchcompat, float f, float f1)
    {
        c = switchcompat;
        a = f;
        b = f1;
        super();
    }
}
