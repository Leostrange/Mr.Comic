// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.graphics.Bitmap;

// Referenced classes of package com.radaee.pdf:
//            Page

public class Document
{
    public static interface a
    {
    }

    public static interface b
    {
    }

    public static interface c
    {
    }


    protected long a;
    public int b;
    private String c;

    public Document()
    {
        a = 0L;
        b = 0;
    }

    private static native long addFormResFont(long l, long l1, long l2);

    private static native long addFormResForm(long l, long l1, long l2);

    private static native long addFormResGState(long l, long l1, long l2);

    private static native long addFormResImage(long l, long l1, long l2);

    private static native boolean addOutlineChild(long l, long l1, String s, int i, float f);

    private static native boolean addOutlineNext(long l, long l1, String s, int i, float f);

    private static native long advGetObj(long l, long l1);

    private static native long advGetRef(long l);

    private static native long advNewFlateStream(long l, byte abyte0[]);

    private static native long advNewIndirectObj(long l);

    private static native long advNewIndirectObjWithData(long l, long l1);

    private static native long advNewRawStream(long l, byte abyte0[]);

    private static native void advReload(long l);

    private static native boolean canSave(long l);

    private static native boolean changePageRect(long l, int i, float f, float f1, float f2, float f3);

    private static native int checkSignByteRange(long l);

    private static native void close(long l);

    private static native long create(String s);

    private static native long createForStream(c c1);

    private static native boolean encryptAs(long l, String s, String s1, String s2, int i, int j, byte abyte0[]);

    private static native String exportForm(long l);

    private static native void freeForm(long l, long l1);

    private static native int getEFCount(long l);

    private static native boolean getEFData(long l, int i, String s);

    private static native String getEFName(long l, int i);

    private static native float getFontAscent(long l, long l1);

    private static native float getFontDescent(long l, long l1);

    private static native byte[] getID(long l, int i);

    private static native String getMeta(long l, String s);

    private static native long getOutlineChild(long l, long l1);

    private static native int getOutlineDest(long l, long l1);

    private static native String getOutlineFileLink(long l, long l1);

    private static native long getOutlineNext(long l, long l1);

    private static native String getOutlineTitle(long l, long l1);

    private static native String getOutlineURI(long l, long l1);

    private static native long getPage(long l, int i);

    private static native long getPage0(long l);

    private static native int getPageCount(long l);

    private static native float getPageHeight(long l, int i);

    private static native float getPageWidth(long l, int i);

    private static native float[] getPagesMaxSize(long l);

    private static native int getPerm(long l);

    private static native int getPermission(long l);

    private static native int[] getSignByteRange(long l);

    private static native byte[] getSignContents(long l);

    private static native String getSignFilter(long l);

    private static native String getSignSubFilter(long l);

    private static native String getXMP(long l);

    private static native void importEnd(long l, long l1);

    private static native boolean importPage(long l, long l1, int i, int j);

    private static native long importStart(long l, long l1);

    private static native boolean isEncrypted(long l);

    private static native boolean movePage(long l, int i, int j);

    private static native long newFontCID(long l, String s, int i);

    private static native long newForm(long l);

    private static native long newGState(long l);

    private static native long newImage(long l, Bitmap bitmap, boolean flag);

    private static native long newImageJPEG(long l, String s);

    private static native long newImageJPEGByArray(long l, byte abyte0[], int i);

    private static native long newImageJPX(long l, String s);

    private static native long newPage(long l, int i, float f, float f1);

    private static native long open(String s, String s1);

    private static native long openMem(byte abyte0[], String s);

    private static native long openStream(c c1, String s);

    private static native long openStreamNoLoadPages(c c1, String s);

    private static native boolean removeOutline(long l, long l1);

    private static native boolean removePage(long l, int i);

    private static native boolean runJS(long l, String s, b b1);

    private static native boolean save(long l);

    private static native boolean saveAs(long l, String s, boolean flag);

    private static native boolean setCache(long l, String s);

    private static native void setFontDel(long l, a a1);

    private static native void setFormContent(long l, long l1, float f, float f1, float f2, float f3, 
            long l2);

    private static native boolean setGStateFillAlpha(long l, long l1, int i);

    private static native boolean setGStateStrokeAlpha(long l, long l1, int i);

    private static native boolean setMeta(long l, String s, String s1);

    private static native boolean setOutlineTitle(long l, long l1, String s);

    private static native boolean setPageRotate(long l, int i, int j);

    public final int a(String s)
    {
        if (a == 0L)
        {
            try
            {
                a = open(s, null);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                a = -10L;
            }
            if (a <= 0L && a >= -10L)
            {
                int i = (int)a;
                a = 0L;
                b = 0;
                return i;
            } else
            {
                b = getPageCount(a);
                c = s;
                return 0;
            }
        } else
        {
            return 0;
        }
    }

    public final Page a(int i)
    {
        long l;
        if (a != 0L)
        {
            if ((l = getPage(a, i)) != 0L)
            {
                Page page = new Page();
                page.a = l;
                page.b = this;
                return page;
            }
        }
        return null;
    }

    public final boolean a()
    {
        return a != 0L;
    }

    public final float b(int i)
    {
        float f1 = getPageWidth(a, i);
        float f = f1;
        if (f1 <= 0.0F)
        {
            f = 1.0F;
        }
        return f;
    }

    public final void b()
    {
        if (a != 0L)
        {
            close(a);
        }
        a = 0L;
        b = 0;
    }

    public final float c(int i)
    {
        float f1 = getPageHeight(a, i);
        float f = f1;
        if (f1 <= 0.0F)
        {
            f = 1.0F;
        }
        return f;
    }

    public final int c()
    {
        return b;
    }

    protected void finalize()
    {
        b();
        super.finalize();
    }
}
