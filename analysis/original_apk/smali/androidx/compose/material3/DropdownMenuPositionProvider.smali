.class public final Landroidx/compose/material3/DropdownMenuPositionProvider;
.super Ljava/lang/Object;
.source "MenuPosition.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenuPosition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MenuPosition.kt\nandroidx/compose/material3/DropdownMenuPositionProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,412:1\n1#2:413\n151#3,3:414\n33#3,4:417\n154#3,2:421\n38#3:423\n156#3:424\n116#3,2:425\n33#3,6:427\n118#3:433\n151#3,3:434\n33#3,4:437\n154#3,2:441\n38#3:443\n156#3:444\n116#3,2:445\n33#3,6:447\n118#3:453\n*S KotlinDebug\n*F\n+ 1 MenuPosition.kt\nandroidx/compose/material3/DropdownMenuPositionProvider\n*L\n371#1:414,3\n371#1:417,4\n371#1:421,2\n371#1:423\n371#1:424\n379#1:425,2\n379#1:427,6\n379#1:433\n392#1:434,3\n392#1:437,4\n392#1:441,2\n392#1:443\n392#1:444\n399#1:445,2\n399#1:447,6\n399#1:453\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00128\u0008\u0002\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\t\u00a2\u0006\u0002\u0010\u0010J2\u0010%\u001a\u00020&2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020(H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u0016\u0010.\u001a\u00020\u0003H\u00c6\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010\u0016J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u0007H\u00c6\u0003J9\u00102\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\tH\u00c6\u0003Jk\u00103\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u000728\u0008\u0002\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\tH\u00c6\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109H\u00d6\u0003J\t\u0010:\u001a\u00020\u0007H\u00d6\u0001J\t\u0010;\u001a\u00020<H\u00d6\u0001R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000RA\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006="
    }
    d2 = {
        "Landroidx/compose/material3/DropdownMenuPositionProvider;",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "contentOffset",
        "Landroidx/compose/ui/unit/DpOffset;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "verticalMargin",
        "",
        "onPositionCalculated",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/IntRect;",
        "Lkotlin/ParameterName;",
        "name",
        "anchorBounds",
        "menuBounds",
        "",
        "(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "bottomToAnchorTop",
        "Landroidx/compose/material3/MenuPosition$Vertical;",
        "bottomToWindowBottom",
        "centerToAnchorTop",
        "getContentOffset-RKDOV3M",
        "()J",
        "J",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "endToAnchorEnd",
        "Landroidx/compose/material3/MenuPosition$Horizontal;",
        "leftToWindowLeft",
        "getOnPositionCalculated",
        "()Lkotlin/jvm/functions/Function2;",
        "rightToWindowRight",
        "startToAnchorStart",
        "topToAnchorBottom",
        "topToWindowTop",
        "getVerticalMargin",
        "()I",
        "calculatePosition",
        "Landroidx/compose/ui/unit/IntOffset;",
        "windowSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "popupContentSize",
        "calculatePosition-llwVHH4",
        "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J",
        "component1",
        "component1-RKDOV3M",
        "component2",
        "component3",
        "component4",
        "copy",
        "copy-uVxBXkw",
        "(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;)Landroidx/compose/material3/DropdownMenuPositionProvider;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "material3_release"
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
.field private final bottomToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

.field private final bottomToWindowBottom:Landroidx/compose/material3/MenuPosition$Vertical;

.field private final centerToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

.field private final contentOffset:J

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final endToAnchorEnd:Landroidx/compose/material3/MenuPosition$Horizontal;

.field private final leftToWindowLeft:Landroidx/compose/material3/MenuPosition$Horizontal;

.field private final onPositionCalculated:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntRect;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final rightToWindowRight:Landroidx/compose/material3/MenuPosition$Horizontal;

.field private final startToAnchorStart:Landroidx/compose/material3/MenuPosition$Horizontal;

.field private final topToAnchorBottom:Landroidx/compose/material3/MenuPosition$Vertical;

.field private final topToWindowTop:Landroidx/compose/material3/MenuPosition$Vertical;

.field private final verticalMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p1, "contentOffset"    # J
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;
    .param p4, "verticalMargin"    # I
    .param p5, "onPositionCalculated"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-wide p1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    .line 325
    iput-object p3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 326
    iput p4, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    .line 327
    iput-object p5, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    .line 341
    nop

    .line 343
    iget-object v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 413
    .local v0, "$this$_init__u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 343
    .local v1, "$i$a$-with-DropdownMenuPositionProvider$contentOffsetX$1":I
    iget-wide v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    .line 344
    .end local v1    # "$i$a$-with-DropdownMenuPositionProvider$contentOffsetX$1":I
    .local v0, "contentOffsetX":I
    sget-object v1, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v1, v0}, Landroidx/compose/material3/MenuPosition;->startToAnchorStart(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->startToAnchorStart:Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 345
    sget-object v1, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v1, v0}, Landroidx/compose/material3/MenuPosition;->endToAnchorEnd(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->endToAnchorEnd:Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 346
    sget-object v1, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/material3/MenuPosition;->leftToWindowLeft(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->leftToWindowLeft:Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 347
    sget-object v1, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v1, v2}, Landroidx/compose/material3/MenuPosition;->rightToWindowRight(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->rightToWindowRight:Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 349
    iget-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 413
    .local v1, "$this$_init__u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v2, 0x0

    .line 349
    .local v2, "$i$a$-with-DropdownMenuPositionProvider$contentOffsetY$1":I
    iget-wide v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    .line 350
    .end local v2    # "$i$a$-with-DropdownMenuPositionProvider$contentOffsetY$1":I
    .local v1, "contentOffsetY":I
    sget-object v2, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v2, v1}, Landroidx/compose/material3/MenuPosition;->topToAnchorBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->topToAnchorBottom:Landroidx/compose/material3/MenuPosition$Vertical;

    .line 351
    sget-object v2, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v2, v1}, Landroidx/compose/material3/MenuPosition;->bottomToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->bottomToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

    .line 352
    sget-object v2, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    invoke-virtual {v2, v1}, Landroidx/compose/material3/MenuPosition;->centerToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->centerToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

    .line 353
    sget-object v2, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    iget v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    invoke-virtual {v2, v3}, Landroidx/compose/material3/MenuPosition;->topToWindowTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->topToWindowTop:Landroidx/compose/material3/MenuPosition$Vertical;

    .line 354
    sget-object v2, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    iget v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    invoke-virtual {v2, v3}, Landroidx/compose/material3/MenuPosition;->bottomToWindowBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->bottomToWindowBottom:Landroidx/compose/material3/MenuPosition$Vertical;

    .line 355
    .end local v0    # "contentOffsetX":I
    .end local v1    # "contentOffsetY":I
    nop

    .line 323
    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 323
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 326
    move-object p4, p3

    .line 413
    .local p4, "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 p7, 0x0

    .line 326
    .local p7, "$i$a$-with-DropdownMenuPositionProvider$1":I
    invoke-static {}, Landroidx/compose/material3/MenuKt;->getMenuVerticalMargin()F

    move-result v0

    invoke-interface {p4, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p4

    move v4, p4

    .end local p4    # "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local p7    # "$i$a$-with-DropdownMenuPositionProvider$1":I
    goto :goto_0

    .line 323
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 327
    sget-object p4, Landroidx/compose/material3/DropdownMenuPositionProvider$2;->INSTANCE:Landroidx/compose/material3/DropdownMenuPositionProvider$2;

    move-object p5, p4

    check-cast p5, Lkotlin/jvm/functions/Function2;

    move-object v5, p5

    goto :goto_1

    .line 323
    :cond_1
    move-object v5, p5

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 411
    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic copy-uVxBXkw$default(Landroidx/compose/material3/DropdownMenuPositionProvider;JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/material3/DropdownMenuPositionProvider;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    :cond_2
    move v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/DropdownMenuPositionProvider;->copy-uVxBXkw(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;)Landroidx/compose/material3/DropdownMenuPositionProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 24
    .param p1, "anchorBounds"    # Landroidx/compose/ui/unit/IntRect;
    .param p2, "windowSize"    # J
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p5, "popupContentSize"    # J

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x3

    new-array v1, v8, [Landroidx/compose/material3/MenuPosition$Horizontal;

    iget-object v2, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->startToAnchorStart:Landroidx/compose/material3/MenuPosition$Horizontal;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    .line 365
    iget-object v2, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->endToAnchorEnd:Landroidx/compose/material3/MenuPosition$Horizontal;

    const/4 v10, 0x1

    aput-object v2, v1, v10

    .line 364
    nop

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/unit/IntRect;->getCenter-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v3

    const/4 v11, 0x2

    div-int/2addr v3, v11

    if-ge v2, v3, :cond_0

    .line 367
    iget-object v2, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->leftToWindowLeft:Landroidx/compose/material3/MenuPosition$Horizontal;

    goto :goto_0

    .line 369
    :cond_0
    iget-object v2, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->rightToWindowRight:Landroidx/compose/material3/MenuPosition$Horizontal;

    :goto_0
    aput-object v2, v1, v11

    .line 364
    nop

    .line 363
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 371
    move-object v12, v1

    .local v12, "$this$fastMap$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 414
    .local v13, "$i$f$fastMap":I
    nop

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v1

    .line 416
    .local v14, "target$iv":Ljava/util/ArrayList;
    move-object v15, v12

    .local v15, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 417
    .local v16, "$i$f$fastForEach":I
    nop

    .line 418
    const/4 v1, 0x0

    .local v1, "index$iv$iv":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    move v5, v1

    .end local v1    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 419
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 420
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 421
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v3, v14

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/material3/MenuPosition$Horizontal;

    .local v20, "it":Landroidx/compose/material3/MenuPosition$Horizontal;
    const/16 v21, 0x0

    .line 372
    .local v21, "$i$a$-fastMap-DropdownMenuPositionProvider$calculatePosition$xCandidates$1":I
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v22

    .line 376
    nop

    .line 372
    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object v8, v3

    move-wide/from16 v3, p2

    move/from16 v23, v5

    .end local v5    # "index$iv$iv":I
    .local v23, "index$iv$iv":I
    move/from16 v5, v22

    move/from16 v22, v6

    move-object/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroidx/compose/material3/MenuPosition$Horizontal;->position-95KtPRI(Landroidx/compose/ui/unit/IntRect;JILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v1

    .end local v20    # "it":Landroidx/compose/material3/MenuPosition$Horizontal;
    .end local v21    # "$i$a$-fastMap-DropdownMenuPositionProvider$calculatePosition$xCandidates$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 421
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    nop

    .line 420
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 418
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v23, 0x1

    move/from16 v6, v22

    const/4 v8, 0x3

    .end local v23    # "index$iv$iv":I
    .restart local v5    # "index$iv$iv":I
    goto :goto_1

    :cond_1
    move/from16 v23, v5

    .line 423
    .end local v5    # "index$iv$iv":I
    nop

    .line 424
    .end local v15    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    move-object v1, v14

    check-cast v1, Ljava/util/List;

    .line 371
    .end local v12    # "$this$fastMap$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastMap":I
    .end local v14    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 363
    nop

    .line 379
    .local v1, "xCandidates":Ljava/util/List;
    move-object v2, v1

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 425
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 426
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 427
    .local v5, "$i$f$fastForEach":I
    nop

    .line 428
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v6, v8, :cond_4

    .line 429
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 430
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 426
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    .local v16, "it":I
    const/16 v17, 0x0

    .line 380
    .local v17, "$i$a$-fastFirstOrNull-DropdownMenuPositionProvider$calculatePosition$x$1":I
    if-ltz v16, :cond_2

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v18

    add-int v12, v16, v18

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v11

    if-gt v12, v11, :cond_2

    move v11, v10

    goto :goto_3

    :cond_2
    move v11, v9

    .line 426
    .end local v16    # "it":I
    .end local v17    # "$i$a$-fastFirstOrNull-DropdownMenuPositionProvider$calculatePosition$x$1":I
    :goto_3
    if-eqz v11, :cond_3

    goto :goto_4

    .line 430
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 428
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x2

    goto :goto_2

    .line 432
    .end local v6    # "index$iv$iv":I
    :cond_4
    nop

    .line 433
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .line 379
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    .line 381
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 379
    :goto_5
    nop

    .line 384
    .local v2, "x":I
    const/4 v3, 0x4

    new-array v3, v3, [Landroidx/compose/material3/MenuPosition$Vertical;

    iget-object v4, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->topToAnchorBottom:Landroidx/compose/material3/MenuPosition$Vertical;

    aput-object v4, v3, v9

    .line 385
    iget-object v4, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->bottomToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

    aput-object v4, v3, v10

    .line 384
    nop

    .line 386
    iget-object v4, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->centerToAnchorTop:Landroidx/compose/material3/MenuPosition$Vertical;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 384
    nop

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/unit/IntRect;->getCenter-nOcc-ac()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v6

    div-int/2addr v6, v5

    if-ge v4, v6, :cond_6

    .line 388
    iget-object v4, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->topToWindowTop:Landroidx/compose/material3/MenuPosition$Vertical;

    goto :goto_6

    .line 390
    :cond_6
    iget-object v4, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->bottomToWindowBottom:Landroidx/compose/material3/MenuPosition$Vertical;

    :goto_6
    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 384
    nop

    .line 383
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 392
    nop

    .local v3, "$this$fastMap$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 434
    .local v4, "$i$f$fastMap":I
    nop

    .line 435
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v5, "target$iv":Ljava/util/ArrayList;
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 437
    .local v8, "$i$f$fastForEach":I
    nop

    .line 438
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    :goto_7
    if-ge v11, v12, :cond_7

    .line 439
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 440
    .restart local v13    # "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 441
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    move-object v10, v14

    check-cast v10, Landroidx/compose/material3/MenuPosition$Vertical;

    .local v10, "it":Landroidx/compose/material3/MenuPosition$Vertical;
    const/16 v18, 0x0

    .line 393
    .local v18, "$i$a$-fastMap-DropdownMenuPositionProvider$calculatePosition$yCandidates$1":I
    nop

    .line 394
    nop

    .line 395
    nop

    .line 396
    move-object/from16 v20, v1

    .end local v1    # "xCandidates":Ljava/util/List;
    .local v20, "xCandidates":Ljava/util/List;
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    .line 393
    move-object/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v3, p2

    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastMap":I
    .local v21, "$this$fastMap$iv":Ljava/util/List;
    .local v22, "$i$f$fastMap":I
    invoke-interface {v10, v7, v3, v4, v1}, Landroidx/compose/material3/MenuPosition$Vertical;->position-JVtK1S4(Landroidx/compose/ui/unit/IntRect;JI)I

    move-result v1

    .end local v10    # "it":Landroidx/compose/material3/MenuPosition$Vertical;
    .end local v18    # "$i$a$-fastMap-DropdownMenuPositionProvider$calculatePosition$yCandidates$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 442
    nop

    .line 440
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 438
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_7

    .end local v20    # "xCandidates":Ljava/util/List;
    .end local v21    # "$this$fastMap$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastMap":I
    .restart local v1    # "xCandidates":Ljava/util/List;
    .restart local v3    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastMap":I
    :cond_7
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v3, p2

    .line 443
    .end local v1    # "xCandidates":Ljava/util/List;
    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastMap":I
    .end local v11    # "index$iv$iv":I
    .restart local v20    # "xCandidates":Ljava/util/List;
    .restart local v21    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v22    # "$i$f$fastMap":I
    nop

    .line 444
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 392
    .end local v5    # "target$iv":Ljava/util/ArrayList;
    .end local v21    # "$this$fastMap$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastMap":I
    nop

    .line 383
    nop

    .line 399
    .local v1, "yCandidates":Ljava/util/List;
    move-object v5, v1

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 445
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 446
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 447
    .local v9, "$i$f$fastForEach":I
    nop

    .line 448
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_8
    if-ge v10, v11, :cond_b

    .line 449
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 450
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 446
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "it":I
    const/16 v18, 0x0

    .line 400
    .local v18, "$i$a$-fastFirstOrNull-DropdownMenuPositionProvider$calculatePosition$y$1":I
    iget v3, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    if-lt v15, v3, :cond_8

    .line 401
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v3

    add-int/2addr v3, v15

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v4

    move-object/from16 v21, v5

    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v21, "$this$fastFirstOrNull$iv":Ljava/util/List;
    iget v5, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_9

    const/4 v3, 0x1

    goto :goto_9

    .line 400
    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_8
    move-object/from16 v21, v5

    .line 401
    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_9
    const/4 v3, 0x0

    .line 400
    :goto_9
    nop

    .line 446
    .end local v15    # "it":I
    .end local v18    # "$i$a$-fastFirstOrNull-DropdownMenuPositionProvider$calculatePosition$y$1":I
    if-eqz v3, :cond_a

    move-object v12, v13

    goto :goto_a

    .line 450
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_a
    nop

    .line 448
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, p2

    move-object/from16 v5, v21

    goto :goto_8

    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_b
    move-object/from16 v21, v5

    .line 452
    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v10    # "index$iv$iv":I
    .restart local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 453
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 399
    .end local v6    # "$i$f$fastFirstOrNull":I
    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_a
    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    .line 402
    :cond_c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 399
    :goto_b
    nop

    .line 404
    .local v3, "y":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 405
    .local v4, "menuOffset":J
    iget-object v6, v0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    .line 406
    nop

    .line 407
    move-wide/from16 v8, p5

    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object v10

    .line 405
    invoke-interface {v6, v7, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-wide v4
.end method

.method public final component1-RKDOV3M()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    return-wide v0
.end method

.method public final component2()Landroidx/compose/ui/unit/Density;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    return v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntRect;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final copy-uVxBXkw(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;)Landroidx/compose/material3/DropdownMenuPositionProvider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/material3/DropdownMenuPositionProvider;"
        }
    .end annotation

    new-instance v7, Landroidx/compose/material3/DropdownMenuPositionProvider;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/DropdownMenuPositionProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/material3/DropdownMenuPositionProvider;

    iget-wide v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    iget-wide v5, v1, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    iget-object v4, v1, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    iget v4, v1, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    iget-object v1, v1, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getContentOffset-RKDOV3M()J
    .locals 2

    .line 324
    iget-wide v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    return-wide v0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getOnPositionCalculated()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntRect;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getVerticalMargin()I
    .locals 1

    .line 326
    iget v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropdownMenuPositionProvider(contentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpOffset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->verticalMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPositionCalculated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/DropdownMenuPositionProvider;->onPositionCalculated:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
