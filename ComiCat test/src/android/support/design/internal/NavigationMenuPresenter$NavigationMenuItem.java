// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.internal;

import du;

// Referenced classes of package android.support.design.internal:
//            NavigationMenuPresenter

static class mPaddingBottom
{

    private final du mMenuItem;
    private final int mPaddingBottom;
    private final int mPaddingTop;

    public static mPaddingBottom of(du du1)
    {
        return new <init>(du1, 0, 0);
    }

    public static <init> separator(int i, int j)
    {
        return new <init>(null, i, j);
    }

    public du getMenuItem()
    {
        return mMenuItem;
    }

    public int getPaddingBottom()
    {
        return mPaddingBottom;
    }

    public int getPaddingTop()
    {
        return mPaddingTop;
    }

    public boolean isEnabled()
    {
        return mMenuItem != null && !mMenuItem.hasSubMenu() && mMenuItem.isEnabled();
    }

    public boolean isSeparator()
    {
        return mMenuItem == null;
    }

    private (du du1, int i, int j)
    {
        mMenuItem = du1;
        mPaddingTop = i;
        mPaddingBottom = j;
    }
}
