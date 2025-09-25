.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImpl.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAllWork:I = 0x7

.field static final TRANSACTION_cancelAllWorkByTag:I = 0x5

.field static final TRANSACTION_cancelUniqueWork:I = 0x6

.field static final TRANSACTION_cancelWorkById:I = 0x4

.field static final TRANSACTION_enqueueContinuation:I = 0x3

.field static final TRANSACTION_enqueueWorkRequests:I = 0x1

.field static final TRANSACTION_queryWorkInfo:I = 0x8

.field static final TRANSACTION_setForegroundAsync:I = 0xa

.field static final TRANSACTION_setProgress:I = 0x9

.field static final TRANSACTION_updateUniquePeriodicWorkRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImpl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Landroidx/work/multiprocess/IWorkManagerImpl;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 179
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->setForegroundAsync([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 181
    goto/16 :goto_0

    .line 168
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 170
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 171
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 172
    goto/16 :goto_0

    .line 159
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 163
    goto :goto_0

    .line 152
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v2

    .line 153
    .local v2, "_arg0":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 154
    goto :goto_0

    .line 143
    .end local v2    # "_arg0":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 146
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 147
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 137
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 128
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 129
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 118
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 119
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 120
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 109
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v4

    .line 110
    .local v4, "_arg2":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 111
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 98
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v2, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 100
    nop

    .line 188
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
