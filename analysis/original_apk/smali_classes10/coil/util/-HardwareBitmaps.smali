.class public final Lcoil/util/-HardwareBitmaps;
.super Ljava/lang/Object;
.source "HardwareBitmaps.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "HardwareBitmapService",
        "Lcoil/util/HardwareBitmapService;",
        "logger",
        "Lcoil/util/Logger;",
        "IS_DEVICE_BLOCKED",
        "",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final IS_DEVICE_BLOCKED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 57

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 213
    goto/16 :goto_2

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    .local v0, "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$2":I
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v1, v2

    .line 146
    .local v1, "device":Ljava/lang/String;
    const-string/jumbo v2, "mcv1s"

    .line 147
    const-string/jumbo v3, "mcv3"

    .line 146
    nop

    .line 148
    const-string/jumbo v4, "mcv5a"

    .line 146
    nop

    .line 149
    const-string/jumbo v5, "mcv7a"

    .line 146
    nop

    .line 151
    const-string v6, "A30ATMO"

    .line 146
    nop

    .line 152
    const-string v7, "A70AXLTMO"

    .line 146
    nop

    .line 154
    const-string v8, "A3A_8_4G_TMO"

    .line 146
    nop

    .line 155
    const-string v9, "Edison_CKT"

    .line 146
    nop

    .line 156
    const-string v10, "EDISON_TF"

    .line 146
    nop

    .line 157
    const-string v11, "FERMI_TF"

    .line 146
    nop

    .line 158
    const-string v12, "U50A_ATT"

    .line 146
    nop

    .line 159
    const-string v13, "U50A_PLUS_ATT"

    .line 146
    nop

    .line 160
    const-string v14, "U50A_PLUS_TF"

    .line 146
    nop

    .line 161
    const-string v15, "U50APLUSTMO"

    .line 146
    nop

    .line 162
    const-string v16, "U5A_PLUS_4G"

    .line 146
    nop

    .line 164
    const-string v17, "RCT6513W87DK5e"

    .line 146
    nop

    .line 165
    const-string v18, "RCT6873W42BMF9A"

    .line 146
    nop

    .line 166
    const-string v19, "RCT6A03W13"

    .line 146
    nop

    .line 167
    const-string v20, "RCT6B03W12"

    .line 146
    nop

    .line 168
    const-string v21, "RCT6B03W13"

    .line 146
    nop

    .line 169
    const-string v22, "RCT6T06E13"

    .line 146
    nop

    .line 171
    const-string v23, "A3_Pro"

    .line 146
    nop

    .line 172
    const-string v24, "One"

    .line 146
    nop

    .line 173
    const-string v25, "One_Max"

    .line 146
    nop

    .line 174
    const-string v26, "One_Pro"

    .line 146
    nop

    .line 175
    const-string v27, "Z2"

    .line 146
    nop

    .line 176
    const-string v28, "Z2_PRO"

    .line 146
    nop

    .line 178
    const-string v29, "Armor_3"

    .line 146
    nop

    .line 179
    const-string v30, "Armor_6"

    .line 146
    nop

    .line 181
    const-string v31, "Blackview"

    .line 146
    nop

    .line 182
    const-string v32, "BV9500"

    .line 146
    nop

    .line 183
    const-string v33, "BV9500Pro"

    .line 146
    nop

    .line 185
    const-string v34, "A6L-C"

    .line 146
    nop

    .line 186
    const-string v35, "N5002LA"

    .line 146
    nop

    .line 187
    const-string v36, "N5501LA"

    .line 146
    nop

    .line 189
    const-string v37, "Power_2_Pro"

    .line 146
    nop

    .line 190
    const-string v38, "Power_5"

    .line 146
    nop

    .line 191
    const-string v39, "Z9"

    .line 146
    nop

    .line 193
    const-string v40, "V0310WW"

    .line 146
    nop

    .line 194
    const-string v41, "V0330WW"

    .line 146
    nop

    .line 196
    const-string v42, "A3"

    .line 146
    nop

    .line 197
    const-string v43, "ASUS_X018_4"

    .line 146
    nop

    .line 198
    const-string v44, "C210AE"

    .line 146
    nop

    .line 199
    const-string v45, "fireball"

    .line 146
    nop

    .line 200
    const-string v46, "ILA_X1"

    .line 146
    nop

    .line 201
    const-string v47, "Infinix-X605_sprout"

    .line 146
    nop

    .line 202
    const-string v48, "j7maxlte"

    .line 146
    nop

    .line 203
    const-string v49, "KING_KONG_3"

    .line 146
    nop

    .line 204
    const-string v50, "M10500"

    .line 146
    nop

    .line 205
    const-string v51, "S70"

    .line 146
    nop

    .line 206
    const-string v52, "S80Lite"

    .line 146
    nop

    .line 207
    const-string v53, "SGINO6"

    .line 146
    nop

    .line 208
    const-string/jumbo v54, "st18c10bnn"

    .line 146
    nop

    .line 209
    const-string v55, "TECNO-CA8"

    .line 146
    nop

    .line 210
    const-string v56, "SHIFT6m"

    filled-new-array/range {v2 .. v56}, [Ljava/lang/String;

    move-result-object v2

    .line 146
    nop

    .line 145
    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 142
    .end local v0    # "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$2":I
    .end local v1    # "device":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    .line 114
    :pswitch_1
    const/4 v0, 0x0

    .line 115
    .local v0, "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$1":I
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 118
    .local v2, "model":Ljava/lang/String;
    :cond_1
    const-string v3, "SAMSUNG-"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "SM-"

    invoke-static {v3, v6, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 120
    :cond_2
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 123
    .restart local v1    # "device":Ljava/lang/String;
    const-string/jumbo v3, "nora"

    const-string/jumbo v4, "nora_8917"

    const-string/jumbo v5, "nora_8917_n"

    .line 124
    const-string v6, "james"

    .line 123
    nop

    .line 124
    const-string/jumbo v7, "rjames_f"

    .line 123
    nop

    .line 124
    const-string/jumbo v8, "rjames_go"

    .line 123
    nop

    .line 124
    const-string/jumbo v9, "pettyl"

    .line 123
    nop

    .line 125
    const-string v10, "hannah"

    .line 123
    nop

    .line 125
    const-string v11, "ahannah"

    .line 123
    nop

    .line 125
    const-string/jumbo v12, "rhannah"

    .line 123
    nop

    .line 127
    const-string v13, "ali"

    .line 123
    nop

    .line 127
    const-string v14, "ali_n"

    .line 123
    nop

    .line 128
    const-string v15, "aljeter"

    .line 123
    nop

    .line 128
    const-string v16, "aljeter_n"

    .line 123
    nop

    .line 128
    const-string v17, "jeter"

    .line 123
    nop

    .line 129
    const-string v18, "evert"

    .line 123
    nop

    .line 129
    const-string v19, "evert_n"

    .line 123
    nop

    .line 129
    const-string v20, "evert_nt"

    .line 123
    nop

    .line 131
    const-string v21, "G3112"

    .line 123
    nop

    .line 131
    const-string v22, "G3116"

    .line 123
    nop

    .line 131
    const-string v23, "G3121"

    .line 123
    nop

    .line 131
    const-string v24, "G3123"

    .line 123
    nop

    .line 131
    const-string v25, "G3125"

    .line 123
    nop

    .line 132
    const-string v26, "G3412"

    .line 123
    nop

    .line 132
    const-string v27, "G3416"

    .line 123
    nop

    .line 132
    const-string v28, "G3421"

    .line 123
    nop

    .line 132
    const-string v29, "G3423"

    .line 123
    nop

    .line 132
    const-string v30, "G3426"

    .line 123
    nop

    .line 133
    const-string v31, "G3212"

    .line 123
    nop

    .line 133
    const-string v32, "G3221"

    .line 123
    nop

    .line 133
    const-string v33, "G3223"

    .line 123
    nop

    .line 133
    const-string v34, "G3226"

    .line 123
    nop

    .line 135
    const-string v35, "BV6800Pro"

    .line 123
    nop

    .line 136
    const-string v36, "CatS41"

    .line 123
    nop

    .line 137
    const-string v37, "Hi9Pro"

    .line 123
    nop

    .line 138
    const-string/jumbo v38, "manning"

    .line 123
    nop

    .line 139
    const-string v39, "N5702L"

    filled-new-array/range {v3 .. v39}, [Ljava/lang/String;

    move-result-object v3

    .line 123
    nop

    .line 122
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .line 114
    .end local v0    # "$i$a$-run--HardwareBitmaps$IS_DEVICE_BLOCKED$1":I
    .end local v1    # "device":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    :goto_1
    nop

    .line 113
    :goto_2
    sput-boolean v1, Lcoil/util/-HardwareBitmaps;->IS_DEVICE_BLOCKED:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final HardwareBitmapService(Lcoil/util/Logger;)Lcoil/util/HardwareBitmapService;
    .locals 2
    .param p0, "logger"    # Lcoil/util/Logger;

    .line 17
    nop

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    sget-boolean v0, Lcoil/util/-HardwareBitmaps;->IS_DEVICE_BLOCKED:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcoil/util/ImmutableHardwareBitmapService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcoil/util/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    goto :goto_2

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;

    invoke-direct {v0, p0}, Lcoil/util/LimitedFileDescriptorHardwareBitmapService;-><init>(Lcoil/util/Logger;)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    goto :goto_2

    .line 18
    :cond_3
    :goto_1
    new-instance v0, Lcoil/util/ImmutableHardwareBitmapService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/util/ImmutableHardwareBitmapService;-><init>(Z)V

    check-cast v0, Lcoil/util/HardwareBitmapService;

    .line 21
    :goto_2
    return-object v0
.end method
