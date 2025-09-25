.class public abstract Landroidx/compose/ui/layout/Placeable$PlacementScope;
.super Ljava/lang/Object;
.source "Placeable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/Placeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlacementScope"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaceable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,404:1\n331#1,2:405\n348#1:407\n349#1:409\n334#1,2:410\n348#1,2:412\n340#1:414\n331#1,2:415\n348#1:417\n349#1:419\n334#1,2:420\n348#1,2:422\n340#1:424\n348#1:425\n349#1:427\n348#1:428\n349#1:430\n331#1,2:431\n348#1:433\n349#1:435\n334#1,2:436\n348#1,2:438\n340#1:440\n331#1,2:441\n348#1:443\n349#1:445\n334#1,2:446\n348#1,2:448\n340#1:450\n348#1:451\n349#1:453\n348#1:454\n349#1:456\n348#1:457\n349#1:459\n348#1:460\n349#1:462\n86#2:408\n86#2:418\n86#2:426\n86#2:429\n86#2:434\n86#2:444\n86#2:452\n86#2:455\n86#2:458\n86#2:461\n86#2:463\n*S KotlinDebug\n*F\n+ 1 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope\n*L\n186#1:405,2\n186#1:407\n186#1:409\n186#1:410,2\n186#1:412,2\n186#1:414\n204#1:415,2\n204#1:417\n204#1:419\n204#1:420,2\n204#1:422,2\n204#1:424\n218#1:425\n218#1:427\n231#1:428\n231#1:430\n255#1:431,2\n255#1:433\n255#1:435\n255#1:436,2\n255#1:438,2\n255#1:440\n281#1:441,2\n281#1:443\n281#1:445\n281#1:446,2\n281#1:448,2\n281#1:450\n303#1:451\n303#1:453\n323#1:454\n323#1:456\n332#1:457\n332#1:459\n334#1:460\n334#1:462\n186#1:408\n204#1:418\n218#1:426\n231#1:429\n255#1:434\n281#1:444\n303#1:452\n323#1:455\n332#1:458\n334#1:461\n348#1:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J$\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015JD\u0010\u001a\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u001b\u0008\u0008\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u001eH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 JD\u0010!\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u001b\u0008\u0008\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u001eH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010 J&\u0010#\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010\u0017J$\u0010#\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015JA\u0010%\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010 J?\u0010%\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001eJA\u0010\'\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010 J?\u0010\'\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001eR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "()V",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "parentLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "parentWidth",
        "",
        "getParentWidth",
        "()I",
        "place",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "position",
        "Landroidx/compose/ui/unit/IntOffset;",
        "zIndex",
        "",
        "place-70tqf50",
        "(Landroidx/compose/ui/layout/Placeable;JF)V",
        "x",
        "y",
        "placeApparentToRealOffset",
        "layerBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "placeApparentToRealOffset-aW-9-wM$ui_release",
        "(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V",
        "placeAutoMirrored",
        "placeAutoMirrored-aW-9-wM$ui_release",
        "placeRelative",
        "placeRelative-70tqf50",
        "placeRelativeWithLayer",
        "placeRelativeWithLayer-aW-9-wM",
        "placeWithLayer",
        "placeWithLayer-aW-9-wM",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result v0

    return v0
.end method

.method public static synthetic place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 217
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: place"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 230
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: place-70tqf50"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 203
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelative-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 185
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative-70tqf50"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 276
    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 279
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 276
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 280
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 276
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 251
    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 253
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 251
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    .line 254
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 251
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 298
    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 301
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 298
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 302
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 298
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 319
    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 321
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 319
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    .line 322
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 319
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method protected abstract getParentWidth()I
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 12
    .param p1, "$this$place"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "zIndex"    # F

    .line 218
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .local v0, "position$iv":J
    const/4 v2, 0x0

    .local v2, "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    move-object v3, p1

    .local v3, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v5, 0x0

    .line 425
    .local v5, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v6

    .local v6, "other$iv$iv":J
    const/4 v8, 0x0

    .line 426
    .local v8, "$i$f$plus-qkQi6aY":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 425
    .end local v6    # "other$iv$iv":J
    .end local v8    # "$i$f$plus-qkQi6aY":I
    move/from16 v8, p4

    invoke-static {v3, v6, v7, v8, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 427
    nop

    .line 218
    .end local v0    # "position$iv":J
    .end local v2    # "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v4    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v5    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    return-void
.end method

.method public final place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 10
    .param p1, "$this$place_u2d70tqf50"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F

    .line 231
    const/4 v0, 0x0

    .local v0, "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    move-object v1, p1

    .local v1, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v3, 0x0

    .line 428
    .local v3, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v4

    .local v4, "other$iv$iv":J
    const/4 v6, 0x0

    .line 429
    .local v6, "$i$f$plus-qkQi6aY":I
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 428
    .end local v4    # "other$iv$iv":J
    .end local v6    # "$i$f$plus-qkQi6aY":I
    invoke-static {v1, v4, v5, p4, v0}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 430
    nop

    .line 231
    .end local v0    # "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v2    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v3    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeApparentToRealOffset-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 348
    .local v0, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v1

    .local v1, "other$iv":J
    const/4 v3, 0x0

    .line 463
    .local v3, "$i$f$plus-qkQi6aY":I
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 348
    .end local v1    # "other$iv":J
    .end local v3    # "$i$f$plus-qkQi6aY":I
    invoke-static {p1, v1, v2, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 349
    return-void
.end method

.method public final placeAutoMirrored-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 14
    .param p1, "$this$placeAutoMirrored_u2daW_u2d9_u2dwM"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p4

    move-object/from16 v1, p5

    const/4 v2, 0x0

    .line 331
    .local v2, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v3, v4, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    nop

    .line 335
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    .line 334
    move-object v5, p1

    .local v3, "position$iv":J
    .local v5, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v6, p0

    .local v6, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v7, 0x0

    .line 460
    .local v7, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v8

    .local v8, "other$iv$iv":J
    const/4 v10, 0x0

    .line 461
    .local v10, "$i$f$plus-qkQi6aY":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    .line 460
    .end local v8    # "other$iv$iv":J
    .end local v10    # "$i$f$plus-qkQi6aY":I
    invoke-static {v5, v8, v9, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 462
    goto :goto_1

    .line 332
    .end local v3    # "position$iv":J
    .end local v5    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v7    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :cond_1
    :goto_0
    move-object v3, p1

    .local v3, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v5, 0x0

    .line 457
    .local v5, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v6

    .local v6, "other$iv$iv":J
    const/4 v8, 0x0

    .line 458
    .local v8, "$i$f$plus-qkQi6aY":I
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 457
    .end local v6    # "other$iv$iv":J
    .end local v8    # "$i$f$plus-qkQi6aY":I
    invoke-static {v3, v6, v7, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 459
    nop

    .line 340
    .end local v3    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v4    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v5    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :goto_1
    return-void
.end method

.method public final placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 19
    .param p1, "$this$placeRelative"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "zIndex"    # F

    .line 204
    move/from16 v0, p4

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .local v1, "position$iv":J
    const/4 v3, 0x0

    .local v3, "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v4, p1

    .local v4, "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v6, 0x0

    .line 415
    .local v6, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v7, v8, :cond_1

    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v7

    if-nez v7, :cond_0

    move/from16 v18, v6

    goto :goto_0

    .line 420
    :cond_0
    nop

    .line 421
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v7

    .line 420
    move-object v9, v4

    .local v9, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v10, v5

    .local v7, "position$iv$iv":J
    .local v10, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v11, 0x0

    .line 422
    .local v11, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v9}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v12

    .local v12, "other$iv$iv$iv":J
    const/4 v14, 0x0

    .line 418
    .local v14, "$i$f$plus-qkQi6aY":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v15

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v17

    move/from16 v18, v6

    .end local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .local v18, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    add-int v6, v16, v17

    invoke-static {v15, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v12

    .line 422
    .end local v12    # "other$iv$iv$iv":J
    .end local v14    # "$i$f$plus-qkQi6aY":I
    invoke-static {v9, v12, v13, v0, v3}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 423
    goto :goto_1

    .line 415
    .end local v7    # "position$iv$iv":J
    .end local v9    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v11    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    .end local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .restart local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    :cond_1
    move/from16 v18, v6

    .line 416
    .end local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .restart local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    :goto_0
    move-object v6, v4

    .local v6, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v7, v5

    .local v7, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v8, 0x0

    .line 417
    .local v8, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v9

    .local v9, "other$iv$iv$iv":J
    const/4 v11, 0x0

    .line 418
    .local v11, "$i$f$plus-qkQi6aY":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    .line 417
    .end local v9    # "other$iv$iv$iv":J
    .end local v11    # "$i$f$plus-qkQi6aY":I
    invoke-static {v6, v9, v10, v0, v3}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 419
    nop

    .line 424
    .end local v6    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v8    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :goto_1
    nop

    .line 204
    .end local v1    # "position$iv":J
    .end local v3    # "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v5    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 16
    .param p1, "$this$placeRelative_u2d70tqf50"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F

    .line 186
    move/from16 v0, p4

    const/4 v1, 0x0

    .local v1, "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v2, p1

    .local v2, "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v4, 0x0

    .line 405
    .local v4, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    nop

    .line 411
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 410
    nop

    .local v5, "position$iv$iv":J
    move-object v7, v3

    .local v7, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    move-object v8, v2

    .local v8, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 412
    .local v9, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v8}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v10

    .local v10, "other$iv$iv$iv":J
    const/4 v12, 0x0

    .line 408
    .local v12, "$i$f$plus-qkQi6aY":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    .line 412
    .end local v10    # "other$iv$iv$iv":J
    .end local v12    # "$i$f$plus-qkQi6aY":I
    invoke-static {v8, v10, v11, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 413
    goto :goto_1

    .line 406
    .end local v5    # "position$iv$iv":J
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v8    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :cond_1
    :goto_0
    move-object v5, v2

    .local v5, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v6, v3

    .local v6, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v7, 0x0

    .line 407
    .local v7, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v8

    .local v8, "other$iv$iv$iv":J
    const/4 v10, 0x0

    .line 408
    .local v10, "$i$f$plus-qkQi6aY":I
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    .line 407
    .end local v8    # "other$iv$iv$iv":J
    .end local v10    # "$i$f$plus-qkQi6aY":I
    invoke-static {v5, v8, v9, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 409
    nop

    .line 414
    .end local v5    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v7    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :goto_1
    nop

    .line 186
    .end local v1    # "layerBlock$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v4    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 19
    .param p1, "$this$placeRelativeWithLayer"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 281
    move/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    .local v2, "position$iv":J
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    move-object/from16 v5, p1

    .local v5, "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    const/4 v6, 0x0

    .line 441
    .local v6, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    invoke-static {v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v7, v8, :cond_1

    invoke-static {v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v7

    if-nez v7, :cond_0

    move/from16 v18, v6

    goto :goto_0

    .line 446
    :cond_0
    nop

    .line 447
    invoke-static {v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v7

    .line 446
    move-object v9, v5

    .local v9, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v10, v4

    .local v7, "position$iv$iv":J
    .local v10, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v11, 0x0

    .line 448
    .local v11, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v9}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v12

    .local v12, "other$iv$iv$iv":J
    const/4 v14, 0x0

    .line 444
    .local v14, "$i$f$plus-qkQi6aY":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v15

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v16

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v17

    move/from16 v18, v6

    .end local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .local v18, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    add-int v6, v16, v17

    invoke-static {v15, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v12

    .line 448
    .end local v12    # "other$iv$iv$iv":J
    .end local v14    # "$i$f$plus-qkQi6aY":I
    invoke-static {v9, v12, v13, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 449
    goto :goto_1

    .line 441
    .end local v7    # "position$iv$iv":J
    .end local v9    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v11    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    .end local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .restart local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    :cond_1
    move/from16 v18, v6

    .line 442
    .end local v6    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    .restart local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    :goto_0
    move-object v6, v5

    .local v6, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v8, 0x0

    .line 443
    .local v8, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v9

    .local v9, "other$iv$iv$iv":J
    const/4 v11, 0x0

    .line 444
    .local v11, "$i$f$plus-qkQi6aY":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    .line 443
    .end local v9    # "other$iv$iv$iv":J
    .end local v11    # "$i$f$plus-qkQi6aY":I
    invoke-static {v6, v9, v10, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 445
    nop

    .line 450
    .end local v6    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v8    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :goto_1
    nop

    .line 281
    .end local v2    # "position$iv":J
    .end local v4    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v5    # "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1, "$this$placeRelativeWithLayer_u2daW_u2d9_u2dwM"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 255
    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    .local v2, "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v4, 0x0

    .line 431
    .local v4, "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    nop

    .line 437
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 436
    nop

    .local v5, "position$iv$iv":J
    move-object v7, v3

    .local v7, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    move-object v8, v2

    .local v8, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 438
    .local v9, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v8}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v10

    .local v10, "other$iv$iv$iv":J
    const/4 v12, 0x0

    .line 434
    .local v12, "$i$f$plus-qkQi6aY":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v14

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    .line 438
    .end local v10    # "other$iv$iv$iv":J
    .end local v12    # "$i$f$plus-qkQi6aY":I
    invoke-static {v8, v10, v11, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 439
    goto :goto_1

    .line 432
    .end local v5    # "position$iv$iv":J
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v8    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :cond_1
    :goto_0
    move-object v5, v2

    .local v5, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v6, v3

    .local v6, "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v7, 0x0

    .line 433
    .local v7, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v5}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v8

    .local v8, "other$iv$iv$iv":J
    const/4 v10, 0x0

    .line 434
    .local v10, "$i$f$plus-qkQi6aY":I
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    .line 433
    .end local v8    # "other$iv$iv$iv":J
    .end local v10    # "$i$f$plus-qkQi6aY":I
    invoke-static {v5, v8, v9, v0, v1}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 435
    nop

    .line 440
    .end local v5    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v7    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    :goto_1
    nop

    .line 255
    .end local v2    # "$this$placeAutoMirrored_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v4    # "$i$f$placeAutoMirrored-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "$this$placeWithLayer"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 303
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .local v0, "position$iv":J
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    move-object v3, p1

    .local v3, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    const/4 v4, 0x0

    .line 451
    .local v4, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v3}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v5

    .local v5, "other$iv$iv":J
    const/4 v7, 0x0

    .line 452
    .local v7, "$i$f$plus-qkQi6aY":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 451
    .end local v5    # "other$iv$iv":J
    .end local v7    # "$i$f$plus-qkQi6aY":I
    move v7, p4

    move-object/from16 v8, p5

    invoke-static {v3, v5, v6, p4, v8}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 453
    nop

    .line 303
    .end local v0    # "position$iv":J
    .end local v2    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v3    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v4    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    return-void
.end method

.method public final placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "$this$placeWithLayer_u2daW_u2d9_u2dwM"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "position"    # J
    .param p4, "zIndex"    # F
    .param p5, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 323
    move-object v0, p1

    .local v0, "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    move-result-wide v3

    .local v3, "other$iv$iv":J
    const/4 v5, 0x0

    .line 455
    .local v5, "$i$f$plus-qkQi6aY":I
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    .line 454
    .end local v3    # "other$iv$iv":J
    .end local v5    # "$i$f$plus-qkQi6aY":I
    invoke-static {v0, v3, v4, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 456
    nop

    .line 323
    .end local v0    # "$this$placeApparentToRealOffset_u2daW_u2d9_u2dwM$iv":Landroidx/compose/ui/layout/Placeable;
    .end local v1    # "this_$iv":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v2    # "$i$f$placeApparentToRealOffset-aW-9-wM$ui_release":I
    return-void
.end method
