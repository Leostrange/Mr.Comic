package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.view.View;

public class ActivityOptionsCompat {

    static class ActivityOptionsImpl21 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat21 mImpl;

        ActivityOptionsImpl21(ActivityOptionsCompat21 activityOptionsCompat21) {
            this.mImpl = activityOptionsCompat21;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl21) {
                this.mImpl.update(((ActivityOptionsImpl21) activityOptionsCompat).mImpl);
            }
        }
    }

    static class ActivityOptionsImplJB extends ActivityOptionsCompat {
        private final ActivityOptionsCompatJB mImpl;

        ActivityOptionsImplJB(ActivityOptionsCompatJB activityOptionsCompatJB) {
            this.mImpl = activityOptionsCompatJB;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImplJB) {
                this.mImpl.update(((ActivityOptionsImplJB) activityOptionsCompat).mImpl);
            }
        }
    }

    protected ActivityOptionsCompat() {
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int i, int i2) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeCustomAnimation(context, i, i2)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int i, int i2, int i3, int i4) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeScaleUpAnimation(view, i, i2, i3, i4)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String str) {
        return Build.VERSION.SDK_INT >= 21 ? new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, view, str)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, ah<View, String>... ahVarArr) {
        View[] viewArr;
        String[] strArr = null;
        if (Build.VERSION.SDK_INT < 21) {
            return new ActivityOptionsCompat();
        }
        if (ahVarArr != null) {
            View[] viewArr2 = new View[ahVarArr.length];
            String[] strArr2 = new String[ahVarArr.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= ahVarArr.length) {
                    break;
                }
                viewArr2[i2] = (View) ahVarArr[i2].a;
                strArr2[i2] = (String) ahVarArr[i2].b;
                i = i2 + 1;
            }
            strArr = strArr2;
            viewArr = viewArr2;
        } else {
            viewArr = null;
        }
        return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, viewArr, strArr));
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i, int i2) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeThumbnailScaleUpAnimation(view, bitmap, i, i2)) : new ActivityOptionsCompat();
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }
}
