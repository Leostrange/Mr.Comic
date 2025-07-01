// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.Map;

public final class da
{

    static final Class a[] = {
        android/content/Context, android/util/AttributeSet
    };
    private static final Map b = new ab();
    private final Object c[] = new Object[2];

    public da()
    {
    }

    public static Context a(Context context, AttributeSet attributeset, boolean flag)
    {
label0:
        {
            attributeset = context.obtainStyledAttributes(attributeset, cv.k.View, 0, 0);
            int i;
            int j;
            if (flag)
            {
                i = attributeset.getResourceId(cv.k.View_android_theme, 0);
            } else
            {
                i = 0;
            }
            j = i;
            if (i == 0)
            {
                i = attributeset.getResourceId(cv.k.View_theme, 0);
                j = i;
                if (i != 0)
                {
                    Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
                    j = i;
                }
            }
            attributeset.recycle();
            attributeset = context;
            if (j == 0)
            {
                break label0;
            }
            if (context instanceof dh)
            {
                attributeset = context;
                if (((dh)context).a == j)
                {
                    break label0;
                }
            }
            attributeset = new dh(context, j);
        }
        return attributeset;
    }

    private View a(Context context, String s, String s1)
    {
        Object obj;
        Constructor constructor;
        constructor = (Constructor)b.get(s);
        obj = constructor;
        if (constructor != null) goto _L2; else goto _L1
_L1:
        try
        {
            obj = context.getClassLoader();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        context = (new StringBuilder()).append(s1).append(s).toString();
_L3:
        obj = ((ClassLoader) (obj)).loadClass(context).asSubclass(android/view/View).getConstructor(a);
        b.put(s, obj);
_L2:
        ((Constructor) (obj)).setAccessible(true);
        context = (View)((Constructor) (obj)).newInstance(c);
        return context;
        context = s;
          goto _L3
    }

    public final View a(Context context, String s, AttributeSet attributeset)
    {
        String s1;
        s1 = s;
        if (s.equals("view"))
        {
            s1 = attributeset.getAttributeValue(null, "class");
        }
        c[0] = context;
        c[1] = attributeset;
        if (-1 != s1.indexOf('.'))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        context = a(context, s1, "android.widget.");
        c[0] = null;
        c[1] = null;
        return context;
        try
        {
            context = a(context, s1, ((String) (null)));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            c[0] = null;
            c[1] = null;
            return null;
        }
        finally
        {
            c[0] = null;
        }
        c[0] = null;
        c[1] = null;
        return context;
        c[1] = null;
        throw context;
    }

}
