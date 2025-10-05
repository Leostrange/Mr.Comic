package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import defpackage.aft;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.ui.ThumbnailItemView;

/* renamed from: agb  reason: default package */
/* compiled from: ThumbnailAdapter */
public final class agb extends afm {
    private static final int A = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_comic_large));
    private static final int B = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_folder_large));
    private static final int q = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_height));
    private static final int r = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_comic));
    private static final int s = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_folder));
    private static final int t = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_height_large));
    private static final int u = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_comic_large));
    private static final int v = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_folder_large));
    private static final int w = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_height_material));
    private static final int x = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_comic_material));
    private static final int y = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_width_comic_material));
    private static final int z = ((int) ComicReaderApp.a().getResources().getDimension(R.dimen.thumb_column_height_large));
    private GridView d;
    private String e;
    private boolean f;
    private BitmapDrawable g;
    private int h;
    private int i;
    private boolean j = false;
    private boolean k = false;
    private Drawable l;
    private int m = R.drawable.publisher_tray;
    private int n = R.drawable.roundedrect;
    private int o;
    private int p;

    public agb(Context context, Activity activity, List<aft> list, GridView gridView, Drawable drawable) {
        super(context, activity, list);
        this.d = gridView;
        this.l = drawable;
        a();
    }

    private int b() {
        return this.k ? this.f ? z : w : this.f ? t : q;
    }

    public final void a() {
        int i2;
        AnonymousClass1 r0;
        boolean z2 = false;
        this.e = aei.a().d.b("gridview-theme");
        this.f = aei.a().d.c("use-large-thumbnails");
        this.j = !"prefBlack".equals(this.e);
        this.k = "prefMaterial".equals(this.e);
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        int i3 = ((int) (((float) displayMetrics.widthPixels) / displayMetrics.scaledDensity)) - 10;
        int i4 = ((int) (((float) displayMetrics.heightPixels) / displayMetrics.scaledDensity)) - 70;
        int i5 = this.k ? A : u;
        int i6 = this.k ? x : r;
        if (this.f) {
            i6 = i5;
        }
        if (this.b.size() > 0 && ((aft) this.b.get(0)).k() == aft.a.c) {
            int i7 = this.k ? B : v;
            int i8 = this.k ? y : s;
            if (!this.f) {
                i7 = i8;
            }
            i6 = i7;
        }
        this.h = (int) (((float) i6) / displayMetrics.scaledDensity);
        this.i = (int) (((float) b()) / displayMetrics.scaledDensity);
        new StringBuilder("Device Width is: ").append(i3).append(", column width is: ").append(this.h);
        this.o = i3 / this.h;
        this.p = (int) Math.ceil(((double) i4) / ((double) this.i));
        this.d.setNumColumns(this.o);
        this.d.setFastScrollEnabled(this.b.size() > (this.o * 2) * this.p);
        if (this.j) {
            if (!this.k) {
                if ("prefWoodenShelf".equals(this.e)) {
                    this.m = R.drawable.publisher_tray;
                    this.n = R.drawable.roundedrect;
                    i2 = this.f ? R.drawable.wooden_large : R.drawable.wooden;
                } else if ("prefSteelMesh".equals(this.e)) {
                    this.m = R.drawable.publisher_tray_grainy;
                    this.n = R.drawable.roundedrect_grey;
                    i2 = this.f ? R.drawable.steelmesh_large : R.drawable.steelmesh;
                } else if ("prefTitanium".equals(this.e)) {
                    this.m = R.drawable.publisher_tray_titanium;
                    this.n = R.drawable.roundedrect_grey;
                    i2 = this.f ? R.drawable.titanium_large : R.drawable.titanium;
                } else if ("prefCoolBlue".equals(this.e)) {
                    this.m = R.drawable.publisher_tray_blue;
                    this.n = R.drawable.roundedrect_blue;
                    i2 = this.f ? R.drawable.coolblue_large : R.drawable.coolblue;
                } else if ("prefBlackWood".equals(this.e)) {
                    this.m = R.drawable.publisher_tray_metal;
                    this.n = R.drawable.roundedrect_grey;
                    i2 = this.f ? R.drawable.blackwood_large : R.drawable.blackwood;
                } else {
                    this.m = R.drawable.publisher_tray;
                    this.n = R.drawable.roundedrect;
                    i2 = this.f ? R.drawable.wooden_large : R.drawable.wooden;
                }
                if (i2 != -1) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) this.c.getResources().getDrawable(i2);
                    Rect rect = new Rect(0, 0, ((int) Math.round((((double) this.c.getResources().getDisplayMetrics().widthPixels) / ((double) this.o)) / ((double) bitmapDrawable.getIntrinsicWidth()))) * bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    bitmapDrawable.setTileModeX(Shader.TileMode.REPEAT);
                    bitmapDrawable.setBounds(rect);
                    Bitmap createBitmap = Bitmap.createBitmap(rect.width(), rect.height(), bitmapDrawable.getBitmap().getConfig());
                    bitmapDrawable.draw(new Canvas(createBitmap));
                    r0 = new BitmapDrawable(createBitmap) {
                        public final int getMinimumHeight() {
                            return 0;
                        }

                        public final int getMinimumWidth() {
                            return 0;
                        }
                    };
                    r0.setGravity(119);
                } else {
                    r0 = null;
                }
                this.g = r0;
                if (this.g != null) {
                    z2 = true;
                }
                this.j = z2;
                this.d.setSelector(R.drawable.selection_rect);
                this.d.setDrawSelectorOnTop(true);
            }
        } else if (this.l != null) {
            this.d.setSelector(this.l);
            this.d.setDrawSelectorOnTop(false);
        }
    }

    public final boolean areAllItemsEnabled() {
        return false;
    }

    public final int getCount() {
        int i2 = 0;
        int count = super.getCount();
        if (!this.j) {
            return count;
        }
        int i3 = this.o > 0 ? count % this.o : 0;
        if (i3 > 0) {
            i2 = this.o - i3;
        }
        return Math.max(this.o * this.p, i2 + count);
    }

    public final View getView(int i2, View view, ViewGroup viewGroup) {
        View inflate;
        int i3 = R.layout.thumbnail_l;
        if (view == null) {
            LayoutInflater layoutInflater = this.c.getLayoutInflater();
            if (this.k) {
                if (!this.f) {
                    i3 = R.layout.thumbnail_material_s;
                }
                inflate = layoutInflater.inflate(i3, (ViewGroup) null);
            } else {
                if (!this.f) {
                    i3 = R.layout.thumbnail_s;
                }
                inflate = layoutInflater.inflate(i3, (ViewGroup) null);
                if (this.j) {
                    inflate.setBackgroundDrawable(this.g);
                }
            }
            ((ThumbnailItemView) inflate).setHeight(b());
            inflate.setTag(new agc(inflate, this.m, this.n, this.f, this.k));
            view = inflate;
        }
        ((agc) view.getTag()).a(i2 < super.getCount() ? (aft) this.b.get(i2) : null);
        return view;
    }

    public final boolean isEnabled(int i2) {
        return i2 < super.getCount();
    }
}
