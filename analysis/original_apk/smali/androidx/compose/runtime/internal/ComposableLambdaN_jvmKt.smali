.class public final Landroidx/compose/runtime/internal/ComposableLambdaN_jvmKt;
.super Ljava/lang/Object;
.source "ComposableLambdaN.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaN_jvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,179:1\n1#2:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0007\u001a(\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "composableLambdaN",
        "Landroidx/compose/runtime/internal/ComposableLambdaN;",
        "composer",
        "Landroidx/compose/runtime/Composer;",
        "key",
        "",
        "tracked",
        "",
        "arity",
        "block",
        "",
        "composableLambdaNInstance",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final composableLambdaN(Landroidx/compose/runtime/Composer;IZILjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambdaN;
    .locals 3
    .param p0, "composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "key"    # I
    .param p2, "tracked"    # Z
    .param p3, "arity"    # I
    .param p4, "block"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 152
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 153
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "slot":Ljava/lang/Object;
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 155
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;-><init>(IZI)V

    .line 156
    .local v1, "value":Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    nop

    .end local v1    # "value":Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
    goto :goto_0

    .line 160
    :cond_0
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.internal.ComposableLambdaNImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    .line 154
    :goto_0
    nop

    .line 162
    .local v1, "result":Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
    invoke-virtual {v1, p4}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->update(Ljava/lang/Object;)V

    .line 163
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 164
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaN;

    return-object v2
.end method

.method public static final composableLambdaNInstance(IZILjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambdaN;
    .locals 3
    .param p0, "key"    # I
    .param p1, "tracked"    # Z
    .param p2, "arity"    # I
    .param p3, "block"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 174
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 174
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;-><init>(IZI)V

    .line 178
    move-object v1, v0

    .line 180
    .local v1, "$this$composableLambdaNInstance_u24lambda_u240":Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$a$-apply-ComposableLambdaN_jvmKt$composableLambdaNInstance$1":I
    invoke-virtual {v1, p3}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->update(Ljava/lang/Object;)V

    .end local v1    # "$this$composableLambdaNInstance_u24lambda_u240":Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
    .end local v2    # "$i$a$-apply-ComposableLambdaN_jvmKt$composableLambdaNInstance$1":I
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaN;

    return-object v0
.end method
