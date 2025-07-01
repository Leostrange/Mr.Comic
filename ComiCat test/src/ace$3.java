// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

final class ang.Object
    implements android.view.nClickListener
{

    final ace a;

    public final void onClick(View view)
    {
        view = a;
        if (aei.a().d.b(((ace) (view)).c).equals(((ace) (view)).g.getText().toString()))
        {
            if (((ace) (view)).f != null)
            {
                ((ace) (view)).f.a(true);
            }
            view.dismiss();
            return;
        } else
        {
            ((TextView)view.findViewById(0x7f0c00ae)).setText(((ace) (view)).b);
            return;
        }
    }

    (ace ace1)
    {
        a = ace1;
        super();
    }
}
