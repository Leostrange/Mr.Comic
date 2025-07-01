// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface fn
    extends IInterface
{
    public static abstract class a extends Binder
        implements fn
    {

        public static fn a(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            if (iinterface != null && (iinterface instanceof fn))
            {
                return (fn)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        {
            Object obj = null;
            Object obj1 = null;
            Bundle bundle = null;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                if (parcel.readInt() != 0)
                {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel = a(bundle, parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                if (parcel != null)
                {
                    parcel1.writeInt(1);
                    parcel.writeToParcel(parcel1, 1);
                } else
                {
                    parcel1.writeInt(0);
                }
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                Bundle bundle1 = obj;
                if (parcel.readInt() != 0)
                {
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel = b(bundle1, parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                if (parcel != null)
                {
                    parcel1.writeInt(1);
                    parcel.writeToParcel(parcel1, 1);
                } else
                {
                    parcel1.writeInt(0);
                }
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                Bundle bundle2 = obj1;
                if (parcel.readInt() != 0)
                {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                parcel = a(bundle2, parcel.readString());
                parcel1.writeNoException();
                if (parcel != null)
                {
                    parcel1.writeInt(1);
                    parcel.writeToParcel(parcel1, 1);
                } else
                {
                    parcel1.writeInt(0);
                }
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                parcel = a();
                parcel1.writeNoException();
                break;
            }
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;
        }
    }

    static final class a.a
        implements fn
    {

        private IBinder a;

        public final Bundle a()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            a.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            bundle = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public final Bundle a(Bundle bundle, String s)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            parcel.writeString(s);
            a.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_108;
            }
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            parcel.writeInt(0);
              goto _L3
            bundle;
            parcel1.recycle();
            parcel.recycle();
            throw bundle;
            bundle = null;
              goto _L4
        }

        public final Bundle a(Bundle bundle, String s, String as[])
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            parcel.writeString(s);
            parcel.writeStringArray(as);
            a.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_123;
            }
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            parcel.writeInt(0);
              goto _L3
            bundle;
            parcel1.recycle();
            parcel.recycle();
            throw bundle;
            bundle = null;
              goto _L4
        }

        public final IBinder asBinder()
        {
            return a;
        }

        public final Bundle b(Bundle bundle, String s, String as[])
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            parcel.writeString(s);
            parcel.writeStringArray(as);
            a.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_123;
            }
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            parcel.writeInt(0);
              goto _L3
            bundle;
            parcel1.recycle();
            parcel.recycle();
            throw bundle;
            bundle = null;
              goto _L4
        }

        a.a(IBinder ibinder)
        {
            a = ibinder;
        }
    }


    public abstract Bundle a();

    public abstract Bundle a(Bundle bundle, String s);

    public abstract Bundle a(Bundle bundle, String s, String as[]);

    public abstract Bundle b(Bundle bundle, String s, String as[]);
}
