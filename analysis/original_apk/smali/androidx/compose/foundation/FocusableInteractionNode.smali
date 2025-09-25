.class final Landroidx/compose/foundation/FocusableInteractionNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Focusable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\r\u001a\u00020\u0008*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/FocusableInteractionNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V",
        "focusedInteraction",
        "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
        "disposeInteractionSource",
        "",
        "setFocus",
        "isFocused",
        "",
        "update",
        "emitWithFallback",
        "interaction",
        "Landroidx/compose/foundation/interaction/Interaction;",
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
.field private focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 262
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 261
    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 260
    return-void
.end method

.method private final disposeInteractionSource()V
    .locals 6

    .line 299
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_0

    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$a$-let-FocusableInteractionNode$disposeInteractionSource$1":I
    iget-object v2, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v2, :cond_0

    .local v2, "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    const/4 v3, 0x0

    .line 301
    .local v3, "$i$a$-let-FocusableInteractionNode$disposeInteractionSource$1$1":I
    new-instance v4, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v4, v2}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 302
    .local v4, "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v0, v5}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 300
    .end local v2    # "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    .end local v3    # "$i$a$-let-FocusableInteractionNode$disposeInteractionSource$1$1":I
    .end local v4    # "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    nop

    .line 299
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "$i$a$-let-FocusableInteractionNode$disposeInteractionSource$1":I
    :cond_0
    nop

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 306
    return-void
.end method

.method private final emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 7
    .param p1, "$this$emitWithFallback"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;

    .line 309
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v4}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {p1, p2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 316
    :goto_0
    return-void
.end method


# virtual methods
.method public final setFocus(Z)V
    .locals 7
    .param p1, "isFocused"    # Z

    .line 271
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v0, :cond_3

    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$a$-let-FocusableInteractionNode$setFocus$1":I
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 273
    iget-object v3, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v3, :cond_0

    .local v3, "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    const/4 v4, 0x0

    .line 274
    .local v4, "$i$a$-let-FocusableInteractionNode$setFocus$1$1":I
    new-instance v5, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 275
    .local v5, "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    invoke-direct {p0, v0, v6}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 276
    iput-object v2, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 277
    nop

    .line 273
    .end local v3    # "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    .end local v4    # "$i$a$-let-FocusableInteractionNode$setFocus$1$1":I
    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    nop

    .line 278
    :cond_0
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-direct {v2}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    .line 279
    .local v2, "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    invoke-direct {p0, v0, v3}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 280
    iput-object v2, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .end local v2    # "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    goto :goto_0

    .line 282
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v3, :cond_2

    .restart local v3    # "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$a$-let-FocusableInteractionNode$setFocus$1$2":I
    new-instance v5, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 284
    .restart local v5    # "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    invoke-direct {p0, v0, v6}, Landroidx/compose/foundation/FocusableInteractionNode;->emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 285
    iput-object v2, p0, Landroidx/compose/foundation/FocusableInteractionNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 286
    nop

    .line 282
    .end local v3    # "oldValue":Landroidx/compose/foundation/interaction/FocusInteraction$Focus;
    .end local v4    # "$i$a$-let-FocusableInteractionNode$setFocus$1$2":I
    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;
    nop

    .line 272
    :cond_2
    :goto_0
    nop

    .line 271
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "$i$a$-let-FocusableInteractionNode$setFocus$1":I
    nop

    .line 289
    :cond_3
    return-void
.end method

.method public final update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 1
    .param p1, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->disposeInteractionSource()V

    .line 294
    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 296
    :cond_0
    return-void
.end method
