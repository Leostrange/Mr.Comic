package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.RatingBar;
import defpackage.cv;

public class AppCompatRatingBar extends RatingBar {
    private static final int[] a = {16843067, 16843068};
    private Bitmap b;

    public AppCompatRatingBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (er.a) {
            es a2 = es.a(getContext(), attributeSet, a, i);
            Drawable b2 = a2.b(0);
            if (b2 != null) {
                setIndeterminateDrawable(a(b2));
            }
            Drawable b3 = a2.b(1);
            if (b3 != null) {
                setProgressDrawable(a(b3, false));
            }
            a2.a.recycle();
        }
    }

    private Drawable a(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i = 0; i < numberOfFrames; i++) {
            Drawable a2 = a(animationDrawable.getFrame(i), true);
            a2.setLevel(10000);
            animationDrawable2.addFrame(a2, animationDrawable.getDuration(i));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }

    private Drawable a(Drawable drawable, boolean z) {
        if (drawable instanceof k) {
            Drawable a2 = ((k) drawable).a();
            if (a2 == null) {
                return drawable;
            }
            ((k) drawable).a(a(a2, z));
            return drawable;
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (!(drawable instanceof BitmapDrawable)) {
            return drawable;
        } else {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (this.b == null) {
                this.b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(getDrawableShape());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
    }

    private Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, (RectF) null, (float[]) null);
    }

    /* access modifiers changed from: protected */
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b != null) {
            setMeasuredDimension(bh.a(this.b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
