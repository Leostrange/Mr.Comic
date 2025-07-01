// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;
import ds;
import dz;

public class NavigationMenuView extends ListView
    implements dz
{

    public NavigationMenuView(Context context)
    {
        this(context, null);
    }

    public NavigationMenuView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public int getWindowAnimations()
    {
        return 0;
    }

    public void initialize(ds ds)
    {
    }
}
