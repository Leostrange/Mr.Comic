.class public final Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion;
.super Ljava/lang/Object;
.source "DragAndDropNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/draganddrop/DragAndDropNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$DragAndDropTraversableKey;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00042\u0014\u0008\u0004\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006H\u0082\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion;",
        "",
        "()V",
        "firstChildOrNull",
        "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "DragAndDropTraversableKey",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion;-><init>()V

    return-void
.end method

.method private final firstChildOrNull(Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .locals 5
    .param p1, "$this$firstChildOrNull"    # Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    .local v0, "$i$f$firstChildOrNull":I
    invoke-interface {p1}, Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 124
    .local v1, "match":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    sget-object v3, Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$DragAndDropTraversableKey;->INSTANCE:Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$DragAndDropTraversableKey;

    new-instance v4, Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$firstChildOrNull$1;

    invoke-direct {v4, p2, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$firstChildOrNull$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 131
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;

    return-object v2
.end method
