// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import ac;
import ad;
import ak;
import android.os.Bundle;
import android.util.Log;
import g;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

// Referenced classes of package android.support.v4.app:
//            LoaderManager, FragmentActivity, FragmentManagerImpl

class LoaderManagerImpl extends LoaderManager
{
    final class LoaderInfo
        implements g.a
    {

        final Bundle mArgs;
        LoaderManager.LoaderCallbacks mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        g mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;
        final LoaderManagerImpl this$0;

        final void callOnLoadFinished(g g1, Object obj)
        {
            if (mCallbacks == null)
            {
                break MISSING_BLOCK_LABEL_148;
            }
            String s;
            StringBuilder stringbuilder;
            StringBuilder stringbuilder1;
            if (mActivity != null)
            {
                s = mActivity.mFragments.mNoTransactionsBecause;
                mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
            } else
            {
                s = null;
            }
            if (LoaderManagerImpl.DEBUG)
            {
                stringbuilder = (new StringBuilder("  onLoadFinished in ")).append(g1).append(": ");
                stringbuilder1 = new StringBuilder(64);
                ad.a(obj, stringbuilder1);
                stringbuilder1.append("}");
                stringbuilder.append(stringbuilder1.toString());
            }
            mCallbacks.onLoadFinished(g1, obj);
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            mDeliveredData = true;
            return;
            g1;
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            throw g1;
        }

        final void destroy()
        {
            LoaderInfo loaderinfo = this;
_L2:
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Destroying: ")).append(loaderinfo);
            }
            loaderinfo.mDestroyed = true;
            boolean flag = loaderinfo.mDeliveredData;
            loaderinfo.mDeliveredData = false;
            if (loaderinfo.mCallbacks == null || loaderinfo.mLoader == null || !loaderinfo.mHaveData || !flag)
            {
                break MISSING_BLOCK_LABEL_160;
            }
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Reseting: ")).append(loaderinfo);
            }
            Object obj;
            Exception exception;
            if (loaderinfo.this$0.mActivity != null)
            {
                obj = loaderinfo.this$0.mActivity.mFragments.mNoTransactionsBecause;
                loaderinfo.this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
            } else
            {
                obj = null;
            }
            loaderinfo.mCallbacks.onLoaderReset(loaderinfo.mLoader);
            if (loaderinfo.this$0.mActivity != null)
            {
                loaderinfo.this$0.mActivity.mFragments.mNoTransactionsBecause = ((String) (obj));
            }
            loaderinfo.mCallbacks = null;
            loaderinfo.mData = null;
            loaderinfo.mHaveData = false;
            if (loaderinfo.mLoader != null)
            {
                if (loaderinfo.mListenerRegistered)
                {
                    loaderinfo.mListenerRegistered = false;
                    loaderinfo.mLoader.a(loaderinfo);
                }
                obj = loaderinfo.mLoader;
                obj.e = true;
                obj.c = false;
                obj.d = false;
                obj.f = false;
                obj.g = false;
            }
            if (loaderinfo.mPendingLoader != null)
            {
                loaderinfo = loaderinfo.mPendingLoader;
            } else
            {
                return;
            }
            if (true) goto _L2; else goto _L1
_L1:
            exception;
            if (loaderinfo.this$0.mActivity != null)
            {
                loaderinfo.this$0.mActivity.mFragments.mNoTransactionsBecause = ((String) (obj));
            }
            throw exception;
        }

        public final void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
        {
            filedescriptor = s;
            s = this;
            do
            {
                printwriter.print(filedescriptor);
                printwriter.print("mId=");
                printwriter.print(((LoaderInfo) (s)).mId);
                printwriter.print(" mArgs=");
                printwriter.println(((LoaderInfo) (s)).mArgs);
                printwriter.print(filedescriptor);
                printwriter.print("mCallbacks=");
                printwriter.println(((LoaderInfo) (s)).mCallbacks);
                printwriter.print(filedescriptor);
                printwriter.print("mLoader=");
                printwriter.println(((LoaderInfo) (s)).mLoader);
                if (((LoaderInfo) (s)).mLoader != null)
                {
                    as = ((LoaderInfo) (s)).mLoader;
                    String s1 = (new StringBuilder()).append(filedescriptor).append("  ").toString();
                    printwriter.print(s1);
                    printwriter.print("mId=");
                    printwriter.print(((g) (as)).a);
                    printwriter.print(" mListener=");
                    printwriter.println(((g) (as)).b);
                    if (((g) (as)).c || ((g) (as)).f || ((g) (as)).g)
                    {
                        printwriter.print(s1);
                        printwriter.print("mStarted=");
                        printwriter.print(((g) (as)).c);
                        printwriter.print(" mContentChanged=");
                        printwriter.print(((g) (as)).f);
                        printwriter.print(" mProcessingChange=");
                        printwriter.println(((g) (as)).g);
                    }
                    if (((g) (as)).d || ((g) (as)).e)
                    {
                        printwriter.print(s1);
                        printwriter.print("mAbandoned=");
                        printwriter.print(((g) (as)).d);
                        printwriter.print(" mReset=");
                        printwriter.println(((g) (as)).e);
                    }
                }
                if (((LoaderInfo) (s)).mHaveData || ((LoaderInfo) (s)).mDeliveredData)
                {
                    printwriter.print(filedescriptor);
                    printwriter.print("mHaveData=");
                    printwriter.print(((LoaderInfo) (s)).mHaveData);
                    printwriter.print("  mDeliveredData=");
                    printwriter.println(((LoaderInfo) (s)).mDeliveredData);
                    printwriter.print(filedescriptor);
                    printwriter.print("mData=");
                    printwriter.println(((LoaderInfo) (s)).mData);
                }
                printwriter.print(filedescriptor);
                printwriter.print("mStarted=");
                printwriter.print(((LoaderInfo) (s)).mStarted);
                printwriter.print(" mReportNextStart=");
                printwriter.print(((LoaderInfo) (s)).mReportNextStart);
                printwriter.print(" mDestroyed=");
                printwriter.println(((LoaderInfo) (s)).mDestroyed);
                printwriter.print(filedescriptor);
                printwriter.print("mRetaining=");
                printwriter.print(((LoaderInfo) (s)).mRetaining);
                printwriter.print(" mRetainingStarted=");
                printwriter.print(((LoaderInfo) (s)).mRetainingStarted);
                printwriter.print(" mListenerRegistered=");
                printwriter.println(((LoaderInfo) (s)).mListenerRegistered);
                if (((LoaderInfo) (s)).mPendingLoader != null)
                {
                    printwriter.print(filedescriptor);
                    printwriter.println("Pending Loader ");
                    printwriter.print(((LoaderInfo) (s)).mPendingLoader);
                    printwriter.println(":");
                    s = ((LoaderInfo) (s)).mPendingLoader;
                    filedescriptor = (new StringBuilder()).append(filedescriptor).append("  ").toString();
                } else
                {
                    return;
                }
            } while (true);
        }

        final void finishRetain()
        {
            if (mRetaining)
            {
                if (LoaderManagerImpl.DEBUG)
                {
                    (new StringBuilder("  Finished Retaining: ")).append(this);
                }
                mRetaining = false;
                if (mStarted != mRetainingStarted && !mStarted)
                {
                    stop();
                }
            }
            if (mStarted && mHaveData && !mReportNextStart)
            {
                callOnLoadFinished(mLoader, mData);
            }
        }

        public final void onLoadComplete(g g1, Object obj)
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("onLoadComplete: ")).append(this);
            }
            boolean flag;
            if (mDestroyed)
            {
                flag = LoaderManagerImpl.DEBUG;
            } else
            {
                if (mLoaders.a(mId) != this)
                {
                    boolean flag1 = LoaderManagerImpl.DEBUG;
                    return;
                }
                LoaderInfo loaderinfo = mPendingLoader;
                if (loaderinfo != null)
                {
                    if (LoaderManagerImpl.DEBUG)
                    {
                        (new StringBuilder("  Switching to pending loader: ")).append(loaderinfo);
                    }
                    mPendingLoader = null;
                    mLoaders.a(mId, null);
                    destroy();
                    installLoader(loaderinfo);
                    return;
                }
                if (mData != obj || !mHaveData)
                {
                    mData = obj;
                    mHaveData = true;
                    if (mStarted)
                    {
                        callOnLoadFinished(g1, obj);
                    }
                }
                g1 = (LoaderInfo)mInactiveLoaders.a(mId);
                if (g1 != null && g1 != this)
                {
                    g1.mDeliveredData = false;
                    g1.destroy();
                    g1 = mInactiveLoaders;
                    int i = mId;
                    i = ac.a(((ak) (g1)).c, ((ak) (g1)).e, i);
                    if (i >= 0 && ((ak) (g1)).d[i] != ak.a)
                    {
                        ((ak) (g1)).d[i] = ak.a;
                        g1.b = true;
                    }
                }
                if (mActivity != null && !hasRunningLoaders())
                {
                    mActivity.mFragments.startPendingDeferredFragments();
                    return;
                }
            }
        }

        final void reportStart()
        {
            if (mStarted && mReportNextStart)
            {
                mReportNextStart = false;
                if (mHaveData)
                {
                    callOnLoadFinished(mLoader, mData);
                }
            }
        }

        final void retain()
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Retaining: ")).append(this);
            }
            mRetaining = true;
            mRetainingStarted = mStarted;
            mStarted = false;
            mCallbacks = null;
        }

        final void start()
        {
            if (mRetaining && mRetainingStarted)
            {
                mStarted = true;
            } else
            if (!mStarted)
            {
                mStarted = true;
                if (LoaderManagerImpl.DEBUG)
                {
                    (new StringBuilder("  Starting: ")).append(this);
                }
                if (mLoader == null && mCallbacks != null)
                {
                    mLoader = mCallbacks.onCreateLoader(mId, mArgs);
                }
                if (mLoader != null)
                {
                    if (mLoader.getClass().isMemberClass() && !Modifier.isStatic(mLoader.getClass().getModifiers()))
                    {
                        throw new IllegalArgumentException((new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ")).append(mLoader).toString());
                    }
                    if (!mListenerRegistered)
                    {
                        g g1 = mLoader;
                        int i = mId;
                        if (g1.b != null)
                        {
                            throw new IllegalStateException("There is already a listener registered");
                        }
                        g1.b = this;
                        g1.a = i;
                        mListenerRegistered = true;
                    }
                    g g2 = mLoader;
                    g2.c = true;
                    g2.e = false;
                    g2.d = false;
                    return;
                }
            }
        }

        final void stop()
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Stopping: ")).append(this);
            }
            mStarted = false;
            if (!mRetaining && mLoader != null && mListenerRegistered)
            {
                mListenerRegistered = false;
                mLoader.a(this);
                mLoader.c = false;
            }
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append("LoaderInfo{");
            stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringbuilder.append(" #");
            stringbuilder.append(mId);
            stringbuilder.append(" : ");
            ad.a(mLoader, stringbuilder);
            stringbuilder.append("}}");
            return stringbuilder.toString();
        }

        public LoaderInfo(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
        {
            this$0 = LoaderManagerImpl.this;
            super();
            mId = i;
            mArgs = bundle;
            mCallbacks = loadercallbacks;
        }
    }


    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final ak mInactiveLoaders = new ak();
    final ak mLoaders = new ak();
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    LoaderManagerImpl(String s, FragmentActivity fragmentactivity, boolean flag)
    {
        mWho = s;
        mActivity = fragmentactivity;
        mStarted = flag;
    }

    private LoaderInfo createAndInstallLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        mCreatingLoader = true;
        bundle = createLoader(i, bundle, loadercallbacks);
        installLoader(bundle);
        mCreatingLoader = false;
        return bundle;
        bundle;
        mCreatingLoader = false;
        throw bundle;
    }

    private LoaderInfo createLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        LoaderInfo loaderinfo = new LoaderInfo(i, bundle, loadercallbacks);
        loaderinfo.mLoader = loadercallbacks.onCreateLoader(i, bundle);
        return loaderinfo;
    }

    public void destroyLoader(int i)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG)
        {
            (new StringBuilder("destroyLoader in ")).append(this).append(" of ").append(i);
        }
        int j = mLoaders.e(i);
        if (j >= 0)
        {
            LoaderInfo loaderinfo = (LoaderInfo)mLoaders.d(j);
            mLoaders.b(j);
            loaderinfo.destroy();
        }
        i = mInactiveLoaders.e(i);
        if (i >= 0)
        {
            LoaderInfo loaderinfo1 = (LoaderInfo)mInactiveLoaders.d(i);
            mInactiveLoaders.b(i);
            loaderinfo1.destroy();
        }
        if (mActivity != null && !hasRunningLoaders())
        {
            mActivity.mFragments.startPendingDeferredFragments();
        }
    }

    void doDestroy()
    {
        if (!mRetaining)
        {
            if (DEBUG)
            {
                (new StringBuilder("Destroying Active in ")).append(this);
            }
            for (int i = mLoaders.a() - 1; i >= 0; i--)
            {
                ((LoaderInfo)mLoaders.d(i)).destroy();
            }

            mLoaders.b();
        }
        if (DEBUG)
        {
            (new StringBuilder("Destroying Inactive in ")).append(this);
        }
        for (int j = mInactiveLoaders.a() - 1; j >= 0; j--)
        {
            ((LoaderInfo)mInactiveLoaders.d(j)).destroy();
        }

        mInactiveLoaders.b();
    }

    void doReportNextStart()
    {
        for (int i = mLoaders.a() - 1; i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.d(i)).mReportNextStart = true;
        }

    }

    void doReportStart()
    {
        for (int i = mLoaders.a() - 1; i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.d(i)).reportStart();
        }

    }

    void doRetain()
    {
        if (DEBUG)
        {
            (new StringBuilder("Retaining in ")).append(this);
        }
        if (!mStarted)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doRetain when not started: ")).append(this).toString(), runtimeexception);
        } else
        {
            mRetaining = true;
            mStarted = false;
            int i = mLoaders.a() - 1;
            while (i >= 0) 
            {
                ((LoaderInfo)mLoaders.d(i)).retain();
                i--;
            }
        }
    }

    void doStart()
    {
        if (DEBUG)
        {
            (new StringBuilder("Starting in ")).append(this);
        }
        if (mStarted)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doStart when already started: ")).append(this).toString(), runtimeexception);
        } else
        {
            mStarted = true;
            int i = mLoaders.a() - 1;
            while (i >= 0) 
            {
                ((LoaderInfo)mLoaders.d(i)).start();
                i--;
            }
        }
    }

    void doStop()
    {
        if (DEBUG)
        {
            (new StringBuilder("Stopping in ")).append(this);
        }
        if (!mStarted)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doStop when not started: ")).append(this).toString(), runtimeexception);
            return;
        }
        for (int i = mLoaders.a() - 1; i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.d(i)).stop();
        }

        mStarted = false;
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        boolean flag = false;
        if (mLoaders.a() > 0)
        {
            printwriter.print(s);
            printwriter.println("Active Loaders:");
            String s1 = (new StringBuilder()).append(s).append("    ").toString();
            for (int i = 0; i < mLoaders.a(); i++)
            {
                LoaderInfo loaderinfo = (LoaderInfo)mLoaders.d(i);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(mLoaders.c(i));
                printwriter.print(": ");
                printwriter.println(loaderinfo.toString());
                loaderinfo.dump(s1, filedescriptor, printwriter, as);
            }

        }
        if (mInactiveLoaders.a() > 0)
        {
            printwriter.print(s);
            printwriter.println("Inactive Loaders:");
            String s2 = (new StringBuilder()).append(s).append("    ").toString();
            for (int j = ((flag) ? 1 : 0); j < mInactiveLoaders.a(); j++)
            {
                LoaderInfo loaderinfo1 = (LoaderInfo)mInactiveLoaders.d(j);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(mInactiveLoaders.c(j));
                printwriter.print(": ");
                printwriter.println(loaderinfo1.toString());
                loaderinfo1.dump(s2, filedescriptor, printwriter, as);
            }

        }
    }

    void finishRetain()
    {
        if (mRetaining)
        {
            if (DEBUG)
            {
                (new StringBuilder("Finished Retaining in ")).append(this);
            }
            mRetaining = false;
            for (int i = mLoaders.a() - 1; i >= 0; i--)
            {
                ((LoaderInfo)mLoaders.d(i)).finishRetain();
            }

        }
    }

    public g getLoader(int i)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderinfo = (LoaderInfo)mLoaders.a(i);
        if (loaderinfo != null)
        {
            if (loaderinfo.mPendingLoader != null)
            {
                return loaderinfo.mPendingLoader.mLoader;
            } else
            {
                return loaderinfo.mLoader;
            }
        } else
        {
            return null;
        }
    }

    public boolean hasRunningLoaders()
    {
        int j = mLoaders.a();
        int i = 0;
        boolean flag1 = false;
        while (i < j) 
        {
            LoaderInfo loaderinfo = (LoaderInfo)mLoaders.d(i);
            boolean flag;
            if (loaderinfo.mStarted && !loaderinfo.mDeliveredData)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 |= flag;
            i++;
        }
        return flag1;
    }

    public g initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderinfo = (LoaderInfo)mLoaders.a(i);
        if (DEBUG)
        {
            (new StringBuilder("initLoader in ")).append(this).append(": args=").append(bundle);
        }
        if (loaderinfo == null)
        {
            loadercallbacks = createAndInstallLoader(i, bundle, loadercallbacks);
            bundle = loadercallbacks;
            if (DEBUG)
            {
                (new StringBuilder("  Created new loader ")).append(loadercallbacks);
                bundle = loadercallbacks;
            }
        } else
        {
            if (DEBUG)
            {
                (new StringBuilder("  Re-using existing loader ")).append(loaderinfo);
            }
            loaderinfo.mCallbacks = loadercallbacks;
            bundle = loaderinfo;
        }
        if (((LoaderInfo) (bundle)).mHaveData && mStarted)
        {
            bundle.callOnLoadFinished(((LoaderInfo) (bundle)).mLoader, ((LoaderInfo) (bundle)).mData);
        }
        return ((LoaderInfo) (bundle)).mLoader;
    }

    void installLoader(LoaderInfo loaderinfo)
    {
        mLoaders.a(loaderinfo.mId, loaderinfo);
        if (mStarted)
        {
            loaderinfo.start();
        }
    }

    public g restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        LoaderInfo loaderinfo;
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        loaderinfo = (LoaderInfo)mLoaders.a(i);
        if (DEBUG)
        {
            (new StringBuilder("restartLoader in ")).append(this).append(": args=").append(bundle);
        }
        if (loaderinfo == null) goto _L2; else goto _L1
_L1:
        LoaderInfo loaderinfo1 = (LoaderInfo)mInactiveLoaders.a(i);
        if (loaderinfo1 == null) goto _L4; else goto _L3
_L3:
        if (!loaderinfo.mHaveData) goto _L6; else goto _L5
_L5:
        if (DEBUG)
        {
            (new StringBuilder("  Removing last inactive loader: ")).append(loaderinfo);
        }
        loaderinfo1.mDeliveredData = false;
        loaderinfo1.destroy();
_L9:
        loaderinfo.mLoader.d = true;
        mInactiveLoaders.a(i, loaderinfo);
_L2:
        return createAndInstallLoader(i, bundle, loadercallbacks).mLoader;
_L6:
        if (loaderinfo.mStarted)
        {
            break; /* Loop/switch isn't completed */
        }
        mLoaders.a(i, null);
        loaderinfo.destroy();
        if (true) goto _L2; else goto _L7
_L7:
        if (loaderinfo.mPendingLoader != null)
        {
            if (DEBUG)
            {
                (new StringBuilder("  Removing pending loader: ")).append(loaderinfo.mPendingLoader);
            }
            loaderinfo.mPendingLoader.destroy();
            loaderinfo.mPendingLoader = null;
        }
        loaderinfo.mPendingLoader = createLoader(i, bundle, loadercallbacks);
        return loaderinfo.mPendingLoader.mLoader;
_L4:
        if (DEBUG)
        {
            (new StringBuilder("  Making last loader inactive: ")).append(loaderinfo);
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        ad.a(mActivity, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    void updateActivity(FragmentActivity fragmentactivity)
    {
        mActivity = fragmentactivity;
    }

    static 
    {
        DEBUG = false;
    }
}
