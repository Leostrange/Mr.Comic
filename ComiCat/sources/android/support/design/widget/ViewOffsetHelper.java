package android.support.design.widget;

import android.view.View;
import android.view.ViewParent;

class ViewOffsetHelper {
    private int mLayoutLeft;
    private int mLayoutTop;
    private int mOffsetLeft;
    private int mOffsetTop;
    private final View mView;

    public ViewOffsetHelper(View view) {
        this.mView = view;
    }

    private void updateOffsets() {
        bh.d(this.mView, this.mOffsetTop - (this.mView.getTop() - this.mLayoutTop));
        bh.e(this.mView, this.mOffsetLeft - (this.mView.getLeft() - this.mLayoutLeft));
        ViewParent parent = this.mView.getParent();
        if (parent instanceof View) {
            ((View) parent).invalidate();
        }
    }

    public int getLeftAndRightOffset() {
        return this.mOffsetLeft;
    }

    public int getTopAndBottomOffset() {
        return this.mOffsetTop;
    }

    public void onViewLayout() {
        this.mLayoutTop = this.mView.getTop();
        this.mLayoutLeft = this.mView.getLeft();
        updateOffsets();
    }

    public boolean setLeftAndRightOffset(int i) {
        if (this.mOffsetLeft == i) {
            return false;
        }
        this.mOffsetLeft = i;
        updateOffsets();
        return true;
    }

    public boolean setTopAndBottomOffset(int i) {
        if (this.mOffsetTop == i) {
            return false;
        }
        this.mOffsetTop = i;
        updateOffsets();
        return true;
    }
}
