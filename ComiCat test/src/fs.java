// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.amazon.identity.auth.device.AuthError;

public abstract class fs
    implements ServiceConnection
{

    private static final String b = fs.getName();
    protected IInterface a;

    public fs()
    {
        a = null;
    }

    private boolean b(IBinder ibinder)
    {
        boolean flag;
        try
        {
            flag = ibinder.getInterfaceDescriptor().equals(a().getName());
        }
        // Misplaced declaration of an exception variable
        catch (IBinder ibinder)
        {
            gz.a(b, (new StringBuilder()).append(ibinder.getMessage()).toString(), ibinder);
            return false;
        }
        return flag;
    }

    public abstract IInterface a(IBinder ibinder);

    public abstract Class a();

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        gz.c(b, "onServiceConnected called");
        if (b(ibinder))
        {
            a = a(ibinder);
            return;
        } else
        {
            new AuthError("Returned service's interface doesn't match authorization service", com.amazon.identity.auth.device.AuthError.b.j);
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        gz.c(b, "onServiceDisconnected called");
        a = null;
    }

}
