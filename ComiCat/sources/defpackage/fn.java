package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: fn  reason: default package */
/* compiled from: AmazonAuthorizationServiceInterface */
public interface fn extends IInterface {

    /* renamed from: fn$a */
    /* compiled from: AmazonAuthorizationServiceInterface */
    public static abstract class a extends Binder implements fn {

        /* renamed from: fn$a$a  reason: collision with other inner class name */
        /* compiled from: AmazonAuthorizationServiceInterface */
        static class C0003a implements fn {
            private IBinder a;

            C0003a(IBinder iBinder) {
                this.a = iBinder;
            }

            public final Bundle a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    this.a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final Bundle a(Bundle bundle, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final Bundle a(Bundle bundle, String str, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final IBinder asBinder() {
                return this.a;
            }

            public final Bundle b(Bundle bundle, String str, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static fn a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof fn)) ? new C0003a(iBinder) : (fn) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle a = a(bundle, parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    if (a != null) {
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle b = b(bundle, parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    if (b != null) {
                        parcel2.writeInt(1);
                        b.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle a2 = a(bundle, parcel.readString());
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    Bundle a3 = a();
                    parcel2.writeNoException();
                    if (a3 != null) {
                        parcel2.writeInt(1);
                        a3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle a();

    Bundle a(Bundle bundle, String str);

    Bundle a(Bundle bundle, String str, String[] strArr);

    Bundle b(Bundle bundle, String str, String[] strArr);
}
