// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.radaee.pdf.Document;
import com.radaee.pdf.Matrix;
import com.radaee.pdf.Page;
import java.io.InputStream;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ComicReaderApp;

public final class afh
    implements aff
{

    static final float c;
    Document a;
    int b;

    public afh(Document document, int i)
    {
        a = document;
        b = i;
    }

    public final InputStream a()
    {
        Object obj4;
        Object obj5;
        obj4 = null;
        obj5 = null;
        Page page = a.a(b);
        if (page == null) goto _L2; else goto _L1
_L1:
        float f2;
        float f3;
        float f = a.b(b);
        f2 = c * f;
        f = a.c(b);
        f3 = c * f;
        float f1 = 1.0F;
        int i = (int)aei.a().d.a("max-image-memory", 6L) * 1024 * 1024;
        float f4;
        f4 = f3 * f2 * 4F;
        if (f4 <= (float)i)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        f1 = (float)Math.sqrt((float)i / f4);
        Bitmap bitmap;
        f2 = Math.round(f2 * f1);
        f3 = Math.round(f3 * f1);
        bitmap = Bitmap.createBitmap((int)f2, (int)f3, android.graphics.Bitmap.Config.ARGB_8888);
        Object obj = new Matrix(c * f1, -f1 * c, 0.0F, f3);
        Object obj1;
        Page page1;
        Bitmap bitmap1;
        Object obj2;
        Object obj3;
        Bitmap bitmap2;
        obj1 = obj5;
        obj3 = obj;
        bitmap2 = bitmap;
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_271;
        }
        obj2 = obj;
        bitmap1 = bitmap;
        page1 = page;
        bitmap.eraseColor(-1);
        obj1 = obj5;
        obj3 = obj;
        bitmap2 = bitmap;
        obj2 = obj;
        bitmap1 = bitmap;
        page1 = page;
        if (!page.a(bitmap, ((Matrix) (obj))))
        {
            break MISSING_BLOCK_LABEL_271;
        }
        obj2 = obj;
        bitmap1 = bitmap;
        page1 = page;
        obj1 = new ags(agl.c(bitmap));
        bitmap2 = bitmap;
        obj3 = obj;
_L9:
        if (page != null)
        {
            page.a();
        }
        if (obj3 != null)
        {
            ((Matrix) (obj3)).a();
        }
        obj = obj1;
        if (bitmap2 != null)
        {
            bitmap2.recycle();
            obj = obj1;
        }
_L4:
        return ((InputStream) (obj));
        obj1;
        obj = null;
        bitmap = null;
        page = null;
_L7:
        obj2 = obj;
        bitmap1 = bitmap;
        page1 = page;
        ((Exception) (obj1)).printStackTrace();
        if (page != null)
        {
            page.a();
        }
        if (obj != null)
        {
            ((Matrix) (obj)).a();
        }
        obj = obj4;
        if (bitmap == null) goto _L4; else goto _L3
_L3:
        bitmap.recycle();
        return null;
        Exception exception;
        exception;
        obj1 = null;
        bitmap = null;
        page = null;
_L6:
        if (page != null)
        {
            page.a();
        }
        if (obj1 != null)
        {
            ((Matrix) (obj1)).a();
        }
        if (bitmap != null)
        {
            bitmap.recycle();
        }
        throw exception;
        exception;
        obj1 = null;
        bitmap = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = obj2;
        bitmap = bitmap1;
        page = page1;
        if (true) goto _L6; else goto _L5
_L5:
        obj1;
        exception = null;
        bitmap = null;
          goto _L7
        obj1;
        exception = null;
          goto _L7
        obj1;
          goto _L7
_L2:
        obj3 = null;
        bitmap2 = null;
        obj1 = obj5;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static 
    {
        c = (float)ComicReaderApp.d().getResources().getDisplayMetrics().densityDpi / 60F;
    }
}
