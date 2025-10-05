package meanlabs.comicreader.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

public class AsyncPageThumbView extends ImageView {
    static final int c = (((int) ComicReaderApp.a().getResources().getDimension(R.dimen.page_thumb_width)) - 4);
    static final int d = (((int) ComicReaderApp.a().getResources().getDimension(R.dimen.page_thumb_height)) - 4);
    afb a;
    SoftReference<Bitmap> b = null;

    interface a {
        afb a();

        void a(afb afb, Bitmap bitmap);

        boolean a(afb afb);
    }

    final class b extends AsyncTask<afb, Integer, Bitmap> {
        a a;
        afb b;

        public b(a aVar) {
            this.a = aVar;
        }

        /* access modifiers changed from: private */
        /* renamed from: a */
        public Bitmap doInBackground(afb... afbArr) {
            this.b = afbArr[0];
            Bitmap bitmap = null;
            try {
                Thread.sleep(15);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (this.a.a(this.b)) {
                this.b.b();
                if (this.a.a(this.b)) {
                    bitmap = this.b.a(AsyncPageThumbView.c, AsyncPageThumbView.d);
                }
            }
            if (this.b != this.a.a()) {
                this.b = this.a.a();
            }
            return bitmap;
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ void onPostExecute(Object obj) {
            this.a.a(this.b, (Bitmap) obj);
        }
    }

    public AsyncPageThumbView(Context context) {
        super(context);
    }

    public AsyncPageThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AsyncPageThumbView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: private */
    public void setPageBitmap(Bitmap bitmap) {
        Bitmap b2 = agl.b(bitmap, c, d);
        this.b = new SoftReference<>(b2 != null ? b2 : bitmap);
        if (!(b2 == null || b2 == bitmap)) {
            bitmap.recycle();
        }
        setImageBitmap(this.b.get());
    }

    public void setPage(afb afb) {
        this.a = afb;
        setImageBitmap(ahd.b());
        if (!(this.b == null || this.b.get() == null)) {
            this.b.get().recycle();
            this.b = null;
        }
        b bVar = new b(new a() {
            public final afb a() {
                return AsyncPageThumbView.this.a;
            }

            public final void a(afb afb, Bitmap bitmap) {
                if (bitmap != null && AsyncPageThumbView.this.a == afb) {
                    AsyncPageThumbView.this.setPageBitmap(bitmap);
                }
            }

            public final boolean a(afb afb) {
                return AsyncPageThumbView.this.isShown() && AsyncPageThumbView.this.getVisibility() == 0 && AsyncPageThumbView.this.a == afb;
            }
        });
        try {
            bVar.execute(new afb[]{this.a});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPageSync(afb afb) {
        this.a = afb;
        if (!(this.b == null || this.b.get() == null)) {
            this.b.get().recycle();
            this.b = null;
        }
        Bitmap a2 = this.a.a(c, d);
        if (a2 != null) {
            setPageBitmap(a2);
            a2.recycle();
            return;
        }
        setImageBitmap(ahd.b());
    }
}
