// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class ThumbnailItemView extends RelativeLayout
{

    int a;

    public ThumbnailItemView(Context context)
    {
        super(context);
    }

    public ThumbnailItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ThumbnailItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        setMeasuredDimension(getMeasuredWidth(), a);
    }

    public void setHeight(int i)
    {
        a = i;
    }
}
