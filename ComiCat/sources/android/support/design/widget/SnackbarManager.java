package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class SnackbarManager {
    private static final int LONG_DURATION_MS = 2750;
    private static final int MSG_TIMEOUT = 0;
    private static final int SHORT_DURATION_MS = 1500;
    private static SnackbarManager sSnackbarManager;
    private SnackbarRecord mCurrentSnackbar;
    private final Handler mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    SnackbarManager.this.handleTimeout((SnackbarRecord) message.obj);
                    return true;
                default:
                    return false;
            }
        }
    });
    private final Object mLock = new Object();
    private SnackbarRecord mNextSnackbar;

    interface Callback {
        void dismiss();

        void show();
    }

    static class SnackbarRecord {
        /* access modifiers changed from: private */
        public final WeakReference<Callback> callback;
        /* access modifiers changed from: private */
        public int duration;

        SnackbarRecord(int i, Callback callback2) {
            this.callback = new WeakReference<>(callback2);
            this.duration = i;
        }

        /* access modifiers changed from: package-private */
        public boolean isSnackbar(Callback callback2) {
            return callback2 != null && this.callback.get() == callback2;
        }
    }

    private SnackbarManager() {
    }

    private boolean cancelSnackbarLocked(SnackbarRecord snackbarRecord) {
        Callback callback = (Callback) snackbarRecord.callback.get();
        if (callback == null) {
            return false;
        }
        callback.dismiss();
        return true;
    }

    static SnackbarManager getInstance() {
        if (sSnackbarManager == null) {
            sSnackbarManager = new SnackbarManager();
        }
        return sSnackbarManager;
    }

    /* access modifiers changed from: private */
    public void handleTimeout(SnackbarRecord snackbarRecord) {
        synchronized (this.mLock) {
            if (this.mCurrentSnackbar == snackbarRecord || this.mNextSnackbar == snackbarRecord) {
                cancelSnackbarLocked(snackbarRecord);
            }
        }
    }

    private boolean isCurrentSnackbar(Callback callback) {
        return this.mCurrentSnackbar != null && this.mCurrentSnackbar.isSnackbar(callback);
    }

    private boolean isNextSnackbar(Callback callback) {
        return this.mNextSnackbar != null && this.mNextSnackbar.isSnackbar(callback);
    }

    private void scheduleTimeoutLocked(SnackbarRecord snackbarRecord) {
        if (snackbarRecord.duration != -2) {
            int i = LONG_DURATION_MS;
            if (snackbarRecord.duration > 0) {
                i = snackbarRecord.duration;
            } else if (snackbarRecord.duration == -1) {
                i = SHORT_DURATION_MS;
            }
            this.mHandler.removeCallbacksAndMessages(snackbarRecord);
            this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 0, snackbarRecord), (long) i);
        }
    }

    private void showNextSnackbarLocked() {
        if (this.mNextSnackbar != null) {
            this.mCurrentSnackbar = this.mNextSnackbar;
            this.mNextSnackbar = null;
            Callback callback = (Callback) this.mCurrentSnackbar.callback.get();
            if (callback != null) {
                callback.show();
            } else {
                this.mCurrentSnackbar = null;
            }
        }
    }

    public void cancelTimeout(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
            }
        }
    }

    public void dismiss(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                cancelSnackbarLocked(this.mCurrentSnackbar);
            }
            if (isNextSnackbar(callback)) {
                cancelSnackbarLocked(this.mNextSnackbar);
            }
        }
    }

    public void onDismissed(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                this.mCurrentSnackbar = null;
                if (this.mNextSnackbar != null) {
                    showNextSnackbarLocked();
                }
            }
        }
    }

    public void onShown(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    public void restoreTimeout(Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    public void show(int i, Callback callback) {
        synchronized (this.mLock) {
            if (isCurrentSnackbar(callback)) {
                int unused = this.mCurrentSnackbar.duration = i;
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
                scheduleTimeoutLocked(this.mCurrentSnackbar);
                return;
            }
            if (isNextSnackbar(callback)) {
                int unused2 = this.mNextSnackbar.duration = i;
            } else {
                this.mNextSnackbar = new SnackbarRecord(i, callback);
            }
            if (this.mCurrentSnackbar == null || !cancelSnackbarLocked(this.mCurrentSnackbar)) {
                this.mCurrentSnackbar = null;
                showNextSnackbarLocked();
            }
        }
    }
}
