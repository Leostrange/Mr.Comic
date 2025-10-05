package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupUtils {
    private static final ViewGroupUtilsImpl IMPL;

    interface ViewGroupUtilsImpl {
        void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect);
    }

    static class ViewGroupUtilsImplBase implements ViewGroupUtilsImpl {
        private ViewGroupUtilsImplBase() {
        }

        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
        }
    }

    static class ViewGroupUtilsImplHoneycomb implements ViewGroupUtilsImpl {
        private ViewGroupUtilsImplHoneycomb() {
        }

        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            ViewGroupUtilsHoneycomb.offsetDescendantRect(viewGroup, view, rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new ViewGroupUtilsImplHoneycomb();
        } else {
            IMPL = new ViewGroupUtilsImplBase();
        }
    }

    ViewGroupUtils() {
    }

    static void getDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        offsetDescendantRect(viewGroup, view, rect);
    }

    static void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        IMPL.offsetDescendantRect(viewGroup, view, rect);
    }
}
