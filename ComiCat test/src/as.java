// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

final class as
{
    static class a
        implements android.view.LayoutInflater.Factory
    {

        final au a;

        public View onCreateView(String s, Context context, AttributeSet attributeset)
        {
            return a.onCreateView(null, s, context, attributeset);
        }

        public String toString()
        {
            return (new StringBuilder()).append(getClass().getName()).append("{").append(a).append("}").toString();
        }

        a(au au1)
        {
            a = au1;
        }
    }

}
