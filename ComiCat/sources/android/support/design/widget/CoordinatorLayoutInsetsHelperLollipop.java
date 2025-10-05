package android.support.design.widget;

import android.view.View;

class CoordinatorLayoutInsetsHelperLollipop implements CoordinatorLayoutInsetsHelper {
    CoordinatorLayoutInsetsHelperLollipop() {
    }

    public void setupForWindowInsets(View view, bc bcVar) {
        if (bh.x(view)) {
            bh.a(view, bcVar);
            view.setSystemUiVisibility(1280);
        }
    }
}
