.class public final Landroidx/compose/foundation/MagnifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Magnifier.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifier.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Magnifier.android.kt\nandroidx/compose/foundation/MagnifierNode\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,467:1\n81#2:468\n107#2,2:469\n1#3:471\n*S KotlinDebug\n*F\n+ 1 Magnifier.android.kt\nandroidx/compose/foundation/MagnifierNode\n*L\n295#1:468\n295#1:469,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0099\u0001\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u0012\u001b\u0008\u0002\u0010\u000c\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a2\u0006\u0002\u0008\u000b\u0012\u0016\u0008\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010J\u001a\u00020\u000fH\u0016J\u0008\u0010K\u001a\u00020\u000fH\u0016J\u0010\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020\u000fH\u0016J\u0008\u0010P\u001a\u00020\u000fH\u0002J\u0092\u0001\u0010Q\u001a\u00020\u000f2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b2\u0019\u0010\u000c\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a2\u0006\u0002\u0008\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00132\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u001a\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SJ\u0008\u0010T\u001a\u00020\u000fH\u0002J\u0008\u0010U\u001a\u00020\u000fH\u0002J\u000c\u0010V\u001a\u00020\u000f*\u00020WH\u0016J\u000c\u0010X\u001a\u00020\u000f*\u00020YH\u0016R1\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n8B@BX\u0082\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0010\u0010-\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0017\u001a\u00020\u0016X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008.\u0010)\"\u0004\u0008/\u0010+R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R-\u0010\u000c\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a2\u0006\u0002\u0008\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00103\"\u0004\u00087\u00105R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u0016\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\n\u0000R\"\u0010\u0014\u001a\u00020\u000eX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010@\u001a\u0004\u0008>\u0010\u001f\"\u0004\u0008?\u0010!R+\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u00103\"\u0004\u0008B\u00105R\u0016\u0010C\u001a\u00020\nX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010@R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010%\"\u0004\u0008E\u0010\'R\u0010\u0010F\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010)\"\u0004\u0008I\u0010+\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006Z"
    }
    d2 = {
        "Landroidx/compose/foundation/MagnifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "sourceCenter",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/ExtensionFunctionType;",
        "magnifierCenter",
        "onSizeChanged",
        "Landroidx/compose/ui/unit/DpSize;",
        "",
        "zoom",
        "",
        "useTextDefault",
        "",
        "size",
        "cornerRadius",
        "Landroidx/compose/ui/unit/Dp;",
        "elevation",
        "clippingEnabled",
        "platformMagnifierFactory",
        "Landroidx/compose/foundation/PlatformMagnifierFactory;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "<set-?>",
        "anchorPositionInRoot",
        "getAnchorPositionInRoot-F1C5BW0",
        "()J",
        "setAnchorPositionInRoot-k-4lQ0M",
        "(J)V",
        "anchorPositionInRoot$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getClippingEnabled",
        "()Z",
        "setClippingEnabled",
        "(Z)V",
        "getCornerRadius-D9Ej5fM",
        "()F",
        "setCornerRadius-0680j_4",
        "(F)V",
        "F",
        "density",
        "getElevation-D9Ej5fM",
        "setElevation-0680j_4",
        "magnifier",
        "Landroidx/compose/foundation/PlatformMagnifier;",
        "getMagnifierCenter",
        "()Lkotlin/jvm/functions/Function1;",
        "setMagnifierCenter",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnSizeChanged",
        "setOnSizeChanged",
        "getPlatformMagnifierFactory",
        "()Landroidx/compose/foundation/PlatformMagnifierFactory;",
        "setPlatformMagnifierFactory",
        "(Landroidx/compose/foundation/PlatformMagnifierFactory;)V",
        "previousSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-MYxV2XQ",
        "setSize-EaSLcWc",
        "J",
        "getSourceCenter",
        "setSourceCenter",
        "sourceCenterInRoot",
        "getUseTextDefault",
        "setUseTextDefault",
        "view",
        "Landroid/view/View;",
        "getZoom",
        "setZoom",
        "onAttach",
        "onDetach",
        "onGloballyPositioned",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onObservedReadsChanged",
        "recreateMagnifier",
        "update",
        "update-5F03MCQ",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)V",
        "updateMagnifier",
        "updateSizeIfNecessary",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "foundation_release"
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


# instance fields
.field private final anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

.field private clippingEnabled:Z

.field private cornerRadius:F

.field private density:Landroidx/compose/ui/unit/Density;

.field private elevation:F

.field private magnifier:Landroidx/compose/foundation/PlatformMagnifier;

.field private magnifierCenter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private onSizeChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field private previousSize:Landroidx/compose/ui/unit/IntSize;

.field private size:J

.field private sourceCenter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCenterInRoot:J

.field private useTextDefault:Z

.field private view:Landroid/view/View;

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/MagnifierNode;->$stable:I

    return-void
.end method

.method private constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 3
    .param p1, "sourceCenter"    # Lkotlin/jvm/functions/Function1;
    .param p2, "magnifierCenter"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onSizeChanged"    # Lkotlin/jvm/functions/Function1;
    .param p4, "zoom"    # F
    .param p5, "useTextDefault"    # Z
    .param p6, "size"    # J
    .param p8, "cornerRadius"    # F
    .param p9, "elevation"    # F
    .param p10, "clippingEnabled"    # Z
    .param p11, "platformMagnifierFactory"    # Landroidx/compose/foundation/PlatformMagnifierFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;FZJFFZ",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 258
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 259
    iput-object p2, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 260
    iput-object p3, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 261
    iput p4, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 262
    iput-boolean p5, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 263
    iput-wide p6, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 264
    iput p8, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 265
    iput p9, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 266
    iput-boolean p10, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 267
    iput-object p11, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 295
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    .line 301
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 257
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 257
    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 259
    move-object v5, v2

    goto :goto_0

    .line 257
    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 260
    move-object v6, v2

    goto :goto_1

    .line 257
    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 261
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v7, v1

    goto :goto_2

    .line 257
    :cond_2
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 262
    const/4 v1, 0x0

    move v8, v1

    goto :goto_3

    .line 257
    :cond_3
    move/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    .line 263
    sget-object v1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide v1

    move-wide v9, v1

    goto :goto_4

    .line 257
    :cond_4
    move-wide/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    .line 264
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v1

    move v11, v1

    goto :goto_5

    .line 257
    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    .line 265
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v1

    move v12, v1

    goto :goto_6

    .line 257
    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    .line 266
    const/4 v1, 0x1

    move v13, v1

    goto :goto_7

    .line 257
    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 268
    sget-object v0, Landroidx/compose/foundation/PlatformMagnifierFactory;->Companion:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;->getForCurrentPlatform()Landroidx/compose/foundation/PlatformMagnifierFactory;

    move-result-object v0

    move-object v14, v0

    goto :goto_8

    .line 257
    :cond_8
    move-object/from16 v14, p11

    :goto_8
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v15}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 462
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method

.method public static final synthetic access$getDensity$p(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public static final synthetic access$getMagnifier$p(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    return-object v0
.end method

.method public static final synthetic access$getSourceCenterInRoot$p(Landroidx/compose/foundation/MagnifierNode;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    iget-wide v0, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    return-wide v0
.end method

.method public static final synthetic access$getView$p(Landroidx/compose/foundation/MagnifierNode;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic access$recreateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->recreateMagnifier()V

    return-void
.end method

.method public static final synthetic access$setDensity$p(Landroidx/compose/foundation/MagnifierNode;Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/Density;

    .line 257
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public static final synthetic access$setView$p(Landroidx/compose/foundation/MagnifierNode;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;
    .param p1, "<set-?>"    # Landroid/view/View;

    .line 257
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$updateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/MagnifierNode;

    .line 257
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateMagnifier()V

    return-void
.end method

.method private final getAnchorPositionInRoot-F1C5BW0()J
    .locals 3

    .line 295
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 468
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 295
    return-wide v0
.end method

.method private final recreateMagnifier()V
    .locals 11

    .line 382
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 383
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    if-nez v2, :cond_1

    return-void

    .line 384
    .local v2, "view":Landroid/view/View;
    :cond_1
    iget-object v9, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v9, :cond_2

    return-void

    .line 385
    .local v9, "density":Landroidx/compose/ui/unit/Density;
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 386
    nop

    .line 387
    iget-boolean v3, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 388
    iget-wide v4, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 389
    iget v6, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 390
    iget v7, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 391
    iget-boolean v8, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 392
    nop

    .line 393
    iget v10, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 385
    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/PlatformMagnifierFactory;->create-nHHXs2Y(Landroid/view/View;ZJFFZLandroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 395
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateSizeIfNecessary()V

    .line 396
    return-void
.end method

.method private final setAnchorPositionInRoot-k-4lQ0M(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 295
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 469
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 470
    nop

    .line 295
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final updateMagnifier()V
    .locals 9

    .line 399
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-nez v0, :cond_0

    return-void

    .line 400
    .local v0, "magnifier":Landroidx/compose/foundation/PlatformMagnifier;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v6, v1

    .line 402
    .local v6, "density":Landroidx/compose/ui/unit/Density;
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v7

    .line 403
    .local v7, "sourceCenterOffset":J
    nop

    .line 404
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2, v7, v8}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 407
    :cond_2
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    .line 403
    :goto_0
    iput-wide v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 412
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_4

    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    .line 416
    nop

    .line 415
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    .line 471
    .local v2, "it":J
    const/4 v4, 0x0

    .line 416
    .local v4, "$i$a$-takeIf-MagnifierNode$updateMagnifier$magnifierCenter$1":I
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    .end local v2    # "it":J
    .end local v4    # "$i$a$-takeIf-MagnifierNode$updateMagnifier$magnifierCenter$1":I
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 417
    :goto_1
    if-eqz v1, :cond_4

    .line 416
    nop

    .line 417
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    .line 471
    .local v1, "it":J
    const/4 v3, 0x0

    .line 417
    .local v3, "$i$a$-let-MagnifierNode$updateMagnifier$magnifierCenter$2":I
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 415
    .end local v1    # "it":J
    .end local v3    # "$i$a$-let-MagnifierNode$updateMagnifier$magnifierCenter$2":I
    move-wide v3, v1

    goto :goto_2

    .line 418
    :cond_4
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    move-wide v3, v1

    .line 415
    :goto_2
    nop

    .line 420
    .local v3, "magnifierCenter":J
    nop

    .line 421
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 422
    nop

    .line 423
    iget v5, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 420
    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/PlatformMagnifier;->update-Wko1d7g(JJF)V

    .line 425
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateSizeIfNecessary()V

    .end local v3    # "magnifierCenter":J
    goto :goto_3

    .line 428
    :cond_5
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 430
    :goto_3
    return-void
.end method

.method private final updateSizeIfNecessary()V
    .locals 7

    .line 433
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-nez v0, :cond_0

    return-void

    .line 434
    .local v0, "magnifier":Landroidx/compose/foundation/PlatformMagnifier;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v1, :cond_1

    return-void

    .line 436
    .local v1, "density":Landroidx/compose/ui/unit/Density;
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode;->previousSize:Landroidx/compose/ui/unit/IntSize;

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl(JLjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 437
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    .line 471
    move-object v3, v1

    .local v3, "$this$updateSizeIfNecessary_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v4, 0x0

    .line 437
    .local v4, "$i$a$-with-MagnifierNode$updateSizeIfNecessary$1":I
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v3

    .end local v3    # "$this$updateSizeIfNecessary_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    .end local v4    # "$i$a$-with-MagnifierNode$updateSizeIfNecessary$1":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_2
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->previousSize:Landroidx/compose/ui/unit/IntSize;

    .line 440
    :cond_3
    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 460
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->getMagnifierPositionInRoot()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/MagnifierNode$applySemantics$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/MagnifierNode$applySemantics$1;-><init>(Landroidx/compose/foundation/MagnifierNode;)V

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 6
    .param p1, "$this$draw"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 443
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 446
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroidx/compose/foundation/MagnifierNode$draw$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/compose/foundation/MagnifierNode$draw$1;-><init>(Landroidx/compose/foundation/MagnifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 450
    return-void
.end method

.method public final getClippingEnabled()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    return v0
.end method

.method public final getCornerRadius-D9Ej5fM()F
    .locals 1

    .line 264
    iget v0, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    return v0
.end method

.method public final getElevation-D9Ej5fM()F
    .locals 1

    .line 265
    iget v0, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    return v0
.end method

.method public final getMagnifierCenter()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSizeChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPlatformMagnifierFactory()Landroidx/compose/foundation/PlatformMagnifierFactory;
    .locals 1

    .line 267
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    return-object v0
.end method

.method public final getSize-MYxV2XQ()J
    .locals 2

    .line 263
    iget-wide v0, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    return-wide v0
.end method

.method public final getSourceCenter()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getUseTextDefault()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    return v0
.end method

.method public final getZoom()F
    .locals 1

    .line 261
    iget v0, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 358
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierNode;->onObservedReadsChanged()V

    .line 359
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 364
    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 456
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/MagnifierNode;->setAnchorPositionInRoot-k-4lQ0M(J)V

    .line 457
    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 367
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    new-instance v1, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;-><init>(Landroidx/compose/foundation/MagnifierNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 379
    return-void
.end method

.method public final setClippingEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 266
    iput-boolean p1, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    return-void
.end method

.method public final setCornerRadius-0680j_4(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 264
    iput p1, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    return-void
.end method

.method public final setElevation-0680j_4(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 265
    iput p1, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    return-void
.end method

.method public final setMagnifierCenter(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSizeChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPlatformMagnifierFactory(Landroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 267
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 268
    return-void
.end method

.method public final setSize-EaSLcWc(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 263
    iput-wide p1, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    return-void
.end method

.method public final setSourceCenter(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setUseTextDefault(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 262
    iput-boolean p1, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    return-void
.end method

.method public final setZoom(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 261
    iput p1, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    return-void
.end method

.method public final update-5F03MCQ(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 16
    .param p1, "sourceCenter"    # Lkotlin/jvm/functions/Function1;
    .param p2, "magnifierCenter"    # Lkotlin/jvm/functions/Function1;
    .param p3, "zoom"    # F
    .param p4, "useTextDefault"    # Z
    .param p5, "size"    # J
    .param p7, "cornerRadius"    # F
    .param p8, "elevation"    # F
    .param p9, "clippingEnabled"    # Z
    .param p10, "onSizeChanged"    # Lkotlin/jvm/functions/Function1;
    .param p11, "platformMagnifierFactory"    # Landroidx/compose/foundation/PlatformMagnifierFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;FZJFFZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            ")V"
        }
    .end annotation

    .line 321
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    iget v8, v0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 322
    .local v8, "previousZoom":F
    iget-wide v9, v0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 323
    .local v9, "previousSize":J
    iget v11, v0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 324
    .local v11, "previousCornerRadius":F
    iget v12, v0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 325
    .local v12, "previousElevation":F
    iget-boolean v13, v0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 326
    .local v13, "previousClippingEnabled":Z
    iget-object v14, v0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 328
    .local v14, "previousPlatformMagnifierFactory":Landroidx/compose/foundation/PlatformMagnifierFactory;
    move-object/from16 v15, p1

    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 329
    move-object/from16 v15, p2

    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 330
    iput v1, v0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 331
    move/from16 v15, p4

    iput-boolean v15, v0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 332
    iput-wide v2, v0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 333
    iput v4, v0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 334
    iput v5, v0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 335
    iput-boolean v6, v0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 336
    move-object/from16 v15, p10

    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 337
    iput-object v7, v0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 343
    nop

    .line 344
    iget-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v15, :cond_2

    .line 345
    cmpg-float v15, v1, v8

    if-nez v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    invoke-interface/range {p11 .. p11}, Landroidx/compose/foundation/PlatformMagnifierFactory;->getCanUpdateZoom()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 346
    :cond_1
    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 347
    invoke-static {v4, v11}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 348
    invoke-static {v5, v12}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 349
    if-ne v6, v13, :cond_2

    .line 350
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 352
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/MagnifierNode;->recreateMagnifier()V

    .line 354
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/MagnifierNode;->updateMagnifier()V

    .line 355
    return-void
.end method
