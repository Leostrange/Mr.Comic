package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: aga  reason: default package */
/* compiled from: ThemeManager */
public final class aga {
    static aga a;
    public Bitmap b;
    Bitmap c;
    Bitmap d;
    Bitmap e;

    aga() {
        Resources resources = ComicReaderApp.a().getResources();
        this.b = BitmapFactory.decodeResource(resources, R.drawable.comic_blank);
        this.c = BitmapFactory.decodeResource(resources, R.drawable.btn_star_big_on);
        this.d = BitmapFactory.decodeResource(resources, R.drawable.bookmark);
        this.e = BitmapFactory.decodeResource(resources, R.drawable.openbook);
    }

    public static aga a() {
        if (a == null) {
            a = new aga();
        }
        return a;
    }
}
