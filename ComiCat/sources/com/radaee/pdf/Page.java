package com.radaee.pdf;

import android.graphics.Bitmap;
import android.util.Log;

public class Page {
    protected long a = 0;
    protected Document b;

    public class a {
        protected long a;

        public a() {
        }

        public final int a() {
            return Page.findGetCount(this.a);
        }

        public final void b() {
            Page.findClose(this.a);
            this.a = 0;
        }

        /* access modifiers changed from: protected */
        public final void finalize() {
            b();
            super.finalize();
        }
    }

    private static native boolean addAnnot(long j, long j2);

    private static native boolean addAnnotAttachment(long j, String str, int i, float[] fArr);

    private static native boolean addAnnotBitmap(long j, long j2, float[] fArr);

    private static native boolean addAnnotEditbox(long j, long j2, float[] fArr, int i, float f, int i2, float f2, int i3);

    private static native boolean addAnnotEditbox2(long j, float[] fArr, int i, float f, int i2, float f2, int i3);

    private static native boolean addAnnotEllipse(long j, long j2, float[] fArr, float f, int i, int i2);

    private static native boolean addAnnotEllipse2(long j, float[] fArr, float f, int i, int i2);

    private static native boolean addAnnotGlyph(long j, long j2, long j3, int i, boolean z);

    private static native boolean addAnnotGoto(long j, float[] fArr, int i, float f);

    private static native boolean addAnnotHWriting(long j, long j2, long j3, float f, float f2);

    private static native boolean addAnnotInk(long j, long j2, long j3, float f, float f2);

    private static native boolean addAnnotInk2(long j, long j2);

    private static native boolean addAnnotLine(long j, long j2, float[] fArr, float[] fArr2, int i, int i2, float f, int i3, int i4);

    private static native boolean addAnnotLine2(long j, float[] fArr, float[] fArr2, int i, int i2, float f, int i3, int i4);

    private static native boolean addAnnotMarkup(long j, long j2, float[] fArr, int i, int i2);

    private static native boolean addAnnotMarkup2(long j, int i, int i2, int i3, int i4);

    private static native boolean addAnnotPolygon(long j, long j2, int i, int i2, float f);

    private static native boolean addAnnotPolyline(long j, long j2, int i, int i2, int i3, int i4, float f);

    private static native boolean addAnnotPopup(long j, long j2, float[] fArr, boolean z);

    private static native boolean addAnnotRect(long j, long j2, float[] fArr, float f, int i, int i2);

    private static native boolean addAnnotRect2(long j, float[] fArr, float f, int i, int i2);

    private static native boolean addAnnotRichMedia(long j, String str, String str2, int i, long j2, float[] fArr);

    private static native boolean addAnnotStamp(long j, float[] fArr, int i);

    private static native boolean addAnnotText(long j, float[] fArr);

    private static native boolean addAnnotURI(long j, float[] fArr, String str);

    private static native boolean addContent(long j, long j2, boolean z);

    private static native long addResFont(long j, long j2);

    private static native long addResForm(long j, long j2);

    private static native long addResGState(long j, long j2);

    private static native long addResImage(long j, long j2);

    private static native long advGetAnnotRef(long j, long j2);

    private static native long advGetRef(long j);

    private static native void advReload(long j);

    private static native void advReloadAnnot(long j, long j2);

    private static native void close(long j);

    private static native boolean copyAnnot(long j, long j2, float[] fArr);

    /* access modifiers changed from: private */
    public static native void findClose(long j);

    /* access modifiers changed from: private */
    public static native int findGetCount(long j);

    private static native int findGetFirstChar(long j, int i);

    private static native long findOpen(long j, String str, boolean z, boolean z2);

    private static native boolean flate(long j);

    private static native long getAnnot(long j, int i);

    private static native String getAnnot3D(long j, long j2);

    private static native boolean getAnnot3DData(long j, long j2, String str);

    private static native String getAnnotAttachment(long j, long j2);

    private static native boolean getAnnotAttachmentData(long j, long j2, String str);

    private static native long getAnnotByName(long j, String str);

    private static native int getAnnotCheckStatus(long j, long j2);

    private static native String getAnnotComboItem(long j, long j2, int i);

    private static native int getAnnotComboItemCount(long j, long j2);

    private static native int getAnnotComboItemSel(long j, long j2);

    private static native int getAnnotCount(long j);

    private static native int getAnnotDest(long j, long j2);

    private static native int getAnnotEditMaxlen(long j, long j2);

    private static native String getAnnotEditText(long j, long j2);

    private static native int getAnnotEditTextColor(long j, long j2);

    private static native String getAnnotEditTextFormat(long j, long j2);

    private static native boolean getAnnotEditTextRect(long j, long j2, float[] fArr);

    private static native float getAnnotEditTextSize(long j, long j2);

    private static native int getAnnotEditType(long j, long j2);

    private static native int getAnnotFieldFlag(long j, long j2);

    private static native String getAnnotFieldFormat(long j, long j2);

    private static native String getAnnotFieldFullName(long j, long j2);

    private static native String getAnnotFieldFullName2(long j, long j2);

    private static native String getAnnotFieldName(long j, long j2);

    private static native String getAnnotFieldNameWithoutNO(long j, long j2);

    private static native int getAnnotFieldType(long j, long j2);

    private static native String getAnnotFileLink(long j, long j2);

    private static native int getAnnotFillColor(long j, long j2);

    private static native long getAnnotFromPoint(long j, float f, float f2);

    private static native int getAnnotIcon(long j, long j2);

    private static native long getAnnotInkPath(long j, long j2);

    private static native String getAnnotJS(long j, long j2);

    private static native String getAnnotListItem(long j, long j2, int i);

    private static native int getAnnotListItemCount(long j, long j2);

    private static native int[] getAnnotListSels(long j, long j2);

    private static native float[] getAnnotMarkupRects(long j, long j2);

    private static native String getAnnotMovie(long j, long j2);

    private static native boolean getAnnotMovieData(long j, long j2, String str);

    private static native String getAnnotName(long j, long j2);

    private static native long getAnnotPolygonPath(long j, long j2);

    private static native long getAnnotPolylinePath(long j, long j2);

    private static native long getAnnotPopup(long j, long j2);

    private static native String getAnnotPopupLabel(long j, long j2);

    private static native boolean getAnnotPopupOpen(long j, long j2);

    private static native String getAnnotPopupSubject(long j, long j2);

    private static native String getAnnotPopupText(long j, long j2);

    private static native void getAnnotRect(long j, long j2, float[] fArr);

    private static native long getAnnotRef(long j, long j2);

    private static native String getAnnotRemoteDest(long j, long j2);

    private static native boolean getAnnotReset(long j, long j2);

    private static native boolean getAnnotRichMediaData(long j, long j2, String str, String str2);

    private static native int getAnnotRichMediaItemActived(long j, long j2);

    private static native String getAnnotRichMediaItemAsset(long j, long j2, int i);

    private static native int getAnnotRichMediaItemCount(long j, long j2);

    private static native String getAnnotRichMediaItemPara(long j, long j2, int i);

    private static native String getAnnotRichMediaItemSource(long j, long j2, int i);

    private static native boolean getAnnotRichMediaItemSourceData(long j, long j2, int i, String str);

    private static native int getAnnotRichMediaItemType(long j, long j2, int i);

    private static native int getAnnotSignStatus(long j, long j2);

    private static native String getAnnotSound(long j, long j2);

    private static native boolean getAnnotSoundData(long j, long j2, int[] iArr, String str);

    private static native int getAnnotStrokeColor(long j, long j2);

    private static native float getAnnotStrokeWidth(long j, long j2);

    private static native String getAnnotSubmitPara(long j, long j2);

    private static native String getAnnotSubmitTarget(long j, long j2);

    private static native int getAnnotType(long j, long j2);

    private static native String getAnnotURI(long j, long j2);

    private static native float[] getCropBox(long j);

    private static native float[] getMediaBox(long j);

    private static native int getRotate(long j);

    private static native boolean insertAnnotComboItem(long j, long j2, int i, String str, String str2);

    private static native boolean insertAnnotListItem(long j, long j2, int i, String str, String str2);

    private static native boolean isAnnotHide(long j, long j2);

    private static native boolean isAnnotLocked(long j, long j2);

    private static native boolean isAnnotLockedContent(long j, long j2);

    private static native boolean isAnnotReadOnly(long j, long j2);

    private static native boolean moveAnnot(long j, long j2, long j3, float[] fArr);

    private static native int objsAlignWord(long j, int i, int i2);

    private static native int objsGetCharCount(long j);

    private static native String objsGetCharFontName(long j, int i);

    private static native int objsGetCharIndex(long j, float[] fArr);

    private static native void objsGetCharRect(long j, int i, float[] fArr);

    private static native String objsGetString(long j, int i, int i2);

    private static native void objsStart(long j, boolean z);

    private static native boolean reflow(long j, long j2, float f, float f2);

    private static native int reflowGetCharColor(long j, int i, int i2);

    private static native int reflowGetCharCount(long j, int i);

    private static native String reflowGetCharFont(long j, int i, int i2);

    private static native float reflowGetCharHeight(long j, int i, int i2);

    private static native void reflowGetCharRect(long j, int i, int i2, float[] fArr);

    private static native int reflowGetCharUnicode(long j, int i, int i2);

    private static native float reflowGetCharWidth(long j, int i, int i2);

    private static native int reflowGetParaCount(long j);

    private static native String reflowGetText(long j, int i, int i2, int i3, int i4);

    private static native float reflowStart(long j, float f, float f2, boolean z);

    private static native boolean reflowToBmp(long j, Bitmap bitmap, float f, float f2);

    private static native boolean removeAnnot(long j, long j2);

    private static native boolean removeAnnotComboItem(long j, long j2, int i);

    private static native boolean removeAnnotListItem(long j, long j2, int i);

    private static native boolean render(long j, long j2, long j3, int i);

    private static native boolean renderAnnotToBmp(long j, long j2, Bitmap bitmap);

    private static native void renderCancel(long j);

    private static native boolean renderIsFinished(long j);

    private static native void renderPrepare(long j, long j2);

    private static native boolean renderThumb(long j, Bitmap bitmap);

    private static native boolean renderThumbToBuf(long j, int[] iArr, int i, int i2);

    private static native boolean renderThumbToDIB(long j, long j2);

    private static native boolean renderToBmp(long j, Bitmap bitmap, long j2, int i);

    private static native boolean renderToBuf(long j, int[] iArr, int i, int i2, long j2, int i3);

    private static native boolean setAnnotCheckValue(long j, long j2, boolean z);

    private static native boolean setAnnotComboItem(long j, long j2, int i);

    private static native boolean setAnnotEditFont(long j, long j2, long j3);

    private static native boolean setAnnotEditText(long j, long j2, String str);

    private static native boolean setAnnotEditTextColor(long j, long j2, int i);

    private static native boolean setAnnotFillColor(long j, long j2, int i);

    private static native void setAnnotHide(long j, long j2, boolean z);

    private static native boolean setAnnotIcon(long j, long j2, int i);

    private static native boolean setAnnotIcon2(long j, long j2, String str, long j3);

    private static native boolean setAnnotInkPath(long j, long j2, long j3);

    private static native boolean setAnnotListSels(long j, long j2, int[] iArr);

    private static native void setAnnotLock(long j, long j2, boolean z);

    private static native boolean setAnnotName(long j, long j2, String str);

    private static native boolean setAnnotPolygonPath(long j, long j2, long j3);

    private static native boolean setAnnotPolylinePath(long j, long j2, long j3);

    private static native boolean setAnnotPopupLabel(long j, long j2, String str);

    private static native boolean setAnnotPopupOpen(long j, long j2, boolean z);

    private static native boolean setAnnotPopupSubject(long j, long j2, String str);

    private static native boolean setAnnotPopupText(long j, long j2, String str);

    private static native boolean setAnnotRadio(long j, long j2);

    private static native void setAnnotReadOnly(long j, long j2, boolean z);

    private static native void setAnnotRect(long j, long j2, float[] fArr);

    private static native boolean setAnnotReset(long j, long j2);

    private static native boolean setAnnotStrokeColor(long j, long j2, int i);

    private static native boolean setAnnotStrokeWidth(long j, long j2, float f);

    public final a a(String str, boolean z, boolean z2) {
        long findOpen = findOpen(this.a, str, z, z2);
        if (findOpen == 0) {
            return null;
        }
        a aVar = new a();
        aVar.a = findOpen;
        return aVar;
    }

    public final void a() {
        if (this.b != null) {
            if (this.b.a != 0) {
                close(this.a);
            } else {
                Log.e("Bad Coding", "Document object closed, but Page object not closed, will cause memory leaks.");
            }
        }
        this.b = null;
        this.a = 0;
    }

    public final void a(DIB dib) {
        renderPrepare(this.a, dib.a);
    }

    public final boolean a(Bitmap bitmap, Matrix matrix) {
        if (bitmap == null || matrix == null) {
            return false;
        }
        try {
            return renderToBmp(this.a, bitmap, matrix.a, Global.q);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean a(DIB dib, Matrix matrix) {
        try {
            return render(this.a, dib.a, matrix.a, Global.q);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void b() {
        renderCancel(this.a);
    }

    public final void c() {
        objsStart(this.a, Global.k);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        a();
        super.finalize();
    }
}
