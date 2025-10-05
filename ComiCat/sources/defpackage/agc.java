package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.aft;
import defpackage.cy;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: agc  reason: default package */
/* compiled from: ThumbnailViewHolder */
public final class agc {
    static final String k = ComicReaderApp.a().getString(R.string.folderSingle);
    static final String l = ComicReaderApp.a().getString(R.string.folderPlural);
    static final String m = ComicReaderApp.a().getString(R.string.comic);
    static final String n = ComicReaderApp.a().getString(R.string.comics);
    protected aft a;
    protected View b;
    protected TextView c;
    protected ImageView d;
    protected ImageView e;
    protected ImageView f;
    protected ImageView g;
    protected ImageView h;
    protected ImageView i;
    protected TextView j;
    private int o;
    private int p;
    private boolean q;
    private boolean r;

    /* renamed from: agc$1  reason: invalid class name */
    /* compiled from: ThumbnailViewHolder */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[aft.a.a().length];

        static {
            try {
                a[aft.a.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[aft.a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[aft.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public agc() {
    }

    public agc(View view, int i2, int i3, boolean z, boolean z2) {
        this.o = i2;
        this.p = i3;
        this.q = z;
        this.r = z2;
        this.b = view.findViewById(R.id.thumbContainer);
        this.c = (TextView) view.findViewById(R.id.thumbTitle);
        this.d = (ImageView) view.findViewById(R.id.thumbImage);
        this.e = (ImageView) view.findViewById(R.id.thumbFront);
        this.f = (ImageView) view.findViewById(R.id.bookmarkIcon);
        this.g = (ImageView) view.findViewById(R.id.statusIcon);
        this.h = (ImageView) view.findViewById(R.id.comicCloudStatusIcon);
        this.i = (ImageView) view.findViewById(R.id.folderCloudStatusIcon);
        this.j = (TextView) view.findViewById(R.id.itemCount);
        if (this.j != null) {
            this.j.setBackgroundResource(this.p);
        }
    }

    public final aft a() {
        return this.a;
    }

    public final void a(aft aft) {
        List<cy.c> list;
        String str;
        int i2;
        acs a2;
        int i3 = R.drawable.openbook;
        boolean z = true;
        int i4 = 0;
        int i5 = 4;
        this.a = aft;
        if (this.a != null) {
            this.d.setVisibility(0);
            this.c.setVisibility(0);
            this.c.setText(this.a.l());
            boolean z2 = this.a.k() == aft.a.b;
            (z2 ? this.h : this.i).setVisibility(4);
            ImageView imageView = z2 ? this.h : this.i;
            if (this.a.d()) {
                imageView.setVisibility(0);
                if (!z2 || !this.a.g()) {
                    aft aft2 = this.a;
                    i2 = R.drawable.cloud_drive;
                    int e2 = aft2.e();
                    if (!(e2 == -1 || (a2 = act.b().a(e2)) == null)) {
                        i2 = a2.d();
                    }
                } else {
                    i2 = R.drawable.cloud_drive_green;
                }
                imageView.setImageResource(i2);
            } else {
                imageView.setVisibility(4);
            }
            if (this.a.k() == aft.a.c && this.a.j() < 0) {
                switch (this.a.j()) {
                    case -6:
                        this.d.setImageResource(R.drawable.fire_folder);
                        break;
                    case -5:
                        this.d.setImageResource(R.drawable.private_folder);
                        break;
                    case -4:
                        this.d.setImageResource(R.drawable.favorites);
                        break;
                    case -3:
                        this.d.setImageResource(R.drawable.pictures_folder);
                        break;
                    case -2:
                        this.d.setImageResource(R.drawable.links_folder);
                        break;
                }
            } else {
                Bitmap a3 = ahd.a(this.a.j(), this.a.k(), this.q);
                this.d.setImageBitmap(a3);
                if (this.r) {
                    cy.a aVar = new cy.a(a3);
                    if (aVar.b == null) {
                        list = aVar.a;
                    } else if (aVar.d <= 0) {
                        throw new IllegalArgumentException("Minimum dimension size for resizing should should be >= 1");
                    } else {
                        Bitmap bitmap = aVar.b;
                        int i6 = aVar.d;
                        int max = Math.max(bitmap.getWidth(), bitmap.getHeight());
                        if (max > i6) {
                            float f2 = ((float) i6) / ((float) max);
                            bitmap = Bitmap.createScaledBitmap(bitmap, Math.round(((float) bitmap.getWidth()) * f2), Math.round(f2 * ((float) bitmap.getHeight())), false);
                        }
                        cw a4 = cw.a(bitmap, aVar.c);
                        if (bitmap != aVar.b) {
                            bitmap.recycle();
                        }
                        list = a4.c;
                    }
                    if (aVar.e == null) {
                        aVar.e = new cx();
                    }
                    aVar.e.a(list);
                    cy cyVar = new cy(list, aVar.e, (byte) 0);
                    View view = this.b;
                    cy.c a5 = cyVar.a.a();
                    view.setBackgroundColor(a5 != null ? a5.a : R.color.material_deep_orange_300);
                }
            }
            switch (AnonymousClass1.a[this.a.k() - 1]) {
                case 1:
                    aeq aeq = (aeq) this.a;
                    if (this.e != null) {
                        this.e.setVisibility(4);
                    }
                    boolean z3 = this.a.o() || this.a.p();
                    this.g.setVisibility(z3 ? 0 : 4);
                    if (z3) {
                        this.g.setImageResource(this.a.o() ? R.drawable.openbook : R.drawable.checkmark2);
                    }
                    this.j.setVisibility(4);
                    ImageView imageView2 = this.f;
                    if (!aeq.b()) {
                        i4 = 4;
                    }
                    imageView2.setVisibility(i4);
                    return;
                case 2:
                    if (this.e != null) {
                        this.e.setVisibility(0);
                        this.e.setImageResource(this.o);
                    }
                    boolean f3 = agw.f();
                    aem aem = (aem) this.a;
                    if (!f3 || aem.e <= 0) {
                        str = "" + String.valueOf(aem.d) + " " + (aem.d > 1 ? n : m);
                    } else {
                        str = String.valueOf(aem.e) + " " + (aem.e == 1 ? k : l);
                        if (aem.d > 0) {
                            str = (str + ", ") + String.valueOf(aem.d) + " " + (aem.d == 1 ? m : n);
                        }
                    }
                    if (!this.a.o() && !aem.a(f3)) {
                        z = false;
                    }
                    ImageView imageView3 = this.g;
                    if (z) {
                        i5 = 0;
                    }
                    imageView3.setVisibility(i5);
                    if (z) {
                        ImageView imageView4 = this.g;
                        if (!this.a.o()) {
                            i3 = R.drawable.checkmark2;
                        }
                        imageView4.setImageResource(i3);
                    }
                    this.j.setVisibility(0);
                    this.j.setText(str);
                    return;
                case 3:
                    if (this.e != null) {
                        this.e.setVisibility(0);
                        return;
                    }
                    return;
                default:
                    return;
            }
        } else {
            this.c.setVisibility(4);
            this.d.setVisibility(4);
            this.f.setVisibility(4);
            this.g.setVisibility(4);
            this.h.setVisibility(4);
            this.i.setVisibility(4);
            this.j.setVisibility(4);
            if (this.e != null) {
                this.e.setVisibility(4);
            }
        }
    }
}
