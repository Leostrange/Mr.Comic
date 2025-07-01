// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.GLES20;

public final class agq
{

    static int a()
    {
        android.opengl.EGLDisplay egldisplay;
        Object aobj[];
        android.opengl.EGLSurface eglsurface;
        Object obj;
        int ai1[];
        int i;
        try
        {
            egldisplay = EGL14.eglGetDisplay(0);
            aobj = new int[2];
            EGL14.eglInitialize(egldisplay, ((int []) (aobj)), 0, ((int []) (aobj)), 1);
            aobj = new EGLConfig[1];
            int ai[] = new int[1];
            EGL14.eglChooseConfig(egldisplay, new int[] {
                12351, 12430, 12329, 0, 12352, 4, 12339, 1, 12344
            }, 0, ((EGLConfig []) (aobj)), 0, 1, ai, 0);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return -1;
        }
        obj = aobj[0];
        eglsurface = EGL14.eglCreatePbufferSurface(egldisplay, ((EGLConfig) (obj)), new int[] {
            12375, 64, 12374, 64, 12344
        }, 0);
        obj = EGL14.eglCreateContext(egldisplay, ((EGLConfig) (obj)), EGL14.EGL_NO_CONTEXT, new int[] {
            12440, 2, 12344
        }, 0);
        EGL14.eglMakeCurrent(egldisplay, eglsurface, eglsurface, ((android.opengl.EGLContext) (obj)));
        ai1 = new int[1];
        GLES20.glGetIntegerv(3379, ai1, 0);
        EGL14.eglDestroySurface(egldisplay, eglsurface);
        EGL14.eglDestroyContext(egldisplay, ((android.opengl.EGLContext) (obj)));
        EGL14.eglTerminate(egldisplay);
        (new StringBuilder("Got texture size as: ")).append(ai1[0]);
        i = ai1[0];
        return i;
    }
}
