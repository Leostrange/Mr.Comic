// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.graphics.Bitmap;

public final class agx
{

    public static String a(Activity activity, Bitmap bitmap, String s, String s1)
    {
        try
        {
            activity = android.provider.MediaStore.Images.Media.insertImage(activity.getContentResolver(), bitmap, s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            activity.printStackTrace();
            return null;
        }
        return activity;
    }
}
