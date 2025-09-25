.class final Landroidx/compose/foundation/CombinedClickableNodeImpl;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "Clickable.kt"

# interfaces
.implements Landroidx/compose/foundation/CombinedClickableNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002Ba\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011Jl\u0010\u001a\u001a\u00020\u00052\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u001bR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/foundation/CombinedClickableNodeImpl;",
        "Landroidx/compose/foundation/CombinedClickableNode;",
        "Landroidx/compose/foundation/AbstractClickableNode;",
        "onClick",
        "Lkotlin/Function0;",
        "",
        "onLongClickLabel",
        "",
        "onLongClick",
        "onDoubleClick",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "enabled",
        "",
        "onClickLabel",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "clickablePointerInputNode",
        "Landroidx/compose/foundation/CombinedClickablePointerInputNode;",
        "getClickablePointerInputNode",
        "()Landroidx/compose/foundation/CombinedClickablePointerInputNode;",
        "clickableSemanticsNode",
        "Landroidx/compose/foundation/ClickableSemanticsNode;",
        "getClickableSemanticsNode",
        "()Landroidx/compose/foundation/ClickableSemanticsNode;",
        "update",
        "update-xpl5gLE",
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


# instance fields
.field private final clickablePointerInputNode:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

.field private final clickableSemanticsNode:Landroidx/compose/foundation/ClickableSemanticsNode;

.field private onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 16
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "onLongClickLabel"    # Ljava/lang/String;
    .param p3, "onLongClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onDoubleClick"    # Lkotlin/jvm/functions/Function0;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "enabled"    # Z
    .param p7, "onClickLabel"    # Ljava/lang/String;
    .param p8, "role"    # Landroidx/compose/ui/semantics/Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    .line 676
    move-object/from16 v7, p0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 669
    move-object/from16 v0, p3

    iput-object v0, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 677
    nop

    .line 684
    iget-object v14, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 678
    new-instance v1, Landroidx/compose/foundation/ClickableSemanticsNode;

    .line 679
    nop

    .line 681
    nop

    .line 680
    nop

    .line 682
    nop

    .line 683
    nop

    .line 684
    const/4 v15, 0x0

    .line 678
    move-object v8, v1

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v15}, Landroidx/compose/foundation/ClickableSemanticsNode;-><init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    .line 677
    invoke-virtual {v7, v1}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/ClickableSemanticsNode;

    iput-object v1, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->clickableSemanticsNode:Landroidx/compose/foundation/ClickableSemanticsNode;

    .line 688
    nop

    .line 689
    new-instance v1, Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 690
    nop

    .line 691
    nop

    .line 692
    nop

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    move-result-object v12

    .line 694
    iget-object v13, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 695
    nop

    .line 689
    move-object v8, v1

    move-object/from16 v10, p5

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    .line 688
    invoke-virtual {v7, v1}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    iput-object v1, v7, Landroidx/compose/foundation/CombinedClickableNodeImpl;->clickablePointerInputNode:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 666
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/CombinedClickableNodeImpl;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClickablePointerInputNode()Landroidx/compose/foundation/AbstractClickablePointerInputNode;
    .locals 1

    .line 665
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->getClickablePointerInputNode()Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    return-object v0
.end method

.method public getClickablePointerInputNode()Landroidx/compose/foundation/CombinedClickablePointerInputNode;
    .locals 1

    .line 688
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->clickablePointerInputNode:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    return-object v0
.end method

.method public getClickableSemanticsNode()Landroidx/compose/foundation/ClickableSemanticsNode;
    .locals 1

    .line 677
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl;->clickableSemanticsNode:Landroidx/compose/foundation/ClickableSemanticsNode;

    return-object v0
.end method

.method public update-xpl5gLE(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 15
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "onLongClickLabel"    # Ljava/lang/String;
    .param p3, "onLongClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onDoubleClick"    # Lkotlin/jvm/functions/Function0;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "enabled"    # Z
    .param p7, "onClickLabel"    # Ljava/lang/String;
    .param p8, "role"    # Landroidx/compose/ui/semantics/Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    .line 711
    move-object v6, p0

    move-object/from16 v14, p3

    iget-object v0, v6, Landroidx/compose/foundation/CombinedClickableNodeImpl;->onLongClick:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    .line 712
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->disposeInteractionSource()V

    .line 714
    :cond_2
    iput-object v14, v6, Landroidx/compose/foundation/CombinedClickableNodeImpl;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 715
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->updateCommon-XHw0xAI(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 716
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->getClickableSemanticsNode()Landroidx/compose/foundation/ClickableSemanticsNode;

    move-result-object v7

    .line 717
    nop

    .line 719
    nop

    .line 718
    nop

    .line 720
    nop

    .line 721
    nop

    .line 722
    nop

    .line 716
    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/foundation/ClickableSemanticsNode;->update-UMe6uN4(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 724
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->getClickablePointerInputNode()Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    move-result-object v0

    .line 725
    nop

    .line 726
    nop

    .line 727
    nop

    .line 728
    nop

    .line 729
    nop

    .line 724
    move/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->update(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 731
    return-void
.end method
