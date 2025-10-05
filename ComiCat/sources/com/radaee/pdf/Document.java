package com.radaee.pdf;

import android.graphics.Bitmap;

public class Document {
    protected long a = 0;
    public int b = 0;
    private String c;

    public interface a {
    }

    public interface b {
    }

    public interface c {
    }

    private static native long addFormResFont(long j, long j2, long j3);

    private static native long addFormResForm(long j, long j2, long j3);

    private static native long addFormResGState(long j, long j2, long j3);

    private static native long addFormResImage(long j, long j2, long j3);

    private static native boolean addOutlineChild(long j, long j2, String str, int i, float f);

    private static native boolean addOutlineNext(long j, long j2, String str, int i, float f);

    private static native long advGetObj(long j, long j2);

    private static native long advGetRef(long j);

    private static native long advNewFlateStream(long j, byte[] bArr);

    private static native long advNewIndirectObj(long j);

    private static native long advNewIndirectObjWithData(long j, long j2);

    private static native long advNewRawStream(long j, byte[] bArr);

    private static native void advReload(long j);

    private static native boolean canSave(long j);

    private static native boolean changePageRect(long j, int i, float f, float f2, float f3, float f4);

    private static native int checkSignByteRange(long j);

    private static native void close(long j);

    private static native long create(String str);

    private static native long createForStream(c cVar);

    private static native boolean encryptAs(long j, String str, String str2, String str3, int i, int i2, byte[] bArr);

    private static native String exportForm(long j);

    private static native void freeForm(long j, long j2);

    private static native int getEFCount(long j);

    private static native boolean getEFData(long j, int i, String str);

    private static native String getEFName(long j, int i);

    private static native float getFontAscent(long j, long j2);

    private static native float getFontDescent(long j, long j2);

    private static native byte[] getID(long j, int i);

    private static native String getMeta(long j, String str);

    private static native long getOutlineChild(long j, long j2);

    private static native int getOutlineDest(long j, long j2);

    private static native String getOutlineFileLink(long j, long j2);

    private static native long getOutlineNext(long j, long j2);

    private static native String getOutlineTitle(long j, long j2);

    private static native String getOutlineURI(long j, long j2);

    private static native long getPage(long j, int i);

    private static native long getPage0(long j);

    private static native int getPageCount(long j);

    private static native float getPageHeight(long j, int i);

    private static native float getPageWidth(long j, int i);

    private static native float[] getPagesMaxSize(long j);

    private static native int getPerm(long j);

    private static native int getPermission(long j);

    private static native int[] getSignByteRange(long j);

    private static native byte[] getSignContents(long j);

    private static native String getSignFilter(long j);

    private static native String getSignSubFilter(long j);

    private static native String getXMP(long j);

    private static native void importEnd(long j, long j2);

    private static native boolean importPage(long j, long j2, int i, int i2);

    private static native long importStart(long j, long j2);

    private static native boolean isEncrypted(long j);

    private static native boolean movePage(long j, int i, int i2);

    private static native long newFontCID(long j, String str, int i);

    private static native long newForm(long j);

    private static native long newGState(long j);

    private static native long newImage(long j, Bitmap bitmap, boolean z);

    private static native long newImageJPEG(long j, String str);

    private static native long newImageJPEGByArray(long j, byte[] bArr, int i);

    private static native long newImageJPX(long j, String str);

    private static native long newPage(long j, int i, float f, float f2);

    private static native long open(String str, String str2);

    private static native long openMem(byte[] bArr, String str);

    private static native long openStream(c cVar, String str);

    private static native long openStreamNoLoadPages(c cVar, String str);

    private static native boolean removeOutline(long j, long j2);

    private static native boolean removePage(long j, int i);

    private static native boolean runJS(long j, String str, b bVar);

    private static native boolean save(long j);

    private static native boolean saveAs(long j, String str, boolean z);

    private static native boolean setCache(long j, String str);

    private static native void setFontDel(long j, a aVar);

    private static native void setFormContent(long j, long j2, float f, float f2, float f3, float f4, long j3);

    private static native boolean setGStateFillAlpha(long j, long j2, int i);

    private static native boolean setGStateStrokeAlpha(long j, long j2, int i);

    private static native boolean setMeta(long j, String str, String str2);

    private static native boolean setOutlineTitle(long j, long j2, String str);

    private static native boolean setPageRotate(long j, int i, int i2);

    public final int a(String str) {
        if (this.a != 0) {
            return 0;
        }
        try {
            this.a = open(str, (String) null);
        } catch (Exception e) {
            e.printStackTrace();
            this.a = -10;
        }
        if (this.a > 0 || this.a < -10) {
            this.b = getPageCount(this.a);
            this.c = str;
            return 0;
        }
        int i = (int) this.a;
        this.a = 0;
        this.b = 0;
        return i;
    }

    public final Page a(int i) {
        if (this.a == 0) {
            return null;
        }
        long page = getPage(this.a, i);
        if (page == 0) {
            return null;
        }
        Page page2 = new Page();
        page2.a = page;
        page2.b = this;
        return page2;
    }

    public final boolean a() {
        return this.a != 0;
    }

    public final float b(int i) {
        float pageWidth = getPageWidth(this.a, i);
        if (pageWidth <= 0.0f) {
            return 1.0f;
        }
        return pageWidth;
    }

    public final void b() {
        if (this.a != 0) {
            close(this.a);
        }
        this.a = 0;
        this.b = 0;
    }

    public final float c(int i) {
        float pageHeight = getPageHeight(this.a, i);
        if (pageHeight <= 0.0f) {
            return 1.0f;
        }
        return pageHeight;
    }

    public final int c() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        b();
        super.finalize();
    }
}
