.class public final Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;
.super Ljava/lang/Object;
.source "SnapPositionInLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;",
        "",
        "()V",
        "CenterToCenter",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "getCenterToCenter",
        "()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

.field private static final CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method public static synthetic $r8$lambda$_GDNVqZBK2wl544kPHiB7tsNHmY(IIIII)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->CenterToCenter$lambda$0(IIIII)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->$$INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

    .line 54
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final CenterToCenter$lambda$0(IIIII)I
    .locals 2
    .param p0, "layoutSize"    # I
    .param p1, "itemSize"    # I
    .param p2, "beforeContentPadding"    # I
    .param p3, "afterContentPadding"    # I

    .line 56
    sub-int p4, p0, p2

    sub-int/2addr p4, p3

    .line 57
    .local p4, "availableLayoutSpace":I
    div-int/lit8 v0, p4, 0x2

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getCenterToCenter()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;
    .locals 1

    .line 53
    sget-object v0, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->CenterToCenter:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    return-object v0
.end method
