package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.ActionBarContainer;

/* renamed from: ef  reason: default package */
/* compiled from: ActionBarBackgroundDrawable */
public class ef extends Drawable {
    final ActionBarContainer a;

    public ef(ActionBarContainer actionBarContainer) {
        this.a = actionBarContainer;
    }

    public void draw(Canvas canvas) {
        if (!this.a.d) {
            if (this.a.a != null) {
                this.a.a.draw(canvas);
            }
            if (this.a.b != null && this.a.e) {
                this.a.b.draw(canvas);
            }
        } else if (this.a.c != null) {
            this.a.c.draw(canvas);
        }
    }

    public int getOpacity() {
        return 0;
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }
}
