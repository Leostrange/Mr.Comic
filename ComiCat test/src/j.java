// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;

final class j
{

    public static void a(Drawable drawable, int i)
    {
        if (drawable instanceof k)
        {
            ((k)drawable).setTint(i);
        }
    }

    public static void a(Drawable drawable, ColorStateList colorstatelist)
    {
        if (drawable instanceof k)
        {
            ((k)drawable).setTintList(colorstatelist);
        }
    }

    public static void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
    {
        if (drawable instanceof k)
        {
            ((k)drawable).setTintMode(mode);
        }
    }
}
