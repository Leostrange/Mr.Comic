package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.util.Log;
import defpackage.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* compiled from: LoaderManager */
class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final ak<LoaderInfo> mInactiveLoaders = new ak<>();
    final ak<LoaderInfo> mLoaders = new ak<>();
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    /* compiled from: LoaderManager */
    final class LoaderInfo implements g.a<Object> {
        final Bundle mArgs;
        LoaderManager.LoaderCallbacks<Object> mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        g<Object> mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;

        public LoaderInfo(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
            this.mId = i;
            this.mArgs = bundle;
            this.mCallbacks = loaderCallbacks;
        }

        /* access modifiers changed from: package-private */
        public final void callOnLoadFinished(g<Object> gVar, Object obj) {
            String str;
            if (this.mCallbacks != null) {
                if (LoaderManagerImpl.this.mActivity != null) {
                    String str2 = LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    if (LoaderManagerImpl.DEBUG) {
                        StringBuilder append = new StringBuilder("  onLoadFinished in ").append(gVar).append(": ");
                        StringBuilder sb = new StringBuilder(64);
                        ad.a(obj, sb);
                        sb.append("}");
                        append.append(sb.toString());
                    }
                    this.mCallbacks.onLoadFinished(gVar, obj);
                    this.mDeliveredData = true;
                } finally {
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void destroy() {
            String str;
            while (true) {
                if (LoaderManagerImpl.DEBUG) {
                    new StringBuilder("  Destroying: ").append(this);
                }
                this.mDestroyed = true;
                boolean z = this.mDeliveredData;
                this.mDeliveredData = false;
                if (this.mCallbacks != null && this.mLoader != null && this.mHaveData && z) {
                    if (LoaderManagerImpl.DEBUG) {
                        new StringBuilder("  Reseting: ").append(this);
                    }
                    if (LoaderManagerImpl.this.mActivity != null) {
                        String str2 = LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause;
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
                        str = str2;
                    } else {
                        str = null;
                    }
                    try {
                        this.mCallbacks.onLoaderReset(this.mLoader);
                    } finally {
                        if (LoaderManagerImpl.this.mActivity != null) {
                            LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                        }
                    }
                }
                this.mCallbacks = null;
                this.mData = null;
                this.mHaveData = false;
                if (this.mLoader != null) {
                    if (this.mListenerRegistered) {
                        this.mListenerRegistered = false;
                        this.mLoader.a(this);
                    }
                    g<Object> gVar = this.mLoader;
                    gVar.e = true;
                    gVar.c = false;
                    gVar.d = false;
                    gVar.f = false;
                    gVar.g = false;
                }
                if (this.mPendingLoader != null) {
                    this = this.mPendingLoader;
                } else {
                    return;
                }
            }
        }

        public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            while (true) {
                printWriter.print(str);
                printWriter.print("mId=");
                printWriter.print(this.mId);
                printWriter.print(" mArgs=");
                printWriter.println(this.mArgs);
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.mCallbacks);
                printWriter.print(str);
                printWriter.print("mLoader=");
                printWriter.println(this.mLoader);
                if (this.mLoader != null) {
                    g<Object> gVar = this.mLoader;
                    String str2 = str + "  ";
                    printWriter.print(str2);
                    printWriter.print("mId=");
                    printWriter.print(gVar.a);
                    printWriter.print(" mListener=");
                    printWriter.println(gVar.b);
                    if (gVar.c || gVar.f || gVar.g) {
                        printWriter.print(str2);
                        printWriter.print("mStarted=");
                        printWriter.print(gVar.c);
                        printWriter.print(" mContentChanged=");
                        printWriter.print(gVar.f);
                        printWriter.print(" mProcessingChange=");
                        printWriter.println(gVar.g);
                    }
                    if (gVar.d || gVar.e) {
                        printWriter.print(str2);
                        printWriter.print("mAbandoned=");
                        printWriter.print(gVar.d);
                        printWriter.print(" mReset=");
                        printWriter.println(gVar.e);
                    }
                }
                if (this.mHaveData || this.mDeliveredData) {
                    printWriter.print(str);
                    printWriter.print("mHaveData=");
                    printWriter.print(this.mHaveData);
                    printWriter.print("  mDeliveredData=");
                    printWriter.println(this.mDeliveredData);
                    printWriter.print(str);
                    printWriter.print("mData=");
                    printWriter.println(this.mData);
                }
                printWriter.print(str);
                printWriter.print("mStarted=");
                printWriter.print(this.mStarted);
                printWriter.print(" mReportNextStart=");
                printWriter.print(this.mReportNextStart);
                printWriter.print(" mDestroyed=");
                printWriter.println(this.mDestroyed);
                printWriter.print(str);
                printWriter.print("mRetaining=");
                printWriter.print(this.mRetaining);
                printWriter.print(" mRetainingStarted=");
                printWriter.print(this.mRetainingStarted);
                printWriter.print(" mListenerRegistered=");
                printWriter.println(this.mListenerRegistered);
                if (this.mPendingLoader != null) {
                    printWriter.print(str);
                    printWriter.println("Pending Loader ");
                    printWriter.print(this.mPendingLoader);
                    printWriter.println(":");
                    this = this.mPendingLoader;
                    str = str + "  ";
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void finishRetain() {
            if (this.mRetaining) {
                if (LoaderManagerImpl.DEBUG) {
                    new StringBuilder("  Finished Retaining: ").append(this);
                }
                this.mRetaining = false;
                if (this.mStarted != this.mRetainingStarted && !this.mStarted) {
                    stop();
                }
            }
            if (this.mStarted && this.mHaveData && !this.mReportNextStart) {
                callOnLoadFinished(this.mLoader, this.mData);
            }
        }

        public final void onLoadComplete(g<Object> gVar, Object obj) {
            if (LoaderManagerImpl.DEBUG) {
                new StringBuilder("onLoadComplete: ").append(this);
            }
            if (this.mDestroyed) {
                boolean z = LoaderManagerImpl.DEBUG;
            } else if (LoaderManagerImpl.this.mLoaders.a(this.mId) != this) {
                boolean z2 = LoaderManagerImpl.DEBUG;
            } else {
                LoaderInfo loaderInfo = this.mPendingLoader;
                if (loaderInfo != null) {
                    if (LoaderManagerImpl.DEBUG) {
                        new StringBuilder("  Switching to pending loader: ").append(loaderInfo);
                    }
                    this.mPendingLoader = null;
                    LoaderManagerImpl.this.mLoaders.a(this.mId, null);
                    destroy();
                    LoaderManagerImpl.this.installLoader(loaderInfo);
                    return;
                }
                if (this.mData != obj || !this.mHaveData) {
                    this.mData = obj;
                    this.mHaveData = true;
                    if (this.mStarted) {
                        callOnLoadFinished(gVar, obj);
                    }
                }
                LoaderInfo a = LoaderManagerImpl.this.mInactiveLoaders.a(this.mId);
                if (!(a == null || a == this)) {
                    a.mDeliveredData = false;
                    a.destroy();
                    ak<LoaderInfo> akVar = LoaderManagerImpl.this.mInactiveLoaders;
                    int a2 = ac.a(akVar.c, akVar.e, this.mId);
                    if (a2 >= 0 && akVar.d[a2] != ak.a) {
                        akVar.d[a2] = ak.a;
                        akVar.b = true;
                    }
                }
                if (LoaderManagerImpl.this.mActivity != null && !LoaderManagerImpl.this.hasRunningLoaders()) {
                    LoaderManagerImpl.this.mActivity.mFragments.startPendingDeferredFragments();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void reportStart() {
            if (this.mStarted && this.mReportNextStart) {
                this.mReportNextStart = false;
                if (this.mHaveData) {
                    callOnLoadFinished(this.mLoader, this.mData);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void retain() {
            if (LoaderManagerImpl.DEBUG) {
                new StringBuilder("  Retaining: ").append(this);
            }
            this.mRetaining = true;
            this.mRetainingStarted = this.mStarted;
            this.mStarted = false;
            this.mCallbacks = null;
        }

        /* access modifiers changed from: package-private */
        public final void start() {
            if (this.mRetaining && this.mRetainingStarted) {
                this.mStarted = true;
            } else if (!this.mStarted) {
                this.mStarted = true;
                if (LoaderManagerImpl.DEBUG) {
                    new StringBuilder("  Starting: ").append(this);
                }
                if (this.mLoader == null && this.mCallbacks != null) {
                    this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
                }
                if (this.mLoader == null) {
                    return;
                }
                if (!this.mLoader.getClass().isMemberClass() || Modifier.isStatic(this.mLoader.getClass().getModifiers())) {
                    if (!this.mListenerRegistered) {
                        g<Object> gVar = this.mLoader;
                        int i = this.mId;
                        if (gVar.b != null) {
                            throw new IllegalStateException("There is already a listener registered");
                        }
                        gVar.b = this;
                        gVar.a = i;
                        this.mListenerRegistered = true;
                    }
                    g<Object> gVar2 = this.mLoader;
                    gVar2.c = true;
                    gVar2.e = false;
                    gVar2.d = false;
                    return;
                }
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
            }
        }

        /* access modifiers changed from: package-private */
        public final void stop() {
            if (LoaderManagerImpl.DEBUG) {
                new StringBuilder("  Stopping: ").append(this);
            }
            this.mStarted = false;
            if (!this.mRetaining && this.mLoader != null && this.mListenerRegistered) {
                this.mListenerRegistered = false;
                this.mLoader.a(this);
                this.mLoader.c = false;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            ad.a(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    LoaderManagerImpl(String str, FragmentActivity fragmentActivity, boolean z) {
        this.mWho = str;
        this.mActivity = fragmentActivity;
        this.mStarted = z;
    }

    /* JADX INFO: finally extract failed */
    private LoaderInfo createAndInstallLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        try {
            this.mCreatingLoader = true;
            LoaderInfo createLoader = createLoader(i, bundle, loaderCallbacks);
            installLoader(createLoader);
            this.mCreatingLoader = false;
            return createLoader;
        } catch (Throwable th) {
            this.mCreatingLoader = false;
            throw th;
        }
    }

    private LoaderInfo createLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        LoaderInfo loaderInfo = new LoaderInfo(i, bundle, loaderCallbacks);
        loaderInfo.mLoader = loaderCallbacks.onCreateLoader(i, bundle);
        return loaderInfo;
    }

    public void destroyLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG) {
            new StringBuilder("destroyLoader in ").append(this).append(" of ").append(i);
        }
        int e = this.mLoaders.e(i);
        if (e >= 0) {
            this.mLoaders.b(e);
            this.mLoaders.d(e).destroy();
        }
        int e2 = this.mInactiveLoaders.e(i);
        if (e2 >= 0) {
            this.mInactiveLoaders.b(e2);
            this.mInactiveLoaders.d(e2).destroy();
        }
        if (this.mActivity != null && !hasRunningLoaders()) {
            this.mActivity.mFragments.startPendingDeferredFragments();
        }
    }

    /* access modifiers changed from: package-private */
    public void doDestroy() {
        if (!this.mRetaining) {
            if (DEBUG) {
                new StringBuilder("Destroying Active in ").append(this);
            }
            for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
                this.mLoaders.d(a).destroy();
            }
            this.mLoaders.b();
        }
        if (DEBUG) {
            new StringBuilder("Destroying Inactive in ").append(this);
        }
        for (int a2 = this.mInactiveLoaders.a() - 1; a2 >= 0; a2--) {
            this.mInactiveLoaders.d(a2).destroy();
        }
        this.mInactiveLoaders.b();
    }

    /* access modifiers changed from: package-private */
    public void doReportNextStart() {
        for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
            this.mLoaders.d(a).mReportNextStart = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void doReportStart() {
        for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
            this.mLoaders.d(a).reportStart();
        }
    }

    /* access modifiers changed from: package-private */
    public void doRetain() {
        if (DEBUG) {
            new StringBuilder("Retaining in ").append(this);
        }
        if (!this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doRetain when not started: " + this, runtimeException);
            return;
        }
        this.mRetaining = true;
        this.mStarted = false;
        for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
            this.mLoaders.d(a).retain();
        }
    }

    /* access modifiers changed from: package-private */
    public void doStart() {
        if (DEBUG) {
            new StringBuilder("Starting in ").append(this);
        }
        if (this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStart when already started: " + this, runtimeException);
            return;
        }
        this.mStarted = true;
        for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
            this.mLoaders.d(a).start();
        }
    }

    /* access modifiers changed from: package-private */
    public void doStop() {
        if (DEBUG) {
            new StringBuilder("Stopping in ").append(this);
        }
        if (!this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStop when not started: " + this, runtimeException);
            return;
        }
        for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
            this.mLoaders.d(a).stop();
        }
        this.mStarted = false;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mLoaders.a() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.mLoaders.a(); i++) {
                LoaderInfo d = this.mLoaders.d(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.c(i));
                printWriter.print(": ");
                printWriter.println(d.toString());
                d.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.mInactiveLoaders.a() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.mInactiveLoaders.a(); i2++) {
                LoaderInfo d2 = this.mInactiveLoaders.d(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mInactiveLoaders.c(i2));
                printWriter.print(": ");
                printWriter.println(d2.toString());
                d2.dump(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void finishRetain() {
        if (this.mRetaining) {
            if (DEBUG) {
                new StringBuilder("Finished Retaining in ").append(this);
            }
            this.mRetaining = false;
            for (int a = this.mLoaders.a() - 1; a >= 0; a--) {
                this.mLoaders.d(a).finishRetain();
            }
        }
    }

    public <D> g<D> getLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo a = this.mLoaders.a(i);
        if (a != null) {
            return a.mPendingLoader != null ? a.mPendingLoader.mLoader : a.mLoader;
        }
        return null;
    }

    public boolean hasRunningLoaders() {
        int a = this.mLoaders.a();
        boolean z = false;
        for (int i = 0; i < a; i++) {
            LoaderInfo d = this.mLoaders.d(i);
            z |= d.mStarted && !d.mDeliveredData;
        }
        return z;
    }

    public <D> g<D> initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo a = this.mLoaders.a(i);
        if (DEBUG) {
            new StringBuilder("initLoader in ").append(this).append(": args=").append(bundle);
        }
        if (a == null) {
            a = createAndInstallLoader(i, bundle, loaderCallbacks);
            if (DEBUG) {
                new StringBuilder("  Created new loader ").append(a);
            }
        } else {
            if (DEBUG) {
                new StringBuilder("  Re-using existing loader ").append(a);
            }
            a.mCallbacks = loaderCallbacks;
        }
        if (a.mHaveData && this.mStarted) {
            a.callOnLoadFinished(a.mLoader, a.mData);
        }
        return a.mLoader;
    }

    /* access modifiers changed from: package-private */
    public void installLoader(LoaderInfo loaderInfo) {
        this.mLoaders.a(loaderInfo.mId, loaderInfo);
        if (this.mStarted) {
            loaderInfo.start();
        }
    }

    public <D> g<D> restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo a = this.mLoaders.a(i);
        if (DEBUG) {
            new StringBuilder("restartLoader in ").append(this).append(": args=").append(bundle);
        }
        if (a != null) {
            LoaderInfo a2 = this.mInactiveLoaders.a(i);
            if (a2 != null) {
                if (a.mHaveData) {
                    if (DEBUG) {
                        new StringBuilder("  Removing last inactive loader: ").append(a);
                    }
                    a2.mDeliveredData = false;
                    a2.destroy();
                } else if (!a.mStarted) {
                    this.mLoaders.a(i, null);
                    a.destroy();
                } else {
                    if (a.mPendingLoader != null) {
                        if (DEBUG) {
                            new StringBuilder("  Removing pending loader: ").append(a.mPendingLoader);
                        }
                        a.mPendingLoader.destroy();
                        a.mPendingLoader = null;
                    }
                    a.mPendingLoader = createLoader(i, bundle, loaderCallbacks);
                    return a.mPendingLoader.mLoader;
                }
            } else if (DEBUG) {
                new StringBuilder("  Making last loader inactive: ").append(a);
            }
            a.mLoader.d = true;
            this.mInactiveLoaders.a(i, a);
        }
        return createAndInstallLoader(i, bundle, loaderCallbacks).mLoader;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(NotificationCompat.FLAG_HIGH_PRIORITY);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        ad.a(this.mActivity, sb);
        sb.append("}}");
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public void updateActivity(FragmentActivity fragmentActivity) {
        this.mActivity = fragmentActivity;
    }
}
