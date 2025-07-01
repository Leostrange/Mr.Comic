// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

static class > extends >
{

    public final void a(ViewGroup viewgroup)
    {
        if (bj.a == null)
        {
            try
            {
                bj.a = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] {
                    Boolean.TYPE
                });
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", nosuchmethodexception);
            }
            bj.a.setAccessible(true);
        }
        try
        {
            bj.a.invoke(viewgroup, new Object[] {
                Boolean.valueOf(true)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", viewgroup);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", viewgroup);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", viewgroup);
        }
    }

    public final boolean j(View view)
    {
        return view.isOpaque();
    }

    >()
    {
    }
}
