package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
import defpackage.ao;
import defpackage.dv;

@TargetApi(16)
/* renamed from: dw  reason: default package */
/* compiled from: MenuItemWrapperJB */
final class dw extends dv {

    /* renamed from: dw$a */
    /* compiled from: MenuItemWrapperJB */
    class a extends dv.a implements ActionProvider.VisibilityListener {
        ao.b d;

        public a(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        public final View a(MenuItem menuItem) {
            return this.b.onCreateActionView(menuItem);
        }

        public final void a(ao.b bVar) {
            this.d = bVar;
            ActionProvider actionProvider = this.b;
            if (bVar == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        public final boolean b() {
            return this.b.overridesItemVisibility();
        }

        public final boolean c() {
            return this.b.isVisible();
        }

        public final void onActionProviderVisibilityChanged(boolean z) {
            if (this.d != null) {
                this.d.a();
            }
        }
    }

    dw(Context context, q qVar) {
        super(context, qVar);
    }

    /* access modifiers changed from: package-private */
    public final dv.a a(ActionProvider actionProvider) {
        return new a(this.a, actionProvider);
    }
}
