.class Landroidx/core/location/LocationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 808
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    return-void

    .line 815
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 817
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 818
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 819
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 820
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 821
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 822
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 823
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 824
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 825
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 826
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 827
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 828
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    .line 829
    .local v19, "hasVerticalAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 830
    .local v15, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v21

    .line 831
    .local v21, "hasSpeedAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "verticalAccuracy":F
    .local v22, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 832
    .local v15, "speedAccuracy":F
    move/from16 v23, v15

    .end local v15    # "speedAccuracy":F
    .local v23, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 834
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 835
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 837
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 838
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 839
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 840
    if-eqz v10, :cond_1

    .line 841
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 843
    :cond_1
    if-eqz v13, :cond_2

    .line 844
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 846
    :cond_2
    if-eqz v16, :cond_3

    .line 847
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 846
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 849
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 850
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 849
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 852
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 853
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_2

    .line 852
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "verticalAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 855
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 856
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 855
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v23    # "speedAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 858
    .end local v23    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 859
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 861
    :cond_7
    return-void
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 751
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    return-void

    .line 758
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 760
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 761
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 762
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 763
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 764
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 765
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 766
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 767
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 768
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 769
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 770
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 771
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    .line 772
    .local v19, "hasVerticalAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 773
    .local v15, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    .line 774
    .local v21, "hasBearingAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "verticalAccuracy":F
    .local v22, "verticalAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    .line 775
    .local v15, "bearingAccuracy":F
    move/from16 v23, v15

    .end local v15    # "bearingAccuracy":F
    .local v23, "bearingAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 777
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 778
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 780
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 781
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 782
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 783
    if-eqz v10, :cond_1

    .line 784
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 786
    :cond_1
    if-eqz v13, :cond_2

    .line 787
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 789
    :cond_2
    if-eqz v16, :cond_3

    .line 790
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 789
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 792
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 793
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 792
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 795
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 796
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_2

    .line 795
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "verticalAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 798
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 799
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 798
    .end local v22    # "verticalAccuracy":F
    .local v1, "verticalAccuracy":F
    .restart local v23    # "bearingAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 801
    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "verticalAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 802
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 804
    :cond_7
    return-void
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 25
    .param p0, "location"    # Landroid/location/Location;

    .line 694
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    return-void

    .line 701
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 703
    .local v2, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 704
    .local v4, "elapsedRealtimeNs":J
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 705
    .local v6, "latitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 706
    .local v8, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 707
    .local v10, "hasAltitude":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 708
    .local v11, "altitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 709
    .local v13, "hasSpeed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 710
    .local v14, "speed":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    .line 711
    .local v15, "hasBearing":Z
    move/from16 v16, v15

    .end local v15    # "hasBearing":Z
    .local v16, "hasBearing":Z
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v15

    .line 712
    .local v15, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 713
    .local v17, "hasAccuracy":Z
    move/from16 v18, v15

    .end local v15    # "bearing":F
    .local v18, "bearing":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 714
    .local v15, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v19

    .line 715
    .local v19, "hasSpeedAccuracy":Z
    move/from16 v20, v15

    .end local v15    # "accuracy":F
    .local v20, "accuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 716
    .local v15, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    .line 717
    .local v21, "hasBearingAccuracy":Z
    move/from16 v22, v15

    .end local v15    # "speedAccuracy":F
    .local v22, "speedAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    .line 718
    .local v15, "bearingAccuracy":F
    move/from16 v23, v15

    .end local v15    # "bearingAccuracy":F
    .local v23, "bearingAccuracy":F
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 720
    .local v15, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->reset()V

    .line 721
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 723
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 724
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 725
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 726
    if-eqz v10, :cond_1

    .line 727
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    .line 729
    :cond_1
    if-eqz v13, :cond_2

    .line 730
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    .line 732
    :cond_2
    if-eqz v16, :cond_3

    .line 733
    move-object/from16 v24, v1

    move/from16 v1, v18

    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .local v24, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_0

    .line 732
    .end local v24    # "provider":Ljava/lang/String;
    .local v1, "provider":Ljava/lang/String;
    .restart local v18    # "bearing":F
    :cond_3
    move-object/from16 v24, v1

    move/from16 v1, v18

    .line 735
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v24    # "provider":Ljava/lang/String;
    :goto_0
    if-eqz v17, :cond_4

    .line 736
    move/from16 v18, v1

    move/from16 v1, v20

    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 735
    .end local v18    # "bearing":F
    .local v1, "bearing":F
    .restart local v20    # "accuracy":F
    :cond_4
    move/from16 v18, v1

    move/from16 v1, v20

    .line 738
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v18    # "bearing":F
    :goto_1
    if-eqz v19, :cond_5

    .line 739
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v20    # "accuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    goto :goto_2

    .line 738
    .end local v20    # "accuracy":F
    .local v1, "accuracy":F
    .restart local v22    # "speedAccuracy":F
    :cond_5
    move/from16 v20, v1

    move/from16 v1, v22

    .line 741
    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v20    # "accuracy":F
    :goto_2
    if-eqz v21, :cond_6

    .line 742
    move/from16 v22, v1

    move/from16 v1, v23

    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "speedAccuracy":F
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_3

    .line 741
    .end local v22    # "speedAccuracy":F
    .local v1, "speedAccuracy":F
    .restart local v23    # "bearingAccuracy":F
    :cond_6
    move/from16 v22, v1

    move/from16 v1, v23

    .line 744
    .end local v23    # "bearingAccuracy":F
    .local v1, "bearingAccuracy":F
    .restart local v22    # "speedAccuracy":F
    :goto_3
    if-eqz v15, :cond_7

    .line 745
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 747
    :cond_7
    return-void
.end method
