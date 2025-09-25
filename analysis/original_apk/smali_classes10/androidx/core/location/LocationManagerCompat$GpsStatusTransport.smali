.class Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 970
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    .line 971
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 972
    return-void
.end method


# virtual methods
.method synthetic lambda$onGpsStatusChanged$0$androidx-core-location-LocationManagerCompat$GpsStatusTransport(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 996
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    .line 997
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    .line 1000
    return-void
.end method

.method synthetic lambda$onGpsStatusChanged$1$androidx-core-location-LocationManagerCompat$GpsStatusTransport(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1004
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    .line 1008
    return-void
.end method

.method synthetic lambda$onGpsStatusChanged$2$androidx-core-location-LocationManagerCompat$GpsStatusTransport(Ljava/util/concurrent/Executor;I)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "ttff"    # I

    .line 1015
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    .line 1016
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, p2}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    .line 1019
    return-void
.end method

.method synthetic lambda$onGpsStatusChanged$3$androidx-core-location-LocationManagerCompat$GpsStatusTransport(Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "gnssStatus"    # Landroidx/core/location/GnssStatusCompat;

    .line 1027
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    .line 1028
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, p2}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 1031
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 4
    .param p1, "event"    # I

    .line 986
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 987
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 988
    return-void

    .line 993
    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1023
    :pswitch_0
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 1024
    .local v1, "gpsStatus":Landroid/location/GpsStatus;
    if-eqz v1, :cond_1

    .line 1025
    invoke-static {v1}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GpsStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v2

    .line 1026
    .local v2, "gnssStatus":Landroidx/core/location/GnssStatusCompat;
    new-instance v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda3;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1011
    .end local v1    # "gpsStatus":Landroid/location/GpsStatus;
    .end local v2    # "gnssStatus":Landroidx/core/location/GnssStatusCompat;
    :pswitch_1
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 1012
    .restart local v1    # "gpsStatus":Landroid/location/GpsStatus;
    if-eqz v1, :cond_1

    .line 1013
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    .line 1014
    .local v2, "ttff":I
    new-instance v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1020
    .end local v2    # "ttff":I
    goto :goto_0

    .line 1003
    .end local v1    # "gpsStatus":Landroid/location/GpsStatus;
    :pswitch_2
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda1;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1009
    goto :goto_0

    .line 995
    :pswitch_3
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1001
    nop

    .line 1035
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 975
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 976
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 977
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 981
    return-void
.end method
