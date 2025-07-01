// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.Window;

final class ang.Object
    implements android.view.nFocusChangeListener
{

    final ace a;

    public final void onFocusChange(View view, boolean flag)
    {
        a.getWindow().setSoftInputMode(5);
    }

    (ace ace1)
    {
        a = ace1;
        super();
    }
}
