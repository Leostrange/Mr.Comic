.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusTargetNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/focus/FocusTargetModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;,
        Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTargetNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FocusTransactionManager.kt\nandroidx/compose/ui/focus/FocusTransactionManager\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 10 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n*L\n1#1,231:1\n1#2:232\n1#2:240\n1#2:252\n1#2:376\n39#3,7:233\n46#3,4:243\n728#4,2:241\n92#5:247\n90#5:248\n94#5:320\n94#5:364\n90#5:365\n90#5:385\n94#5:387\n241#6,2:249\n58#6:251\n59#6,8:253\n243#6:261\n244#6,2:263\n385#6,12:265\n397#6,8:280\n405#6,9:291\n414#6,8:303\n247#6:311\n68#6,7:312\n248#6:319\n385#6,6:321\n395#6,2:328\n397#6,8:333\n405#6,9:344\n414#6,8:356\n50#6,9:367\n59#6,8:377\n385#6,6:388\n395#6,2:395\n397#6,8:400\n405#6,9:411\n414#6,8:423\n68#6,7:431\n261#7:262\n261#7:327\n261#7:386\n261#7:394\n234#8,3:277\n237#8,3:300\n234#8,3:330\n237#8,3:353\n234#8,3:397\n237#8,3:420\n1208#9:288\n1187#9,2:289\n1208#9:341\n1187#9,2:342\n1208#9:408\n1187#9,2:409\n47#10:366\n*S KotlinDebug\n*F\n+ 1 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n*L\n86#1:240\n99#1:252\n196#1:376\n86#1:233,7\n86#1:243,4\n86#1:241,2\n99#1:247\n99#1:248\n189#1:320\n196#1:364\n196#1:365\n197#1:385\n200#1:387\n99#1:249,2\n99#1:251\n99#1:253,8\n99#1:261\n99#1:263,2\n99#1:265,12\n99#1:280,8\n99#1:291,9\n99#1:303,8\n99#1:311\n99#1:312,7\n99#1:319\n189#1:321,6\n189#1:328,2\n189#1:333,8\n189#1:344,9\n189#1:356,8\n196#1:367,9\n196#1:377,8\n200#1:388,6\n200#1:395,2\n200#1:400,8\n200#1:411,9\n200#1:423,8\n196#1:431,7\n99#1:262\n189#1:327\n197#1:386\n200#1:394\n99#1:277,3\n99#1:300,3\n189#1:330,3\n189#1:353,3\n200#1:397,3\n200#1:420,3\n99#1:288\n99#1:289,2\n189#1:341\n189#1:342,2\n200#1:408\n200#1:409,2\n196#1:366\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u00013B\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008\u001fJ/\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001e0$H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J/\u0010(\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001e0$H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010\'J\r\u0010*\u001a\u00020+H\u0000\u00a2\u0006\u0002\u0008,J\r\u0010-\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008.J\u0008\u0010/\u001a\u00020\u001eH\u0016J\u0008\u00100\u001a\u00020\u001eH\u0016J\r\u00101\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u00082R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c8V@VX\u0096\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u000f\u0010\u0006\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00064"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "()V",
        "beyondBoundsLayoutParent",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "getBeyondBoundsLayoutParent",
        "()Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "committedFocusState",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        "value",
        "focusState",
        "getFocusState$annotations",
        "getFocusState",
        "()Landroidx/compose/ui/focus/FocusStateImpl;",
        "setFocusState",
        "(Landroidx/compose/ui/focus/FocusStateImpl;)V",
        "isProcessingCustomEnter",
        "",
        "isProcessingCustomExit",
        "previouslyFocusedChildHash",
        "",
        "getPreviouslyFocusedChildHash",
        "()I",
        "setPreviouslyFocusedChildHash",
        "(I)V",
        "commitFocusState",
        "",
        "commitFocusState$ui_release",
        "fetchCustomEnter",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "fetchCustomEnter-aToIllA$ui_release",
        "(ILkotlin/jvm/functions/Function1;)V",
        "fetchCustomExit",
        "fetchCustomExit-aToIllA$ui_release",
        "fetchFocusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "fetchFocusProperties$ui_release",
        "invalidateFocus",
        "invalidateFocus$ui_release",
        "onObservedReadsChanged",
        "onReset",
        "scheduleInvalidationForFocusEvents",
        "scheduleInvalidationForFocusEvents$ui_release",
        "FocusTargetElement",
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


# instance fields
.field private committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

.field private isProcessingCustomEnter:Z

.field private isProcessingCustomExit:Z

.field private previouslyFocusedChildHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/focus/FocusTargetNode;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 52
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 40
    return-void
.end method

.method public static final synthetic access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 40
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return v0
.end method

.method public static final synthetic access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 40
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return v0
.end method

.method public static final synthetic access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "<set-?>"    # Z

    .line 40
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomEnter:Z

    return-void
.end method

.method public static final synthetic access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "<set-?>"    # Z

    .line 40
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->isProcessingCustomExit:Z

    return-void
.end method

.method public static synthetic getFocusState$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final commitFocusState$ui_release()V
    .locals 4

    .line 160
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->requireTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    .local v0, "$this$commitFocusState_u24lambda_u247":Landroidx/compose/ui/focus/FocusTransactionManager;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$a$-with-FocusTargetNode$commitFocusState$1":I
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusTransactionManager;->getUncommittedFocusState(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 164
    nop

    .line 160
    .end local v0    # "$this$commitFocusState_u24lambda_u247":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v1    # "$i$a$-with-FocusTargetNode$commitFocusState$1":I
    nop

    .line 165
    return-void

    .line 161
    .restart local v0    # "$this$commitFocusState_u24lambda_u247":Landroidx/compose/ui/focus/FocusTransactionManager;
    .restart local v1    # "$i$a$-with-FocusTargetNode$commitFocusState$1":I
    :cond_0
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-checkNotNull-FocusTargetNode$commitFocusState$1$1":I
    nop

    .line 161
    .end local v2    # "$i$a$-checkNotNull-FocusTargetNode$commitFocusState$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "committing a node that was not updated in the current transaction"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final fetchCustomEnter-aToIllA$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "focusDirection"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    .local v0, "$i$f$fetchCustomEnter-aToIllA$ui_release":I
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 121
    nop

    .line 123
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusProperties;->getEnter()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusRequester;

    .local v3, "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$a$-also-FocusTargetNode$fetchCustomEnter$1":I
    sget-object v5, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v5

    if-eq v3, v5, :cond_0

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    nop

    .line 123
    .end local v3    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v4    # "$i$a$-also-FocusTargetNode$fetchCustomEnter$1":I
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 127
    invoke-static {p0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 128
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method public final fetchCustomExit-aToIllA$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "focusDirection"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$fetchCustomExit-aToIllA$ui_release":I
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 148
    nop

    .line 150
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/focus/FocusProperties;->getExit()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/focus/FocusRequester;

    .local v3, "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v4, 0x0

    .line 151
    .local v4, "$i$a$-also-FocusTargetNode$fetchCustomExit$1":I
    sget-object v5, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v5

    if-eq v3, v5, :cond_0

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    nop

    .line 150
    .end local v3    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v4    # "$i$a$-also-FocusTargetNode$fetchCustomExit$1":I
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 154
    invoke-static {p0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 155
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3

    .line 157
    :cond_1
    :goto_0
    return-void
.end method

.method public final fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;
    .locals 32

    .line 98
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    .line 99
    .local v0, "properties":Landroidx/compose/ui/focus/FocusPropertiesImpl;
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 247
    .local v2, "$i$f$getFocusProperties-OLwlOKw":I
    const/16 v3, 0x800

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 99
    .end local v2    # "$i$f$getFocusProperties-OLwlOKw":I
    const/4 v3, 0x0

    .line 248
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 99
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "type$iv":I
    .local v3, "untilType$iv":I
    const/4 v4, 0x0

    .line 249
    .local v4, "$i$f$visitSelfAndAncestors-5BbP62I":I
    invoke-interface {v1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 250
    .local v5, "self$iv":Landroidx/compose/ui/Modifier$Node;
    or-int v6, v2, v3

    .local v6, "mask$iv$iv":I
    const/4 v7, 0x1

    .local v7, "includeSelf$iv$iv":Z
    move-object v8, v1

    .local v8, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 251
    .local v9, "$i$f$visitAncestors":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 253
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 254
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 255
    .local v11, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v11, :cond_15

    .line 256
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 257
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_13

    .line 258
    :goto_1
    if-eqz v10, :cond_12

    .line 259
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_11

    .line 260
    move-object v13, v10

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 261
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    if-eq v13, v5, :cond_1

    move-object/from16 v16, v13

    .local v16, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 262
    .local v17, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v3

    if-eqz v18, :cond_0

    const/16 v16, 0x1

    goto :goto_2

    :cond_0
    const/16 v16, 0x0

    .line 261
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-nez v16, :cond_16

    .line 263
    :cond_1
    move-object/from16 v16, v13

    .restart local v16    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 262
    .restart local v17    # "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v2

    if-eqz v18, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 263
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v16, :cond_10

    .line 264
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 265
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 266
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v15, v19

    .line 267
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v15, "node$iv$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v15, :cond_f

    .line 268
    move-object/from16 v20, v1

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v1, v15, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_3

    .line 269
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .local v1, "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    const/16 v21, 0x0

    .line 100
    .local v21, "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$fetchFocusProperties$1":I
    move/from16 v22, v3

    .end local v3    # "untilType$iv":I
    .local v22, "untilType$iv":I
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/focus/FocusProperties;

    invoke-interface {v1, v3}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 101
    nop

    .line 269
    .end local v1    # "it":Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
    .end local v21    # "$i$a$-visitSelfAndAncestors-5BbP62I-FocusTargetNode$fetchFocusProperties$1":I
    move/from16 v26, v2

    move/from16 v31, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_b

    .line 270
    .end local v22    # "untilType$iv":I
    .restart local v3    # "untilType$iv":I
    :cond_3
    move/from16 v22, v3

    .end local v3    # "untilType$iv":I
    .restart local v22    # "untilType$iv":I
    move-object v1, v15

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 262
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v2

    if-eqz v21, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 270
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v1, :cond_d

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_d

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "count$iv$iv":I
    move-object v3, v15

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 277
    .local v21, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 278
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v23, :cond_c

    .line 279
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 280
    .local v25, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 262
    .local v27, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v28

    and-int v28, v28, v2

    if-eqz v28, :cond_5

    const/16 v26, 0x1

    goto :goto_7

    :cond_5
    const/16 v26, 0x0

    .line 280
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_7
    if-eqz v26, :cond_b

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 282
    move/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "type$iv":I
    .local v26, "type$iv":I
    if-ne v1, v2, :cond_6

    .line 283
    move-object/from16 v15, v24

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v3, v24

    const/4 v4, 0x0

    goto :goto_a

    .line 287
    :cond_6
    if-nez v18, :cond_7

    const/4 v2, 0x0

    .line 288
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 289
    move/from16 v27, v1

    .end local v1    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 290
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v30, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .local v31, "$i$f$visitSelfAndAncestors-5BbP62I":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 288
    .end local v1    # "capacity$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    goto :goto_8

    .line 287
    .end local v27    # "count$iv$iv":I
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .local v1, "count$iv$iv":I
    .restart local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_7
    move/from16 v27, v1

    move-object/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v27    # "count$iv$iv":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    move-object/from16 v2, v18

    :goto_8
    move-object v1, v2

    .line 291
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v2, v15

    .line 292
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_9

    .line 293
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_8
    const/4 v3, 0x0

    move-object v15, v3

    .line 296
    :cond_9
    if-eqz v1, :cond_a

    move-object/from16 v3, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v3, v24

    .line 299
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    move-object/from16 v18, v1

    move/from16 v1, v27

    goto :goto_a

    .line 280
    .end local v26    # "type$iv":I
    .end local v27    # "count$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .local v1, "count$iv$iv":I
    .local v2, "type$iv":I
    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move/from16 v26, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v3, v24

    const/4 v4, 0x0

    .line 299
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :goto_a
    nop

    .line 279
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 300
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v2, v26

    move-object/from16 v3, v30

    move/from16 v4, v31

    goto :goto_6

    .line 302
    .end local v26    # "type$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v2    # "type$iv":I
    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_c
    move/from16 v26, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .line 303
    .end local v2    # "type$iv":I
    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v21    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 305
    move-object/from16 v1, v20

    move/from16 v3, v22

    move/from16 v2, v26

    move/from16 v4, v31

    goto/16 :goto_4

    .line 270
    .end local v1    # "count$iv$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v2    # "type$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_d
    move/from16 v26, v2

    move/from16 v31, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 308
    .end local v2    # "type$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_e
    :goto_b
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v1, v20

    move/from16 v3, v22

    move/from16 v2, v26

    move/from16 v4, v31

    goto/16 :goto_4

    .line 310
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .local v1, "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .local v3, "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_f
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    goto :goto_c

    .line 263
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_10
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .line 311
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :goto_c
    nop

    .line 260
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1$iv":I
    goto :goto_d

    .line 259
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_11
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .line 312
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :goto_d
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v1, v20

    move/from16 v3, v22

    move/from16 v2, v26

    move/from16 v4, v31

    goto/16 :goto_1

    .line 258
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_12
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    goto :goto_e

    .line 257
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_13
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .line 315
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :goto_e
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 316
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    :goto_f
    move-object v10, v1

    move-object/from16 v1, v20

    move/from16 v3, v22

    move/from16 v2, v26

    move/from16 v4, v31

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 318
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_15
    move-object/from16 v20, v1

    move/from16 v26, v2

    move/from16 v22, v3

    move/from16 v31, v4

    .line 319
    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .end local v3    # "untilType$iv":I
    .end local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitAncestors":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "untilType$iv":I
    .restart local v26    # "type$iv":I
    .restart local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    nop

    .line 102
    .end local v5    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v22    # "untilType$iv":I
    .end local v26    # "type$iv":I
    .end local v31    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    :cond_16
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/focus/FocusProperties;

    return-object v1

    .line 252
    .restart local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "type$iv":I
    .restart local v3    # "untilType$iv":I
    .restart local v4    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v5    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v6    # "mask$iv$iv":I
    .restart local v7    # "includeSelf$iv$iv":Z
    .restart local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v9    # "$i$f$visitAncestors":I
    :cond_17
    move-object/from16 v20, v1

    move/from16 v26, v2

    .end local v1    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "type$iv":I
    .restart local v20    # "$this$visitSelfAndAncestors_u2d5BbP62I$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "type$iv":I
    const/4 v1, 0x0

    .line 251
    .local v1, "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .end local v1    # "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "visitAncestors called on an unattached node"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    return-object v0
.end method

.method public bridge synthetic getFocusState()Landroidx/compose/ui/focus/FocusState;
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    return-object v0
.end method

.method public getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 2

    .line 56
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->access$getFocusTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    .local v0, "$this$_get_focusState__u24lambda_u240":Landroidx/compose/ui/focus/FocusTransactionManager;
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$a$-run-FocusTargetNode$focusState$1":I
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusTransactionManager;->getUncommittedFocusState(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    .end local v0    # "$this$_get_focusState__u24lambda_u240":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v1    # "$i$a$-run-FocusTargetNode$focusState$1":I
    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->committedFocusState:Landroidx/compose/ui/focus/FocusStateImpl;

    :cond_1
    return-object v0
.end method

.method public final getPreviouslyFocusedChildHash()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->previouslyFocusedChildHash:I

    return v0
.end method

.method public final invalidateFocus$ui_release()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 173
    :pswitch_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 174
    .local v0, "focusProperties":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    invoke-direct {v2, v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 177
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string/jumbo v1, "focusProperties"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/focus/FocusProperties;

    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus(Z)V

    .line 184
    .end local v0    # "focusProperties":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    .line 70
    .local v0, "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 5

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->scheduleInvalidationForFocusEvents$ui_release()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->scheduleInvalidationForFocusEvents$ui_release()V

    .line 86
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->requireTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    .line 233
    .local v0, "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    nop

    .line 234
    const/4 v1, 0x0

    .line 233
    .local v1, "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 236
    .local v2, "$i$f$withNewTransaction":I
    nop

    .line 237
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 238
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 239
    nop

    .line 243
    const/4 v3, 0x0

    .line 86
    .local v3, "$i$a$-withNewTransaction$default-FocusTargetNode$onReset$1":I
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .end local v3    # "$i$a$-withNewTransaction$default-FocusTargetNode$onReset$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    nop

    .line 245
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 246
    nop

    .end local v0    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v1    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$withNewTransaction":I
    goto :goto_0

    .line 245
    .restart local v0    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .restart local v1    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$withNewTransaction":I
    :catchall_0
    move-exception v3

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw v3

    .line 82
    .end local v0    # "$this$iv":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v1    # "onCancelled$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$withNewTransaction":I
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus(Z)V

    .line 90
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleInvalidationForFocusEvents$ui_release()V
    .locals 28

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    .line 320
    .local v1, "$i$f$getFocusEvent-OLwlOKw":I
    const/16 v2, 0x1000

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 189
    .end local v1    # "$i$f$getFocusEvent-OLwlOKw":I
    nop

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "kind$iv":I
    const/4 v3, 0x0

    .line 321
    .local v3, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v4, 0x0

    .line 322
    .local v4, "stack$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "node$iv":Ljava/lang/Object;
    move-object v5, v0

    .line 323
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_a

    .line 324
    instance-of v8, v5, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v8, :cond_0

    .line 325
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .local v6, "eventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    const/4 v7, 0x0

    .line 190
    .local v7, "$i$a$-dispatchForKind-6rFNWt0-FocusTargetNode$scheduleInvalidationForFocusEvents$1":I
    invoke-static {v6}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    .line 191
    nop

    .line 325
    .end local v6    # "eventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .end local v7    # "$i$a$-dispatchForKind-6rFNWt0-FocusTargetNode$scheduleInvalidationForFocusEvents$1":I
    goto/16 :goto_6

    .line 326
    :cond_0
    move-object v8, v5

    .local v8, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 327
    .local v9, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v1

    if-eqz v10, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    .line 326
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v8, :cond_9

    instance-of v8, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_9

    .line 328
    const/4 v8, 0x0

    .line 329
    .local v8, "count$iv":I
    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v10, 0x0

    .line 330
    .local v10, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 331
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v11, :cond_8

    .line 332
    move-object v12, v11

    .local v12, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 333
    .local v13, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object v14, v12

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 327
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v1

    if-eqz v16, :cond_2

    move v14, v7

    goto :goto_3

    :cond_2
    move v14, v6

    .line 333
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v14, :cond_7

    .line 334
    add-int/lit8 v8, v8, 0x1

    .line 335
    if-ne v8, v7, :cond_3

    .line 336
    move-object v5, v12

    goto :goto_5

    .line 340
    :cond_3
    if-nez v4, :cond_4

    const/4 v14, 0x0

    .line 341
    .local v14, "$i$f$mutableVectorOf":I
    nop

    .line 342
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv":I
    const/16 v16, 0x0

    .line 343
    .local v16, "$i$f$MutableVector":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v15, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v7, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 341
    .end local v15    # "capacity$iv$iv$iv":I
    .end local v16    # "$i$f$MutableVector":I
    goto :goto_4

    .line 340
    .end local v14    # "$i$f$mutableVectorOf":I
    :cond_4
    move-object v2, v4

    :goto_4
    move-object v4, v2

    .line 344
    move-object v2, v5

    .line 345
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_6

    .line 346
    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_5
    const/4 v5, 0x0

    .line 349
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    :goto_5
    nop

    .line 332
    .end local v12    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 353
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    const/16 v2, 0x1000

    const/4 v7, 0x1

    goto :goto_2

    .line 355
    :cond_8
    nop

    .line 356
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v10    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x1

    if-ne v8, v2, :cond_9

    .line 358
    const/16 v2, 0x1000

    goto :goto_0

    .line 361
    .end local v8    # "count$iv":I
    :cond_9
    :goto_6
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    const/16 v2, 0x1000

    goto :goto_0

    .line 363
    :cond_a
    nop

    .line 196
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "kind$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "stack$iv":Ljava/lang/Object;
    .end local v5    # "node$iv":Ljava/lang/Object;
    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 364
    .local v1, "$i$f$getFocusEvent-OLwlOKw":I
    const/16 v2, 0x1000

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 196
    .end local v1    # "$i$f$getFocusEvent-OLwlOKw":I
    const/4 v2, 0x0

    .line 365
    .local v2, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v3, 0x400

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 196
    .end local v2    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "arg0$iv":I
    .local v2, "other$iv":I
    const/4 v4, 0x0

    .line 366
    .local v4, "$i$f$or-H91voCI":I
    or-int/2addr v1, v2

    .line 196
    .end local v1    # "arg0$iv":I
    .end local v2    # "other$iv":I
    .end local v4    # "$i$f$or-H91voCI":I
    nop

    .line 367
    .local v0, "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "mask$iv":I
    nop

    .line 369
    const/4 v2, 0x0

    .line 367
    .local v2, "includeSelf$iv":Z
    const/4 v4, 0x0

    .line 375
    .local v4, "$i$f$visitAncestors":I
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 377
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 378
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 379
    .local v7, "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_7
    if-eqz v7, :cond_1f

    .line 380
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 381
    .local v8, "head$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_1d

    .line 382
    :goto_8
    if-eqz v5, :cond_1c

    .line 383
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_1b

    .line 384
    move-object v9, v5

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 197
    .local v10, "$i$a$-visitAncestors$default-FocusTargetNode$scheduleInvalidationForFocusEvents$2":I
    const/4 v11, 0x0

    .line 385
    .local v11, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 197
    .end local v11    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v11, "kind$iv":I
    move-object v12, v9

    .local v12, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 386
    .local v13, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v11

    if-eqz v14, :cond_b

    const/4 v11, 0x1

    goto :goto_9

    :cond_b
    move v11, v6

    .line 197
    .end local v11    # "kind$iv":I
    .end local v12    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_9
    if-nez v11, :cond_1a

    .line 199
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 200
    const/4 v11, 0x0

    .line 387
    .local v11, "$i$f$getFocusEvent-OLwlOKw":I
    const/16 v12, 0x1000

    invoke-static {v12}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 200
    .end local v11    # "$i$f$getFocusEvent-OLwlOKw":I
    nop

    .local v11, "kind$iv":I
    move-object v13, v9

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 388
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 389
    .local v15, "stack$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v3, v16

    .line 390
    .end local v16    # "node$iv":Ljava/lang/Object;
    .local v3, "node$iv":Ljava/lang/Object;
    :goto_a
    if-eqz v3, :cond_18

    .line 391
    instance-of v12, v3, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v12, :cond_c

    .line 392
    move-object v12, v3

    check-cast v12, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .local v12, "eventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    const/16 v17, 0x0

    .line 201
    .local v17, "$i$a$-dispatchForKind-6rFNWt0-FocusTargetNode$scheduleInvalidationForFocusEvents$2$1":I
    invoke-static {v12}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    .line 202
    nop

    .line 392
    .end local v12    # "eventNode":Landroidx/compose/ui/focus/FocusEventModifierNode;
    .end local v17    # "$i$a$-dispatchForKind-6rFNWt0-FocusTargetNode$scheduleInvalidationForFocusEvents$2$1":I
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    goto/16 :goto_10

    .line 393
    :cond_c
    move-object v12, v3

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 394
    .local v17, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v11

    if-eqz v18, :cond_d

    const/4 v12, 0x1

    goto :goto_b

    :cond_d
    move v12, v6

    .line 393
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_b
    if-eqz v12, :cond_16

    instance-of v12, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_16

    .line 395
    const/4 v12, 0x0

    .line 396
    .local v12, "count$iv":I
    move-object/from16 v17, v3

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 397
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 398
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    if-eqz v19, :cond_15

    .line 399
    move-object/from16 v20, v19

    .local v20, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 400
    .local v21, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v22, v20

    .local v22, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 394
    .local v23, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v24

    and-int v24, v24, v11

    if-eqz v24, :cond_e

    const/16 v22, 0x1

    goto :goto_d

    :cond_e
    move/from16 v22, v6

    .line 400
    .end local v22    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_d
    if-eqz v22, :cond_14

    .line 401
    add-int/lit8 v12, v12, 0x1

    .line 402
    const/4 v6, 0x1

    if-ne v12, v6, :cond_f

    .line 403
    move-object/from16 v3, v20

    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v2, v20

    const/4 v0, 0x0

    goto :goto_f

    .line 407
    :cond_f
    if-nez v15, :cond_10

    const/4 v6, 0x0

    .line 408
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 409
    move-object/from16 v23, v0

    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v23, "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v24, 0x0

    .line 410
    .local v24, "$i$f$MutableVector":I
    move/from16 v25, v1

    .end local v1    # "mask$iv":I
    .local v25, "mask$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v26, v2

    .end local v2    # "includeSelf$iv":Z
    .local v26, "includeSelf$iv":Z
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v27, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv":I
    .local v27, "capacity$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 408
    .end local v24    # "$i$f$MutableVector":I
    .end local v27    # "capacity$iv$iv$iv":I
    goto :goto_e

    .line 407
    .end local v6    # "$i$f$mutableVectorOf":I
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .local v0, "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_10
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    const/4 v0, 0x0

    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    move-object v1, v15

    :goto_e
    move-object v15, v1

    .line 411
    move-object v1, v3

    .line 412
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_12

    .line 413
    if-eqz v15, :cond_11

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_11
    const/4 v2, 0x0

    move-object v3, v2

    .line 416
    :cond_12
    if-eqz v15, :cond_13

    move-object/from16 v2, v20

    .end local v20    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v2, v20

    .end local v20    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_f

    .line 400
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "mask$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v20    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_14
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    move-object/from16 v2, v20

    .line 419
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v20    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :goto_f
    nop

    .line 399
    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 420
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move v6, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    goto :goto_c

    .line 422
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .local v2, "includeSelf$iv":Z
    :cond_15
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    .line 423
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    const/4 v1, 0x1

    if-ne v12, v1, :cond_17

    .line 425
    move v6, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    const/16 v12, 0x1000

    goto/16 :goto_a

    .line 393
    .end local v12    # "count$iv":I
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_16
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .line 428
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :cond_17
    :goto_10
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move v6, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    const/16 v12, 0x1000

    goto/16 :goto_a

    .line 430
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_18
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    goto :goto_11

    .line 199
    .end local v3    # "node$iv":Ljava/lang/Object;
    .end local v11    # "kind$iv":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv":Ljava/lang/Object;
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_19
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .line 204
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :goto_11
    goto :goto_12

    .line 197
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_1a
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .line 384
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitAncestors$default-FocusTargetNode$scheduleInvalidationForFocusEvents$2":I
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :goto_12
    goto :goto_13

    .line 383
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_1b
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .line 431
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :goto_13
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move v6, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    const/16 v3, 0x400

    goto/16 :goto_8

    .line 382
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_1c
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    goto :goto_14

    .line 381
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_1d
    move-object/from16 v23, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move v0, v6

    const/4 v1, 0x1

    .line 434
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "includeSelf$iv":Z
    :goto_14
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 435
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_15

    :cond_1e
    const/4 v2, 0x0

    :goto_15
    move-object v5, v2

    move v6, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    const/16 v3, 0x400

    .end local v8    # "head$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_7

    .line 437
    .end local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .end local v26    # "includeSelf$iv":Z
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    :cond_1f
    nop

    .line 205
    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    return-void

    .line 376
    .restart local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "mask$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors":I
    :cond_20
    move-object/from16 v23, v0

    move/from16 v25, v1

    .end local v0    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "mask$iv":I
    .restart local v23    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    const/4 v0, 0x0

    .line 375
    .local v0, "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitAncestors$1$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 2
    .param p1, "value"    # Landroidx/compose/ui/focus/FocusStateImpl;

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->requireTransactionManager(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    .local v0, "$this$_set_focusState__u24lambda_u241":Landroidx/compose/ui/focus/FocusTransactionManager;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-with-FocusTargetNode$focusState$2":I
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/focus/FocusTransactionManager;->setUncommittedFocusState(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 60
    nop

    .line 58
    .end local v0    # "$this$_set_focusState__u24lambda_u241":Landroidx/compose/ui/focus/FocusTransactionManager;
    .end local v1    # "$i$a$-with-FocusTargetNode$focusState$2":I
    nop

    .line 61
    return-void
.end method

.method public final setPreviouslyFocusedChildHash(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 63
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->previouslyFocusedChildHash:I

    return-void
.end method
