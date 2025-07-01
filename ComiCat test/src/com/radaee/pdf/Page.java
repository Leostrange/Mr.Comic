// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.graphics.Bitmap;
import android.util.Log;

// Referenced classes of package com.radaee.pdf:
//            Document, DIB, Matrix, Global

public class Page
{
    public final class a
    {

        protected long a;
        final Page b;

        public final int a()
        {
            return Page.a(a);
        }

        public final void b()
        {
            Page.b(a);
            a = 0L;
        }

        protected final void finalize()
        {
            b();
            super.finalize();
        }

        public a()
        {
            b = Page.this;
            super();
        }
    }


    protected long a;
    protected Document b;

    public Page()
    {
        a = 0L;
    }

    static int a(long l)
    {
        return findGetCount(l);
    }

    private static native boolean addAnnot(long l, long l1);

    private static native boolean addAnnotAttachment(long l, String s, int i, float af[]);

    private static native boolean addAnnotBitmap(long l, long l1, float af[]);

    private static native boolean addAnnotEditbox(long l, long l1, float af[], int i, float f, int j, 
            float f1, int k);

    private static native boolean addAnnotEditbox2(long l, float af[], int i, float f, int j, float f1, int k);

    private static native boolean addAnnotEllipse(long l, long l1, float af[], float f, int i, int j);

    private static native boolean addAnnotEllipse2(long l, float af[], float f, int i, int j);

    private static native boolean addAnnotGlyph(long l, long l1, long l2, int i, boolean flag);

    private static native boolean addAnnotGoto(long l, float af[], int i, float f);

    private static native boolean addAnnotHWriting(long l, long l1, long l2, float f, float f1);

    private static native boolean addAnnotInk(long l, long l1, long l2, float f, float f1);

    private static native boolean addAnnotInk2(long l, long l1);

    private static native boolean addAnnotLine(long l, long l1, float af[], float af1[], int i, int j, 
            float f, int k, int i1);

    private static native boolean addAnnotLine2(long l, float af[], float af1[], int i, int j, float f, int k, 
            int i1);

    private static native boolean addAnnotMarkup(long l, long l1, float af[], int i, int j);

    private static native boolean addAnnotMarkup2(long l, int i, int j, int k, int i1);

    private static native boolean addAnnotPolygon(long l, long l1, int i, int j, float f);

    private static native boolean addAnnotPolyline(long l, long l1, int i, int j, int k, int i1, 
            float f);

    private static native boolean addAnnotPopup(long l, long l1, float af[], boolean flag);

    private static native boolean addAnnotRect(long l, long l1, float af[], float f, int i, int j);

    private static native boolean addAnnotRect2(long l, float af[], float f, int i, int j);

    private static native boolean addAnnotRichMedia(long l, String s, String s1, int i, long l1, float af[]);

    private static native boolean addAnnotStamp(long l, float af[], int i);

    private static native boolean addAnnotText(long l, float af[]);

    private static native boolean addAnnotURI(long l, float af[], String s);

    private static native boolean addContent(long l, long l1, boolean flag);

    private static native long addResFont(long l, long l1);

    private static native long addResForm(long l, long l1);

    private static native long addResGState(long l, long l1);

    private static native long addResImage(long l, long l1);

    private static native long advGetAnnotRef(long l, long l1);

    private static native long advGetRef(long l);

    private static native void advReload(long l);

    private static native void advReloadAnnot(long l, long l1);

    static void b(long l)
    {
        findClose(l);
    }

    private static native void close(long l);

    private static native boolean copyAnnot(long l, long l1, float af[]);

    private static native void findClose(long l);

    private static native int findGetCount(long l);

    private static native int findGetFirstChar(long l, int i);

    private static native long findOpen(long l, String s, boolean flag, boolean flag1);

    private static native boolean flate(long l);

    private static native long getAnnot(long l, int i);

    private static native String getAnnot3D(long l, long l1);

    private static native boolean getAnnot3DData(long l, long l1, String s);

    private static native String getAnnotAttachment(long l, long l1);

    private static native boolean getAnnotAttachmentData(long l, long l1, String s);

    private static native long getAnnotByName(long l, String s);

    private static native int getAnnotCheckStatus(long l, long l1);

    private static native String getAnnotComboItem(long l, long l1, int i);

    private static native int getAnnotComboItemCount(long l, long l1);

    private static native int getAnnotComboItemSel(long l, long l1);

    private static native int getAnnotCount(long l);

    private static native int getAnnotDest(long l, long l1);

    private static native int getAnnotEditMaxlen(long l, long l1);

    private static native String getAnnotEditText(long l, long l1);

    private static native int getAnnotEditTextColor(long l, long l1);

    private static native String getAnnotEditTextFormat(long l, long l1);

    private static native boolean getAnnotEditTextRect(long l, long l1, float af[]);

    private static native float getAnnotEditTextSize(long l, long l1);

    private static native int getAnnotEditType(long l, long l1);

    private static native int getAnnotFieldFlag(long l, long l1);

    private static native String getAnnotFieldFormat(long l, long l1);

    private static native String getAnnotFieldFullName(long l, long l1);

    private static native String getAnnotFieldFullName2(long l, long l1);

    private static native String getAnnotFieldName(long l, long l1);

    private static native String getAnnotFieldNameWithoutNO(long l, long l1);

    private static native int getAnnotFieldType(long l, long l1);

    private static native String getAnnotFileLink(long l, long l1);

    private static native int getAnnotFillColor(long l, long l1);

    private static native long getAnnotFromPoint(long l, float f, float f1);

    private static native int getAnnotIcon(long l, long l1);

    private static native long getAnnotInkPath(long l, long l1);

    private static native String getAnnotJS(long l, long l1);

    private static native String getAnnotListItem(long l, long l1, int i);

    private static native int getAnnotListItemCount(long l, long l1);

    private static native int[] getAnnotListSels(long l, long l1);

    private static native float[] getAnnotMarkupRects(long l, long l1);

    private static native String getAnnotMovie(long l, long l1);

    private static native boolean getAnnotMovieData(long l, long l1, String s);

    private static native String getAnnotName(long l, long l1);

    private static native long getAnnotPolygonPath(long l, long l1);

    private static native long getAnnotPolylinePath(long l, long l1);

    private static native long getAnnotPopup(long l, long l1);

    private static native String getAnnotPopupLabel(long l, long l1);

    private static native boolean getAnnotPopupOpen(long l, long l1);

    private static native String getAnnotPopupSubject(long l, long l1);

    private static native String getAnnotPopupText(long l, long l1);

    private static native void getAnnotRect(long l, long l1, float af[]);

    private static native long getAnnotRef(long l, long l1);

    private static native String getAnnotRemoteDest(long l, long l1);

    private static native boolean getAnnotReset(long l, long l1);

    private static native boolean getAnnotRichMediaData(long l, long l1, String s, String s1);

    private static native int getAnnotRichMediaItemActived(long l, long l1);

    private static native String getAnnotRichMediaItemAsset(long l, long l1, int i);

    private static native int getAnnotRichMediaItemCount(long l, long l1);

    private static native String getAnnotRichMediaItemPara(long l, long l1, int i);

    private static native String getAnnotRichMediaItemSource(long l, long l1, int i);

    private static native boolean getAnnotRichMediaItemSourceData(long l, long l1, int i, String s);

    private static native int getAnnotRichMediaItemType(long l, long l1, int i);

    private static native int getAnnotSignStatus(long l, long l1);

    private static native String getAnnotSound(long l, long l1);

    private static native boolean getAnnotSoundData(long l, long l1, int ai[], String s);

    private static native int getAnnotStrokeColor(long l, long l1);

    private static native float getAnnotStrokeWidth(long l, long l1);

    private static native String getAnnotSubmitPara(long l, long l1);

    private static native String getAnnotSubmitTarget(long l, long l1);

    private static native int getAnnotType(long l, long l1);

    private static native String getAnnotURI(long l, long l1);

    private static native float[] getCropBox(long l);

    private static native float[] getMediaBox(long l);

    private static native int getRotate(long l);

    private static native boolean insertAnnotComboItem(long l, long l1, int i, String s, String s1);

    private static native boolean insertAnnotListItem(long l, long l1, int i, String s, String s1);

    private static native boolean isAnnotHide(long l, long l1);

    private static native boolean isAnnotLocked(long l, long l1);

    private static native boolean isAnnotLockedContent(long l, long l1);

    private static native boolean isAnnotReadOnly(long l, long l1);

    private static native boolean moveAnnot(long l, long l1, long l2, float af[]);

    private static native int objsAlignWord(long l, int i, int j);

    private static native int objsGetCharCount(long l);

    private static native String objsGetCharFontName(long l, int i);

    private static native int objsGetCharIndex(long l, float af[]);

    private static native void objsGetCharRect(long l, int i, float af[]);

    private static native String objsGetString(long l, int i, int j);

    private static native void objsStart(long l, boolean flag);

    private static native boolean reflow(long l, long l1, float f, float f1);

    private static native int reflowGetCharColor(long l, int i, int j);

    private static native int reflowGetCharCount(long l, int i);

    private static native String reflowGetCharFont(long l, int i, int j);

    private static native float reflowGetCharHeight(long l, int i, int j);

    private static native void reflowGetCharRect(long l, int i, int j, float af[]);

    private static native int reflowGetCharUnicode(long l, int i, int j);

    private static native float reflowGetCharWidth(long l, int i, int j);

    private static native int reflowGetParaCount(long l);

    private static native String reflowGetText(long l, int i, int j, int k, int i1);

    private static native float reflowStart(long l, float f, float f1, boolean flag);

    private static native boolean reflowToBmp(long l, Bitmap bitmap, float f, float f1);

    private static native boolean removeAnnot(long l, long l1);

    private static native boolean removeAnnotComboItem(long l, long l1, int i);

    private static native boolean removeAnnotListItem(long l, long l1, int i);

    private static native boolean render(long l, long l1, long l2, int i);

    private static native boolean renderAnnotToBmp(long l, long l1, Bitmap bitmap);

    private static native void renderCancel(long l);

    private static native boolean renderIsFinished(long l);

    private static native void renderPrepare(long l, long l1);

    private static native boolean renderThumb(long l, Bitmap bitmap);

    private static native boolean renderThumbToBuf(long l, int ai[], int i, int j);

    private static native boolean renderThumbToDIB(long l, long l1);

    private static native boolean renderToBmp(long l, Bitmap bitmap, long l1, int i);

    private static native boolean renderToBuf(long l, int ai[], int i, int j, long l1, int k);

    private static native boolean setAnnotCheckValue(long l, long l1, boolean flag);

    private static native boolean setAnnotComboItem(long l, long l1, int i);

    private static native boolean setAnnotEditFont(long l, long l1, long l2);

    private static native boolean setAnnotEditText(long l, long l1, String s);

    private static native boolean setAnnotEditTextColor(long l, long l1, int i);

    private static native boolean setAnnotFillColor(long l, long l1, int i);

    private static native void setAnnotHide(long l, long l1, boolean flag);

    private static native boolean setAnnotIcon(long l, long l1, int i);

    private static native boolean setAnnotIcon2(long l, long l1, String s, long l2);

    private static native boolean setAnnotInkPath(long l, long l1, long l2);

    private static native boolean setAnnotListSels(long l, long l1, int ai[]);

    private static native void setAnnotLock(long l, long l1, boolean flag);

    private static native boolean setAnnotName(long l, long l1, String s);

    private static native boolean setAnnotPolygonPath(long l, long l1, long l2);

    private static native boolean setAnnotPolylinePath(long l, long l1, long l2);

    private static native boolean setAnnotPopupLabel(long l, long l1, String s);

    private static native boolean setAnnotPopupOpen(long l, long l1, boolean flag);

    private static native boolean setAnnotPopupSubject(long l, long l1, String s);

    private static native boolean setAnnotPopupText(long l, long l1, String s);

    private static native boolean setAnnotRadio(long l, long l1);

    private static native void setAnnotReadOnly(long l, long l1, boolean flag);

    private static native void setAnnotRect(long l, long l1, float af[]);

    private static native boolean setAnnotReset(long l, long l1);

    private static native boolean setAnnotStrokeColor(long l, long l1, int i);

    private static native boolean setAnnotStrokeWidth(long l, long l1, float f);

    public final a a(String s, boolean flag, boolean flag1)
    {
        long l = findOpen(a, s, flag, flag1);
        if (l == 0L)
        {
            return null;
        } else
        {
            s = new a();
            s.a = l;
            return s;
        }
    }

    public final void a()
    {
        if (b != null)
        {
            if (b.a != 0L)
            {
                close(a);
            } else
            {
                Log.e("Bad Coding", "Document object closed, but Page object not closed, will cause memory leaks.");
            }
        }
        b = null;
        a = 0L;
    }

    public final void a(DIB dib)
    {
        renderPrepare(a, dib.a);
    }

    public final boolean a(Bitmap bitmap, Matrix matrix)
    {
        if (bitmap == null || matrix == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = renderToBmp(a, bitmap, matrix.a, Global.q);
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return false;
        }
        return flag;
    }

    public final boolean a(DIB dib, Matrix matrix)
    {
        boolean flag;
        try
        {
            flag = render(a, dib.a, matrix.a, Global.q);
        }
        // Misplaced declaration of an exception variable
        catch (DIB dib)
        {
            dib.printStackTrace();
            return false;
        }
        return flag;
    }

    public final void b()
    {
        renderCancel(a);
    }

    public final void c()
    {
        objsStart(a, Global.k);
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }
}
