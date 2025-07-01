// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.ActionBarContainer;

public final class eg extends ef
{

    public eg(ActionBarContainer actionbarcontainer)
    {
        super(actionbarcontainer);
    }

    public final void getOutline(Outline outline)
    {
        if (a.d)
        {
            if (a.c != null)
            {
                a.c.getOutline(outline);
            }
        } else
        if (a.a != null)
        {
            a.a.getOutline(outline);
            return;
        }
    }
}
