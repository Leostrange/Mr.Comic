package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: FragmentManager */
final class FragmentManagerImpl extends FragmentManager implements au {
    static final Interpolator ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    static final Interpolator ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = HONEYCOMB;
    static final Interpolator DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
    static final Interpolator DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    ArrayList<Fragment> mActive;
    FragmentActivity mActivity;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit = new Runnable() {
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    /* compiled from: FragmentManager */
    static class FragmentTag {
        public static final int[] Fragment = {16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

    static {
        boolean z = HONEYCOMB;
        if (Build.VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
    }

    FragmentManagerImpl() {
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    static Animation makeFadeAnimation(Context context, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    static Animation makeOpenCloseAnimation(Context context, float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(HONEYCOMB);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    public static int reverseTransit(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                return FragmentTransaction.TRANSIT_FRAGMENT_CLOSE;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new ae(TAG));
        if (this.mActivity != null) {
            try {
                this.mActivity.dump("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public static int transitToStyleIndex(int i, boolean z) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                return z ? 1 : 2;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                return z ? 5 : 6;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    /* access modifiers changed from: package-private */
    public final void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(backStackRecord);
        reportBackStackChanged();
    }

    public final void addFragment(Fragment fragment, boolean z) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList<>();
        }
        if (DEBUG) {
            new StringBuilder("add: ").append(fragment);
        }
        makeActive(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        this.mAdded.add(fragment);
        fragment.mAdded = true;
        fragment.mRemoving = HONEYCOMB;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        if (z) {
            moveToState(fragment);
        }
    }

    public final void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public final int allocBackStackIndex(BackStackRecord backStackRecord) {
        int i;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList<>();
                }
                i = this.mBackStackIndices.size();
                if (DEBUG) {
                    new StringBuilder("Setting back stack index ").append(i).append(" to ").append(backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            } else {
                i = this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1).intValue();
                if (DEBUG) {
                    new StringBuilder("Adding back stack index ").append(i).append(" with ").append(backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            }
        }
        return i;
    }

    public final void attachActivity(FragmentActivity fragmentActivity, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mActivity != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mActivity = fragmentActivity;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public final void attachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            new StringBuilder("attach: ").append(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = HONEYCOMB;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList<>();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    new StringBuilder("add from attach: ").append(fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, i, i2, HONEYCOMB);
            }
        }
    }

    public final FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public final void detachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            new StringBuilder("detach: ").append(fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        new StringBuilder("remove from detach: ").append(fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = HONEYCOMB;
                moveToState(fragment, 1, i, i2, HONEYCOMB);
            }
        }
    }

    public final void dispatchActivityCreated() {
        this.mStateSaved = HONEYCOMB;
        moveToState(2, HONEYCOMB);
    }

    public final void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performConfigurationChanged(configuration);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public final boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return HONEYCOMB;
    }

    public final void dispatchCreate() {
        this.mStateSaved = HONEYCOMB;
        moveToState(1, HONEYCOMB);
    }

    public final boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        ArrayList<Fragment> arrayList = null;
        if (this.mAdded != null) {
            int i = 0;
            z = false;
            while (i < this.mAdded.size()) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                }
                i++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.mCreatedMenus != null) {
            for (int i2 = 0; i2 < this.mCreatedMenus.size(); i2++) {
                Fragment fragment2 = this.mCreatedMenus.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public final void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, HONEYCOMB);
        this.mActivity = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public final void dispatchDestroyView() {
        moveToState(1, HONEYCOMB);
    }

    public final void dispatchLowMemory() {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performLowMemory();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public final boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return HONEYCOMB;
    }

    public final void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public final void dispatchPause() {
        moveToState(4, HONEYCOMB);
    }

    public final boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        boolean z = false;
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void dispatchReallyStop() {
        moveToState(2, HONEYCOMB);
    }

    public final void dispatchResume() {
        this.mStateSaved = HONEYCOMB;
        moveToState(5, HONEYCOMB);
    }

    public final void dispatchStart() {
        this.mStateSaved = HONEYCOMB;
        moveToState(4, HONEYCOMB);
    }

    public final void dispatchStop() {
        this.mStateSaved = true;
        moveToState(3, HONEYCOMB);
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str2 = str + "    ";
        if (this.mActive != null && (size6 = this.mActive.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size6; i++) {
                Fragment fragment = this.mActive.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        if (this.mAdded != null && (size5 = this.mAdded.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.mAdded.get(i2).toString());
            }
        }
        if (this.mCreatedMenus != null && (size4 = this.mCreatedMenus.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(this.mCreatedMenus.get(i3).toString());
            }
        }
        if (this.mBackStack != null && (size3 = this.mBackStack.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null && (size2 = this.mBackStackIndices.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(this.mBackStackIndices.get(i5));
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null && (size = this.mPendingActions.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(this.mPendingActions.get(i6));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.mActivity);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    public final void enqueueAction(Runnable runnable, boolean z) {
        if (!z) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mActivity == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList<>();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                this.mActivity.mHandler.post(this.mExecCommit);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0083, code lost:
        r6.mExecutingActions = true;
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0086, code lost:
        if (r1 >= r3) goto L_0x009a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0088, code lost:
        r6.mTmpActions[r1].run();
        r6.mTmpActions[r1] = null;
        r1 = r1 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean execPendingActions() {
        /*
            r6 = this;
            r0 = 1
            r2 = 0
            boolean r1 = r6.mExecutingActions
            if (r1 == 0) goto L_0x000e
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Recursive entry to executePendingTransactions"
            r0.<init>(r1)
            throw r0
        L_0x000e:
            android.os.Looper r1 = android.os.Looper.myLooper()
            android.support.v4.app.FragmentActivity r3 = r6.mActivity
            android.os.Handler r3 = r3.mHandler
            android.os.Looper r3 = r3.getLooper()
            if (r1 == r3) goto L_0x0024
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Must be called from main thread of process"
            r0.<init>(r1)
            throw r0
        L_0x0024:
            r1 = r2
        L_0x0025:
            monitor-enter(r6)
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch:{ all -> 0x0097 }
            if (r3 == 0) goto L_0x0032
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch:{ all -> 0x0097 }
            int r3 = r3.size()     // Catch:{ all -> 0x0097 }
            if (r3 != 0) goto L_0x005a
        L_0x0032:
            monitor-exit(r6)     // Catch:{ all -> 0x0097 }
            boolean r0 = r6.mHavePendingDeferredStart
            if (r0 == 0) goto L_0x00a5
            r3 = r2
            r4 = r2
        L_0x0039:
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.mActive
            int r0 = r0.size()
            if (r3 >= r0) goto L_0x009e
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.mActive
            java.lang.Object r0 = r0.get(r3)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            if (r0 == 0) goto L_0x0056
            android.support.v4.app.LoaderManagerImpl r5 = r0.mLoaderManager
            if (r5 == 0) goto L_0x0056
            android.support.v4.app.LoaderManagerImpl r0 = r0.mLoaderManager
            boolean r0 = r0.hasRunningLoaders()
            r4 = r4 | r0
        L_0x0056:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x0039
        L_0x005a:
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch:{ all -> 0x0097 }
            int r3 = r1.size()     // Catch:{ all -> 0x0097 }
            java.lang.Runnable[] r1 = r6.mTmpActions     // Catch:{ all -> 0x0097 }
            if (r1 == 0) goto L_0x0069
            java.lang.Runnable[] r1 = r6.mTmpActions     // Catch:{ all -> 0x0097 }
            int r1 = r1.length     // Catch:{ all -> 0x0097 }
            if (r1 >= r3) goto L_0x006d
        L_0x0069:
            java.lang.Runnable[] r1 = new java.lang.Runnable[r3]     // Catch:{ all -> 0x0097 }
            r6.mTmpActions = r1     // Catch:{ all -> 0x0097 }
        L_0x006d:
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch:{ all -> 0x0097 }
            java.lang.Runnable[] r4 = r6.mTmpActions     // Catch:{ all -> 0x0097 }
            r1.toArray(r4)     // Catch:{ all -> 0x0097 }
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch:{ all -> 0x0097 }
            r1.clear()     // Catch:{ all -> 0x0097 }
            android.support.v4.app.FragmentActivity r1 = r6.mActivity     // Catch:{ all -> 0x0097 }
            android.os.Handler r1 = r1.mHandler     // Catch:{ all -> 0x0097 }
            java.lang.Runnable r4 = r6.mExecCommit     // Catch:{ all -> 0x0097 }
            r1.removeCallbacks(r4)     // Catch:{ all -> 0x0097 }
            monitor-exit(r6)     // Catch:{ all -> 0x0097 }
            r6.mExecutingActions = r0
            r1 = r2
        L_0x0086:
            if (r1 >= r3) goto L_0x009a
            java.lang.Runnable[] r4 = r6.mTmpActions
            r4 = r4[r1]
            r4.run()
            java.lang.Runnable[] r4 = r6.mTmpActions
            r5 = 0
            r4[r1] = r5
            int r1 = r1 + 1
            goto L_0x0086
        L_0x0097:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0097 }
            throw r0
        L_0x009a:
            r6.mExecutingActions = r2
            r1 = r0
            goto L_0x0025
        L_0x009e:
            if (r4 != 0) goto L_0x00a5
            r6.mHavePendingDeferredStart = r2
            r6.startPendingDeferredFragments()
        L_0x00a5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    public final boolean executePendingTransactions() {
        return execPendingActions();
    }

    public final Fragment findFragmentById(int i) {
        if (this.mAdded != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.mActive.get(size2);
                if (fragment2 != null && fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment findFragmentByTag(String str) {
        if (!(this.mAdded == null || str == null)) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (!(this.mActive == null || str == null)) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.mActive.get(size2);
                if (fragment2 != null && str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment findFragmentByWho(String str) {
        Fragment findFragmentByWho;
        if (!(this.mActive == null || str == null)) {
            for (int size = this.mActive.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mActive.get(size);
                if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                    return findFragmentByWho;
                }
            }
        }
        return null;
    }

    public final void freeBackStackIndex(int i) {
        synchronized (this) {
            this.mBackStackIndices.set(i, (Object) null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList<>();
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i));
        }
    }

    public final FragmentManager.BackStackEntry getBackStackEntryAt(int i) {
        return this.mBackStack.get(i);
    }

    public final int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    public final Fragment getFragment(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = this.mActive.get(i);
        if (fragment != null) {
            return fragment;
        }
        throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public final List<Fragment> getFragments() {
        return this.mActive;
    }

    /* access modifiers changed from: package-private */
    public final au getLayoutInflaterFactory() {
        return this;
    }

    public final void hideFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            new StringBuilder("hide: ").append(fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, HONEYCOMB, i2);
                if (loadAnimation != null) {
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public final boolean isDestroyed() {
        return this.mDestroyed;
    }

    /* access modifiers changed from: package-private */
    public final Animation loadAnimation(Fragment fragment, int i, boolean z, int i2) {
        Animation loadAnimation;
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0 && (loadAnimation = AnimationUtils.loadAnimation(this.mActivity, fragment.mNextAnim)) != null) {
            return loadAnimation;
        }
        if (i == 0) {
            return null;
        }
        int transitToStyleIndex = transitToStyleIndex(i, z);
        if (transitToStyleIndex < 0) {
            return null;
        }
        switch (transitToStyleIndex) {
            case 1:
                return makeOpenCloseAnimation(this.mActivity, 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return makeOpenCloseAnimation(this.mActivity, 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return makeFadeAnimation(this.mActivity, 0.0f, 1.0f);
            case 6:
                return makeFadeAnimation(this.mActivity, 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.mActivity.getWindow() != null) {
                    i2 = this.mActivity.getWindow().getAttributes().windowAnimations;
                }
                return i2 == 0 ? null : null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void makeActive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList<>();
                }
                fragment.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(fragment);
            } else {
                fragment.setIndex(this.mAvailIndices.remove(this.mAvailIndices.size() - 1).intValue(), this.mParent);
                this.mActive.set(fragment.mIndex, fragment);
            }
            if (DEBUG) {
                new StringBuilder("Allocated fragment index ").append(fragment);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void makeInactive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (DEBUG) {
                new StringBuilder("Freeing fragment index ").append(fragment);
            }
            this.mActive.set(fragment.mIndex, (Object) null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList<>();
            }
            this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
            this.mActivity.invalidateSupportFragment(fragment.mWho);
            fragment.initState();
        }
    }

    /* access modifiers changed from: package-private */
    public final void moveToState(int i, int i2, int i3, boolean z) {
        if (this.mActivity == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || this.mCurState != i) {
            this.mCurState = i;
            if (this.mActive != null) {
                int i4 = 0;
                boolean z2 = false;
                while (i4 < this.mActive.size()) {
                    Fragment fragment = this.mActive.get(i4);
                    if (fragment != null) {
                        moveToState(fragment, i, i2, i3, HONEYCOMB);
                        if (fragment.mLoaderManager != null) {
                            z2 |= fragment.mLoaderManager.hasRunningLoaders();
                        }
                    }
                    i4++;
                    z2 = z2;
                }
                if (!z2) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mActivity != null && this.mCurState == 5) {
                    this.mActivity.supportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = HONEYCOMB;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void moveToState(int i, boolean z) {
        moveToState(i, 0, 0, z);
    }

    /* access modifiers changed from: package-private */
    public final void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, HONEYCOMB);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x01e0, code lost:
        if (DEBUG == false) goto L_0x01ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x01e2, code lost:
        new java.lang.StringBuilder("moveto STARTED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x01ec, code lost:
        r10.performStart();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x01ef, code lost:
        if (r11 <= 4) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:0x01f3, code lost:
        if (DEBUG == false) goto L_0x01ff;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x01f5, code lost:
        new java.lang.StringBuilder("moveto RESUMED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x01ff, code lost:
        r10.mResumed = true;
        r10.performResume();
        r10.mSavedFragmentState = null;
        r10.mSavedViewState = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0218, code lost:
        r10.mView = android.support.v4.app.NoSaveStateFrameLayout.wrap(r10.mView);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0221, code lost:
        r10.mInnerView = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x022f, code lost:
        if (r11 > 0) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x0233, code lost:
        if (r9.mDestroyed == false) goto L_0x0240;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0237, code lost:
        if (r10.mAnimatingAway == null) goto L_0x0240;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0239, code lost:
        r0 = r10.mAnimatingAway;
        r10.mAnimatingAway = null;
        r0.clearAnimation();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x0242, code lost:
        if (r10.mAnimatingAway == null) goto L_0x02e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x0244, code lost:
        r10.mStateAfterAnimating = r11;
        r11 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x025f, code lost:
        if (r11 >= 4) goto L_0x0272;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x0263, code lost:
        if (DEBUG == false) goto L_0x026f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x0265, code lost:
        new java.lang.StringBuilder("movefrom STARTED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x026f, code lost:
        r10.performStop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0272, code lost:
        if (r11 >= 3) goto L_0x0285;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x0276, code lost:
        if (DEBUG == false) goto L_0x0282;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x0278, code lost:
        new java.lang.StringBuilder("movefrom STOPPED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0282, code lost:
        r10.performReallyStop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0286, code lost:
        if (r11 >= 2) goto L_0x022f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x028a, code lost:
        if (DEBUG == false) goto L_0x0296;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x028c, code lost:
        new java.lang.StringBuilder("movefrom ACTIVITY_CREATED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0298, code lost:
        if (r10.mView == null) goto L_0x02a9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x02a0, code lost:
        if (r9.mActivity.isFinishing() != false) goto L_0x02a9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x02a4, code lost:
        if (r10.mSavedViewState != null) goto L_0x02a9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x02a6, code lost:
        saveFragmentViewState(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x02a9, code lost:
        r10.performDestroyView();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x02ae, code lost:
        if (r10.mView == null) goto L_0x02dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x02b2, code lost:
        if (r10.mContainer == null) goto L_0x02dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x02b6, code lost:
        if (r9.mCurState <= 0) goto L_0x0332;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x02ba, code lost:
        if (r9.mDestroyed != false) goto L_0x0332;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x02bc, code lost:
        r0 = loadAnimation(r10, r12, HONEYCOMB, r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x02c0, code lost:
        if (r0 == null) goto L_0x02d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x02c2, code lost:
        r10.mAnimatingAway = r10.mView;
        r10.mStateAfterAnimating = r11;
        r0.setAnimationListener(new android.support.v4.app.FragmentManagerImpl.AnonymousClass5(r9));
        r10.mView.startAnimation(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:164:0x02d5, code lost:
        r10.mContainer.removeView(r10.mView);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:165:0x02dc, code lost:
        r10.mContainer = null;
        r10.mView = null;
        r10.mInnerView = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:167:0x02e6, code lost:
        if (DEBUG == false) goto L_0x02f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x02e8, code lost:
        new java.lang.StringBuilder("movefrom CREATED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x02f4, code lost:
        if (r10.mRetaining != false) goto L_0x02f9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:171:0x02f6, code lost:
        r10.performDestroy();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x02f9, code lost:
        r10.mCalled = HONEYCOMB;
        r10.onDetach();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x0300, code lost:
        if (r10.mCalled != false) goto L_0x031d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:0x031c, code lost:
        throw new android.support.v4.app.SuperNotCalledException("Fragment " + r10 + " did not call through to super.onDetach()");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x031d, code lost:
        if (r14 != false) goto L_0x0045;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x0321, code lost:
        if (r10.mRetaining != false) goto L_0x0328;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:0x0323, code lost:
        makeInactive(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x0328, code lost:
        r10.mActivity = null;
        r10.mParentFragment = null;
        r10.mFragmentManager = null;
        r10.mChildFragmentManager = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x0332, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x0334, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0122, code lost:
        if (r11 <= 1) goto L_0x01dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0126, code lost:
        if (DEBUG == false) goto L_0x0132;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0128, code lost:
        new java.lang.StringBuilder("moveto ACTIVITY_CREATED: ").append(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0134, code lost:
        if (r10.mFromLayout != false) goto L_0x01cc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0138, code lost:
        if (r10.mContainerId == 0) goto L_0x0334;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x013a, code lost:
        r0 = (android.view.ViewGroup) r9.mContainer.findViewById(r10.mContainerId);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0144, code lost:
        if (r0 != null) goto L_0x0185;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0148, code lost:
        if (r10.mRestored != false) goto L_0x0185;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x014a, code lost:
        throwException(new java.lang.IllegalArgumentException("No view found for id 0x" + java.lang.Integer.toHexString(r10.mContainerId) + " (" + r10.getResources().getResourceName(r10.mContainerId) + ") for fragment " + r10));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0185, code lost:
        r10.mContainer = r0;
        r10.mView = r10.performCreateView(r10.getLayoutInflater(r10.mSavedFragmentState), r0, r10.mSavedFragmentState);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0197, code lost:
        if (r10.mView == null) goto L_0x0221;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0199, code lost:
        r10.mInnerView = r10.mView;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x01a1, code lost:
        if (android.os.Build.VERSION.SDK_INT < 11) goto L_0x0218;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x01a3, code lost:
        defpackage.bh.z(r10.mView);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01a8, code lost:
        if (r0 == null) goto L_0x01ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x01aa, code lost:
        r1 = loadAnimation(r10, r12, true, r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x01ae, code lost:
        if (r1 == null) goto L_0x01b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x01b0, code lost:
        r10.mView.startAnimation(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x01b5, code lost:
        r0.addView(r10.mView);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x01bc, code lost:
        if (r10.mHidden == false) goto L_0x01c5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x01be, code lost:
        r10.mView.setVisibility(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x01c5, code lost:
        r10.onViewCreated(r10.mView, r10.mSavedFragmentState);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x01cc, code lost:
        r10.performActivityCreated(r10.mSavedFragmentState);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x01d3, code lost:
        if (r10.mView == null) goto L_0x01da;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x01d5, code lost:
        r10.restoreViewState(r10.mSavedFragmentState);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x01da, code lost:
        r10.mSavedFragmentState = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x01dc, code lost:
        if (r11 <= 3) goto L_0x01ef;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void moveToState(final android.support.v4.app.Fragment r10, int r11, int r12, int r13, boolean r14) {
        /*
            r9 = this;
            r8 = 4
            r6 = 3
            r3 = 0
            r5 = 1
            r7 = 0
            boolean r0 = r10.mAdded
            if (r0 == 0) goto L_0x000d
            boolean r0 = r10.mDetached
            if (r0 == 0) goto L_0x0010
        L_0x000d:
            if (r11 <= r5) goto L_0x0010
            r11 = r5
        L_0x0010:
            boolean r0 = r10.mRemoving
            if (r0 == 0) goto L_0x001a
            int r0 = r10.mState
            if (r11 <= r0) goto L_0x001a
            int r11 = r10.mState
        L_0x001a:
            boolean r0 = r10.mDeferStart
            if (r0 == 0) goto L_0x0025
            int r0 = r10.mState
            if (r0 >= r8) goto L_0x0025
            if (r11 <= r6) goto L_0x0025
            r11 = r6
        L_0x0025:
            int r0 = r10.mState
            if (r0 >= r11) goto L_0x0224
            boolean r0 = r10.mFromLayout
            if (r0 == 0) goto L_0x0032
            boolean r0 = r10.mInLayout
            if (r0 != 0) goto L_0x0032
        L_0x0031:
            return
        L_0x0032:
            android.view.View r0 = r10.mAnimatingAway
            if (r0 == 0) goto L_0x0040
            r10.mAnimatingAway = r7
            int r2 = r10.mStateAfterAnimating
            r0 = r9
            r1 = r10
            r4 = r3
            r0.moveToState(r1, r2, r3, r4, r5)
        L_0x0040:
            int r0 = r10.mState
            switch(r0) {
                case 0: goto L_0x0048;
                case 1: goto L_0x0122;
                case 2: goto L_0x01dc;
                case 3: goto L_0x01dc;
                case 4: goto L_0x01ef;
                default: goto L_0x0045;
            }
        L_0x0045:
            r10.mState = r11
            goto L_0x0031
        L_0x0048:
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0056
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "moveto CREATED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x0056:
            android.os.Bundle r0 = r10.mSavedFragmentState
            if (r0 == 0) goto L_0x009a
            android.os.Bundle r0 = r10.mSavedFragmentState
            android.support.v4.app.FragmentActivity r1 = r9.mActivity
            java.lang.ClassLoader r1 = r1.getClassLoader()
            r0.setClassLoader(r1)
            android.os.Bundle r0 = r10.mSavedFragmentState
            java.lang.String r1 = "android:view_state"
            android.util.SparseArray r0 = r0.getSparseParcelableArray(r1)
            r10.mSavedViewState = r0
            android.os.Bundle r0 = r10.mSavedFragmentState
            java.lang.String r1 = "android:target_state"
            android.support.v4.app.Fragment r0 = r9.getFragment(r0, r1)
            r10.mTarget = r0
            android.support.v4.app.Fragment r0 = r10.mTarget
            if (r0 == 0) goto L_0x0087
            android.os.Bundle r0 = r10.mSavedFragmentState
            java.lang.String r1 = "android:target_req_state"
            int r0 = r0.getInt(r1, r3)
            r10.mTargetRequestCode = r0
        L_0x0087:
            android.os.Bundle r0 = r10.mSavedFragmentState
            java.lang.String r1 = "android:user_visible_hint"
            boolean r0 = r0.getBoolean(r1, r5)
            r10.mUserVisibleHint = r0
            boolean r0 = r10.mUserVisibleHint
            if (r0 != 0) goto L_0x009a
            r10.mDeferStart = r5
            if (r11 <= r6) goto L_0x009a
            r11 = r6
        L_0x009a:
            android.support.v4.app.FragmentActivity r0 = r9.mActivity
            r10.mActivity = r0
            android.support.v4.app.Fragment r0 = r9.mParent
            r10.mParentFragment = r0
            android.support.v4.app.Fragment r0 = r9.mParent
            if (r0 == 0) goto L_0x00d2
            android.support.v4.app.Fragment r0 = r9.mParent
            android.support.v4.app.FragmentManagerImpl r0 = r0.mChildFragmentManager
        L_0x00aa:
            r10.mFragmentManager = r0
            r10.mCalled = r3
            android.support.v4.app.FragmentActivity r0 = r9.mActivity
            r10.onAttach(r0)
            boolean r0 = r10.mCalled
            if (r0 != 0) goto L_0x00d7
            android.support.v4.app.SuperNotCalledException r0 = new android.support.v4.app.SuperNotCalledException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Fragment "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.String r2 = " did not call through to super.onAttach()"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00d2:
            android.support.v4.app.FragmentActivity r0 = r9.mActivity
            android.support.v4.app.FragmentManagerImpl r0 = r0.mFragments
            goto L_0x00aa
        L_0x00d7:
            android.support.v4.app.Fragment r0 = r10.mParentFragment
            if (r0 != 0) goto L_0x00e0
            android.support.v4.app.FragmentActivity r0 = r9.mActivity
            r0.onAttachFragment(r10)
        L_0x00e0:
            boolean r0 = r10.mRetaining
            if (r0 != 0) goto L_0x00e9
            android.os.Bundle r0 = r10.mSavedFragmentState
            r10.performCreate(r0)
        L_0x00e9:
            r10.mRetaining = r3
            boolean r0 = r10.mFromLayout
            if (r0 == 0) goto L_0x0122
            android.os.Bundle r0 = r10.mSavedFragmentState
            android.view.LayoutInflater r0 = r10.getLayoutInflater(r0)
            android.os.Bundle r1 = r10.mSavedFragmentState
            android.view.View r0 = r10.performCreateView(r0, r7, r1)
            r10.mView = r0
            android.view.View r0 = r10.mView
            if (r0 == 0) goto L_0x0214
            android.view.View r0 = r10.mView
            r10.mInnerView = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 11
            if (r0 < r1) goto L_0x020a
            android.view.View r0 = r10.mView
            defpackage.bh.z(r0)
        L_0x0110:
            boolean r0 = r10.mHidden
            if (r0 == 0) goto L_0x011b
            android.view.View r0 = r10.mView
            r1 = 8
            r0.setVisibility(r1)
        L_0x011b:
            android.view.View r0 = r10.mView
            android.os.Bundle r1 = r10.mSavedFragmentState
            r10.onViewCreated(r0, r1)
        L_0x0122:
            if (r11 <= r5) goto L_0x01dc
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0132
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "moveto ACTIVITY_CREATED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x0132:
            boolean r0 = r10.mFromLayout
            if (r0 != 0) goto L_0x01cc
            int r0 = r10.mContainerId
            if (r0 == 0) goto L_0x0334
            android.support.v4.app.FragmentContainer r0 = r9.mContainer
            int r1 = r10.mContainerId
            android.view.View r0 = r0.findViewById(r1)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            if (r0 != 0) goto L_0x0185
            boolean r1 = r10.mRestored
            if (r1 != 0) goto L_0x0185
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "No view found for id 0x"
            r2.<init>(r3)
            int r3 = r10.mContainerId
            java.lang.String r3 = java.lang.Integer.toHexString(r3)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " ("
            java.lang.StringBuilder r2 = r2.append(r3)
            android.content.res.Resources r3 = r10.getResources()
            int r4 = r10.mContainerId
            java.lang.String r3 = r3.getResourceName(r4)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = ") for fragment "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r10)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            r9.throwException(r1)
        L_0x0185:
            r10.mContainer = r0
            android.os.Bundle r1 = r10.mSavedFragmentState
            android.view.LayoutInflater r1 = r10.getLayoutInflater(r1)
            android.os.Bundle r2 = r10.mSavedFragmentState
            android.view.View r1 = r10.performCreateView(r1, r0, r2)
            r10.mView = r1
            android.view.View r1 = r10.mView
            if (r1 == 0) goto L_0x0221
            android.view.View r1 = r10.mView
            r10.mInnerView = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 11
            if (r1 < r2) goto L_0x0218
            android.view.View r1 = r10.mView
            defpackage.bh.z(r1)
        L_0x01a8:
            if (r0 == 0) goto L_0x01ba
            android.view.animation.Animation r1 = r9.loadAnimation(r10, r12, r5, r13)
            if (r1 == 0) goto L_0x01b5
            android.view.View r2 = r10.mView
            r2.startAnimation(r1)
        L_0x01b5:
            android.view.View r1 = r10.mView
            r0.addView(r1)
        L_0x01ba:
            boolean r0 = r10.mHidden
            if (r0 == 0) goto L_0x01c5
            android.view.View r0 = r10.mView
            r1 = 8
            r0.setVisibility(r1)
        L_0x01c5:
            android.view.View r0 = r10.mView
            android.os.Bundle r1 = r10.mSavedFragmentState
            r10.onViewCreated(r0, r1)
        L_0x01cc:
            android.os.Bundle r0 = r10.mSavedFragmentState
            r10.performActivityCreated(r0)
            android.view.View r0 = r10.mView
            if (r0 == 0) goto L_0x01da
            android.os.Bundle r0 = r10.mSavedFragmentState
            r10.restoreViewState(r0)
        L_0x01da:
            r10.mSavedFragmentState = r7
        L_0x01dc:
            if (r11 <= r6) goto L_0x01ef
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x01ec
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "moveto STARTED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x01ec:
            r10.performStart()
        L_0x01ef:
            if (r11 <= r8) goto L_0x0045
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x01ff
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "moveto RESUMED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x01ff:
            r10.mResumed = r5
            r10.performResume()
            r10.mSavedFragmentState = r7
            r10.mSavedViewState = r7
            goto L_0x0045
        L_0x020a:
            android.view.View r0 = r10.mView
            android.view.ViewGroup r0 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r0)
            r10.mView = r0
            goto L_0x0110
        L_0x0214:
            r10.mInnerView = r7
            goto L_0x0122
        L_0x0218:
            android.view.View r1 = r10.mView
            android.view.ViewGroup r1 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r1)
            r10.mView = r1
            goto L_0x01a8
        L_0x0221:
            r10.mInnerView = r7
            goto L_0x01cc
        L_0x0224:
            int r0 = r10.mState
            if (r0 <= r11) goto L_0x0045
            int r0 = r10.mState
            switch(r0) {
                case 1: goto L_0x022f;
                case 2: goto L_0x0285;
                case 3: goto L_0x0272;
                case 4: goto L_0x025f;
                case 5: goto L_0x0249;
                default: goto L_0x022d;
            }
        L_0x022d:
            goto L_0x0045
        L_0x022f:
            if (r11 > 0) goto L_0x0045
            boolean r0 = r9.mDestroyed
            if (r0 == 0) goto L_0x0240
            android.view.View r0 = r10.mAnimatingAway
            if (r0 == 0) goto L_0x0240
            android.view.View r0 = r10.mAnimatingAway
            r10.mAnimatingAway = r7
            r0.clearAnimation()
        L_0x0240:
            android.view.View r0 = r10.mAnimatingAway
            if (r0 == 0) goto L_0x02e4
            r10.mStateAfterAnimating = r11
            r11 = r5
            goto L_0x0045
        L_0x0249:
            r0 = 5
            if (r11 >= r0) goto L_0x025f
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x025a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "movefrom RESUMED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x025a:
            r10.performPause()
            r10.mResumed = r3
        L_0x025f:
            if (r11 >= r8) goto L_0x0272
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x026f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "movefrom STARTED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x026f:
            r10.performStop()
        L_0x0272:
            if (r11 >= r6) goto L_0x0285
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0282
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "movefrom STOPPED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x0282:
            r10.performReallyStop()
        L_0x0285:
            r0 = 2
            if (r11 >= r0) goto L_0x022f
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0296
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "movefrom ACTIVITY_CREATED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x0296:
            android.view.View r0 = r10.mView
            if (r0 == 0) goto L_0x02a9
            android.support.v4.app.FragmentActivity r0 = r9.mActivity
            boolean r0 = r0.isFinishing()
            if (r0 != 0) goto L_0x02a9
            android.util.SparseArray<android.os.Parcelable> r0 = r10.mSavedViewState
            if (r0 != 0) goto L_0x02a9
            r9.saveFragmentViewState(r10)
        L_0x02a9:
            r10.performDestroyView()
            android.view.View r0 = r10.mView
            if (r0 == 0) goto L_0x02dc
            android.view.ViewGroup r0 = r10.mContainer
            if (r0 == 0) goto L_0x02dc
            int r0 = r9.mCurState
            if (r0 <= 0) goto L_0x0332
            boolean r0 = r9.mDestroyed
            if (r0 != 0) goto L_0x0332
            android.view.animation.Animation r0 = r9.loadAnimation(r10, r12, r3, r13)
        L_0x02c0:
            if (r0 == 0) goto L_0x02d5
            android.view.View r1 = r10.mView
            r10.mAnimatingAway = r1
            r10.mStateAfterAnimating = r11
            android.support.v4.app.FragmentManagerImpl$5 r1 = new android.support.v4.app.FragmentManagerImpl$5
            r1.<init>(r10)
            r0.setAnimationListener(r1)
            android.view.View r1 = r10.mView
            r1.startAnimation(r0)
        L_0x02d5:
            android.view.ViewGroup r0 = r10.mContainer
            android.view.View r1 = r10.mView
            r0.removeView(r1)
        L_0x02dc:
            r10.mContainer = r7
            r10.mView = r7
            r10.mInnerView = r7
            goto L_0x022f
        L_0x02e4:
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x02f2
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "movefrom CREATED: "
            r0.<init>(r1)
            r0.append(r10)
        L_0x02f2:
            boolean r0 = r10.mRetaining
            if (r0 != 0) goto L_0x02f9
            r10.performDestroy()
        L_0x02f9:
            r10.mCalled = r3
            r10.onDetach()
            boolean r0 = r10.mCalled
            if (r0 != 0) goto L_0x031d
            android.support.v4.app.SuperNotCalledException r0 = new android.support.v4.app.SuperNotCalledException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Fragment "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.String r2 = " did not call through to super.onDetach()"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x031d:
            if (r14 != 0) goto L_0x0045
            boolean r0 = r10.mRetaining
            if (r0 != 0) goto L_0x0328
            r9.makeInactive(r10)
            goto L_0x0045
        L_0x0328:
            r10.mActivity = r7
            r10.mParentFragment = r7
            r10.mFragmentManager = r7
            r10.mChildFragmentManager = r7
            goto L_0x0045
        L_0x0332:
            r0 = r7
            goto L_0x02c0
        L_0x0334:
            r0 = r7
            goto L_0x0185
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    public final void noteStateNotSaved() {
        this.mStateSaved = HONEYCOMB;
    }

    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue((String) null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        String string = attributeValue == null ? obtainStyledAttributes.getString(0) : attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.mActivity, string)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment findFragmentById = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (findFragmentById == null && string2 != null) {
            findFragmentById = findFragmentByTag(string2);
        }
        if (findFragmentById == null && id != -1) {
            findFragmentById = findFragmentById(id);
        }
        if (DEBUG) {
            new StringBuilder("onCreateView: id=0x").append(Integer.toHexString(resourceId)).append(" fname=").append(string).append(" existing=").append(findFragmentById);
        }
        if (findFragmentById == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.onInflate(this.mActivity, attributeSet, instantiate.mSavedFragmentState);
            addFragment(instantiate, true);
            fragment = instantiate;
        } else if (findFragmentById.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
        } else {
            findFragmentById.mInLayout = true;
            if (!findFragmentById.mRetaining) {
                findFragmentById.onInflate(this.mActivity, attributeSet, findFragmentById.mSavedFragmentState);
            }
            fragment = findFragmentById;
        }
        if (this.mCurState > 0 || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, 1, 0, 0, HONEYCOMB);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    public final void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        fragment.mDeferStart = HONEYCOMB;
        moveToState(fragment, this.mCurState, 0, 0, HONEYCOMB);
    }

    public final void popBackStack() {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, (String) null, -1, 0);
            }
        }, HONEYCOMB);
    }

    public final void popBackStack(final int i, final int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, (String) null, i, i2);
            }
        }, HONEYCOMB);
    }

    public final void popBackStack(final String str, final int i) {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, str, -1, i);
            }
        }, HONEYCOMB);
    }

    public final boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, (String) null, -1, 0);
    }

    public final boolean popBackStackImmediate(int i, int i2) {
        checkStateLoss();
        executePendingTransactions();
        if (i >= 0) {
            return popBackStackState(this.mActivity.mHandler, (String) null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    public final boolean popBackStackImmediate(String str, int i) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, str, -1, i);
    }

    /* access modifiers changed from: package-private */
    public final boolean popBackStackState(Handler handler, String str, int i, int i2) {
        int i3;
        if (this.mBackStack == null) {
            return HONEYCOMB;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.mBackStack.size() - 1;
            if (size < 0) {
                return HONEYCOMB;
            }
            BackStackRecord remove = this.mBackStack.remove(size);
            SparseArray sparseArray = new SparseArray();
            SparseArray sparseArray2 = new SparseArray();
            remove.calculateBackFragments(sparseArray, sparseArray2);
            remove.popFromBackStack(true, (BackStackRecord.TransitionState) null, sparseArray, sparseArray2);
        } else {
            int i4 = -1;
            if (str != null || i >= 0) {
                int size2 = this.mBackStack.size() - 1;
                while (i3 >= 0) {
                    BackStackRecord backStackRecord = this.mBackStack.get(i3);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size2 = i3 - 1;
                }
                if (i3 < 0) {
                    return HONEYCOMB;
                }
                if ((i2 & 1) != 0) {
                    i3--;
                    while (i3 >= 0) {
                        BackStackRecord backStackRecord2 = this.mBackStack.get(i3);
                        if ((str == null || !str.equals(backStackRecord2.getName())) && (i < 0 || i != backStackRecord2.mIndex)) {
                            break;
                        }
                        i3--;
                    }
                }
                i4 = i3;
            }
            if (i4 == this.mBackStack.size() - 1) {
                return HONEYCOMB;
            }
            ArrayList arrayList = new ArrayList();
            for (int size3 = this.mBackStack.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
            }
            int size4 = arrayList.size() - 1;
            SparseArray sparseArray3 = new SparseArray();
            SparseArray sparseArray4 = new SparseArray();
            for (int i5 = 0; i5 <= size4; i5++) {
                ((BackStackRecord) arrayList.get(i5)).calculateBackFragments(sparseArray3, sparseArray4);
            }
            BackStackRecord.TransitionState transitionState = null;
            int i6 = 0;
            while (i6 <= size4) {
                if (DEBUG) {
                    new StringBuilder("Popping back stack state: ").append(arrayList.get(i6));
                }
                i6++;
                transitionState = ((BackStackRecord) arrayList.get(i6)).popFromBackStack(i6 == size4, transitionState, sparseArray3, sparseArray4);
            }
        }
        reportBackStackChanged();
        return true;
    }

    public final void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public final void removeFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            new StringBuilder("remove: ").append(fragment).append(" nesting=").append(fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = HONEYCOMB;
            fragment.mRemoving = true;
            moveToState(fragment, z ? 0 : 1, i, i2, HONEYCOMB);
        }
    }

    public final void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    /* access modifiers changed from: package-private */
    public final void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mBackStackChangeListeners.size()) {
                    this.mBackStackChangeListeners.get(i2).onBackStackChanged();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void restoreAllState(Parcelable parcelable, ArrayList<Fragment> arrayList) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                if (arrayList != null) {
                    for (int i = 0; i < arrayList.size(); i++) {
                        Fragment fragment = arrayList.get(i);
                        if (DEBUG) {
                            new StringBuilder("restoreAllState: re-attaching retained ").append(fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = HONEYCOMB;
                        fragment.mAdded = HONEYCOMB;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                        }
                    }
                }
                this.mActive = new ArrayList<>(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (int i2 = 0; i2 < fragmentManagerState.mActive.length; i2++) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i2];
                    if (fragmentState2 != null) {
                        Fragment instantiate = fragmentState2.instantiate(this.mActivity, this.mParent);
                        if (DEBUG) {
                            new StringBuilder("restoreAllState: active #").append(i2).append(": ").append(instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add((Object) null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList<>();
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                }
                if (arrayList != null) {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        Fragment fragment2 = arrayList.get(i3);
                        if (fragment2.mTargetIndex >= 0) {
                            if (fragment2.mTargetIndex < this.mActive.size()) {
                                fragment2.mTarget = this.mActive.get(fragment2.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                                fragment2.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList<>(fragmentManagerState.mAdded.length);
                    for (int i4 = 0; i4 < fragmentManagerState.mAdded.length; i4++) {
                        Fragment fragment3 = this.mActive.get(fragmentManagerState.mAdded[i4]);
                        if (fragment3 == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i4]));
                        }
                        fragment3.mAdded = true;
                        if (DEBUG) {
                            new StringBuilder("restoreAllState: added #").append(i4).append(": ").append(fragment3);
                        }
                        if (this.mAdded.contains(fragment3)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment3);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
                    for (int i5 = 0; i5 < fragmentManagerState.mBackStack.length; i5++) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i5].instantiate(this);
                        if (DEBUG) {
                            new StringBuilder("restoreAllState: back stack #").append(i5).append(" (index ").append(instantiate2.mIndex).append("): ").append(instantiate2);
                            instantiate2.dump("  ", new PrintWriter(new ae(TAG)), HONEYCOMB);
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mActive.size()) {
                    break;
                }
                Fragment fragment = this.mActive.get(i2);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (DEBUG) {
                        new StringBuilder("retainNonConfig: keeping retained ").append(fragment);
                    }
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final Parcelable saveAllState() {
        int[] iArr;
        int size;
        int size2;
        boolean z;
        BackStackState[] backStackStateArr = null;
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int size3 = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        int i = 0;
        boolean z2 = false;
        while (i < size3) {
            Fragment fragment = this.mActive.get(i);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                } else {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, fragment.mTargetRequestCode);
                        }
                    }
                }
                if (DEBUG) {
                    new StringBuilder("Saved state of ").append(fragment).append(": ").append(fragmentState.mSavedFragmentState);
                }
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (!z2) {
            return null;
        }
        if (this.mAdded == null || (size2 = this.mAdded.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                iArr[i2] = this.mAdded.get(i2).mIndex;
                if (iArr[i2] < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i2) + " has cleared index: " + iArr[i2]));
                }
                if (DEBUG) {
                    new StringBuilder("saveAllState: adding fragment #").append(i2).append(": ").append(this.mAdded.get(i2));
                }
            }
        }
        if (this.mBackStack != null && (size = this.mBackStack.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this, this.mBackStack.get(i3));
                if (DEBUG) {
                    new StringBuilder("saveAllState: adding back stack #").append(i3).append(": ").append(this.mBackStack.get(i3));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = fragmentStateArr;
        fragmentManagerState.mAdded = iArr;
        fragmentManagerState.mBackStack = backStackStateArr;
        return fragmentManagerState;
    }

    /* access modifiers changed from: package-private */
    public final Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (!this.mStateBundle.isEmpty()) {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        } else {
            bundle = null;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    public final Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Bundle saveFragmentBasicState;
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0 || (saveFragmentBasicState = saveFragmentBasicState(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(saveFragmentBasicState);
    }

    /* access modifiers changed from: package-private */
    public final void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray<>();
            } else {
                this.mStateArray.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                fragment.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    public final void setBackStackIndex(int i, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (i < size) {
                if (DEBUG) {
                    new StringBuilder("Setting back stack index ").append(i).append(" to ").append(backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            } else {
                while (size < i) {
                    this.mBackStackIndices.add((Object) null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    new StringBuilder("Adding back stack index ").append(i).append(" with ").append(backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public final void showFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            new StringBuilder("show: ").append(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = HONEYCOMB;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, true, i2);
                if (loadAnimation != null) {
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(HONEYCOMB);
        }
    }

    /* access modifiers changed from: package-private */
    public final void startPendingDeferredFragments() {
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mActive.size()) {
                    Fragment fragment = this.mActive.get(i2);
                    if (fragment != null) {
                        performPendingDeferredStart(fragment);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(NotificationCompat.FLAG_HIGH_PRIORITY);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.mParent != null) {
            ad.a(this.mParent, sb);
        } else {
            ad.a(this.mActivity, sb);
        }
        sb.append("}}");
        return sb.toString();
    }
}
