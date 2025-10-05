package defpackage;

import android.graphics.Outline;
import android.support.v7.internal.widget.ActionBarContainer;

/* renamed from: eg  reason: default package */
/* compiled from: ActionBarBackgroundDrawableV21 */
public final class eg extends ef {
    public eg(ActionBarContainer actionBarContainer) {
        super(actionBarContainer);
    }

    public final void getOutline(Outline outline) {
        if (this.a.d) {
            if (this.a.c != null) {
                this.a.c.getOutline(outline);
            }
        } else if (this.a.a != null) {
            this.a.a.getOutline(outline);
        }
    }
}
