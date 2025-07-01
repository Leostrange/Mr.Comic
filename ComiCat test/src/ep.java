// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

public final class ep extends ContextWrapper
{
    static final class a extends em
    {

        private final er a;

        public final Drawable getDrawable(int i)
        {
            Drawable drawable = super.getDrawable(i);
            if (drawable != null)
            {
                a.a(i, drawable);
            }
            return drawable;
        }

        public a(Resources resources, er er1)
        {
            super(resources);
            a = er1;
        }
    }


    private Resources a;

    private ep(Context context)
    {
        super(context);
    }

    public static Context a(Context context)
    {
        Object obj = context;
        if (!(context instanceof ep))
        {
            obj = new ep(context);
        }
        return ((Context) (obj));
    }

    public final Resources getResources()
    {
        if (a == null)
        {
            a = new a(super.getResources(), er.a(this));
        }
        return a;
    }
}
