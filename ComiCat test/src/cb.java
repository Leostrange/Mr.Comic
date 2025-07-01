// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class cb
{
    static interface a
    {

        public abstract boolean a();

        public abstract List b();

        public abstract Object c();
    }


    // Unreferenced inner class cb$1

/* anonymous class */
    static final class _cls1 extends AccessibilityNodeProvider
    {

        final a a;

        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i)
        {
            a.c();
            return null;
        }

        public final List findAccessibilityNodeInfosByText(String s, int i)
        {
            return a.b();
        }

        public final boolean performAction(int i, int j, Bundle bundle)
        {
            return a.a();
        }

            
            {
                a = a1;
                super();
            }
    }

}
