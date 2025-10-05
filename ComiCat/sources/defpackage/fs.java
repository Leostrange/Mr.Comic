package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.amazon.identity.auth.device.AuthError;

/* renamed from: fs  reason: default package */
/* compiled from: MAPServiceConnection */
public abstract class fs<T> implements ServiceConnection {
    private static final String b = fs.class.getName();
    protected IInterface a = null;

    private boolean b(IBinder iBinder) {
        try {
            return iBinder.getInterfaceDescriptor().equals(a().getName());
        } catch (Exception e) {
            gz.a(b, e.getMessage(), (Throwable) e);
            return false;
        }
    }

    public abstract IInterface a(IBinder iBinder);

    public abstract Class<T> a();

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        gz.c(b, "onServiceConnected called");
        if (b(iBinder)) {
            this.a = a(iBinder);
        } else {
            new AuthError("Returned service's interface doesn't match authorization service", AuthError.b.ERROR_UNKNOWN);
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        gz.c(b, "onServiceDisconnected called");
        this.a = null;
    }
}
