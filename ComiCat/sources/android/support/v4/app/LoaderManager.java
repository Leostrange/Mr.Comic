package android.support.v4.app;

import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager {

    public interface LoaderCallbacks<D> {
        g<D> onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(g<D> gVar, D d);

        void onLoaderReset(g<D> gVar);
    }

    public static void enableDebugLogging(boolean z) {
        LoaderManagerImpl.DEBUG = z;
    }

    public abstract void destroyLoader(int i);

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> g<D> getLoader(int i);

    public boolean hasRunningLoaders() {
        return false;
    }

    public abstract <D> g<D> initLoader(int i, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);

    public abstract <D> g<D> restartLoader(int i, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);
}
