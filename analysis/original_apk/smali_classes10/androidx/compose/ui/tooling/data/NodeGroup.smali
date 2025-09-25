.class public final Landroidx/compose/ui/tooling/data/NodeGroup;
.super Landroidx/compose/ui/tooling/data/Group;
.source "SlotTree.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001BK\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0010\rR\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/data/NodeGroup;",
        "Landroidx/compose/ui/tooling/data/Group;",
        "key",
        "",
        "node",
        "box",
        "Landroidx/compose/ui/unit/IntRect;",
        "data",
        "",
        "modifierInfo",
        "",
        "Landroidx/compose/ui/layout/ModifierInfo;",
        "children",
        "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/unit/IntRect;Ljava/util/Collection;Ljava/util/List;Ljava/util/Collection;)V",
        "getModifierInfo",
        "()Ljava/util/List;",
        "getNode",
        "()Ljava/lang/Object;",
        "ui-tooling-data_release"
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
.field private final modifierInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/tooling/data/NodeGroup;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/unit/IntRect;Ljava/util/Collection;Ljava/util/List;Ljava/util/Collection;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "node"    # Ljava/lang/Object;
    .param p3, "box"    # Landroidx/compose/ui/unit/IntRect;
    .param p4, "data"    # Ljava/util/Collection;
    .param p5, "modifierInfo"    # Ljava/util/List;
    .param p6, "children"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/compose/ui/tooling/data/Group;",
            ">;)V"
        }
    .end annotation

    .line 171
    move-object v10, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/tooling/data/Group;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceLocation;Ljava/lang/Object;Landroidx/compose/ui/unit/IntRect;Ljava/util/Collection;Ljava/util/Collection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    move-object v0, p2

    iput-object v0, v10, Landroidx/compose/ui/tooling/data/NodeGroup;->node:Ljava/lang/Object;

    .line 169
    move-object/from16 v1, p5

    iput-object v1, v10, Landroidx/compose/ui/tooling/data/NodeGroup;->modifierInfo:Ljava/util/List;

    .line 160
    return-void
.end method


# virtual methods
.method public getModifierInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/NodeGroup;->modifierInfo:Ljava/util/List;

    return-object v0
.end method

.method public final getNode()Ljava/lang/Object;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/NodeGroup;->node:Ljava/lang/Object;

    return-object v0
.end method
