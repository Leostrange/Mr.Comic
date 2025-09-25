.class public final Landroidx/compose/foundation/text2/input/TextFieldStateKt;
.super Ljava/lang/Object;
.source "TextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n1#1,569:1\n1116#2,6:570\n123#3,4:576\n123#3,4:580\n123#3,4:584\n*S KotlinDebug\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldStateKt\n*L\n472#1:570,6\n495#1:576,4\n520#1:580,4\n543#1:584,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a&\u0010\u0004\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0001H\u0007\u001a6\u0010\r\u001a\u00020\u000e*\u00020\u00012\"\u0010\u000f\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0010H\u0087@\u00a2\u0006\u0002\u0010\u0014\u001a\u0014\u0010\u0015\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0006H\u0007\u001a\u0014\u0010\u0017\u001a\u00020\u000c*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0006H\u0007\u001a\u0012\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0019*\u00020\u0001H\u0007\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "TextFieldState",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "initialValue",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "rememberTextFieldState",
        "initialText",
        "",
        "initialSelectionInChars",
        "Landroidx/compose/ui/text/TextRange;",
        "rememberTextFieldState-Le-punE",
        "(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text2/input/TextFieldState;",
        "clearText",
        "",
        "forEachTextValue",
        "",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setTextAndPlaceCursorAtEnd",
        "text",
        "setTextAndSelectAll",
        "textAsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "foundation_release"
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
.method public static final TextFieldState(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/foundation/text2/input/TextFieldState;
    .locals 5
    .param p0, "initialValue"    # Landroidx/compose/ui/text/input/TextFieldValue;

    .line 41
    new-instance v0, Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    .line 41
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/text2/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final clearText(Landroidx/compose/foundation/text2/input/TextFieldState;)V
    .locals 7
    .param p0, "$this$clearText"    # Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 543
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 584
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v2

    .line 585
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    move-object v3, v2

    .local v3, "$this$clearText_u24lambda_u243":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 544
    .local v4, "$i$a$-edit-TextFieldStateKt$clearText$1":I
    const/4 v5, 0x0

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldBufferKt;->delete(Landroidx/compose/foundation/text2/input/TextFieldBuffer;II)V

    .line 545
    invoke-static {v3}, Landroidx/compose/foundation/text2/input/TextFieldBufferKt;->placeCursorAtEnd(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 546
    nop

    .line 585
    .end local v3    # "$this$clearText_u24lambda_u243":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$clearText$1":I
    nop

    .line 586
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 587
    nop

    .line 547
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    return-void
.end method

.method public static final forEachTextValue(Landroidx/compose/foundation/text2/input/TextFieldState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;

    iget v1, v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 563
    iget v2, p2, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    .local p0, "$this$forEachTextValue":Landroidx/compose/foundation/text2/input/TextFieldState;
    .local p1, "block":Lkotlin/jvm/functions/Function2;
    invoke-static {p0}, Landroidx/compose/foundation/text2/input/TextFieldStateKt;->textAsFlow(Landroidx/compose/foundation/text2/input/TextFieldState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, p2, Landroidx/compose/foundation/text2/input/TextFieldStateKt$forEachTextValue$1;->label:I

    invoke-static {v2, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$forEachTextValue":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local p1    # "block":Lkotlin/jvm/functions/Function2;
    if-ne p0, v1, :cond_1

    .line 563
    return-object v1

    .line 567
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "textAsFlow expected not to complete without exception"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final rememberTextFieldState-Le-punE(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text2/input/TextFieldState;
    .locals 9
    .param p0, "initialText"    # Ljava/lang/String;
    .param p1, "initialSelectionInChars"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    const v0, -0x32ff5935

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberTextFieldState)P(1,0:c#ui.text.TextRange)471@18563L107:TextFieldState.kt#b7kqo7"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 470
    const-string p0, ""

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 472
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.text2.input.rememberTextFieldState (TextFieldState.kt:471)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Object;

    sget-object p5, Landroidx/compose/foundation/text2/input/TextFieldState$Saver;->INSTANCE:Landroidx/compose/foundation/text2/input/TextFieldState$Saver;

    move-object v1, p5

    check-cast v1, Landroidx/compose/runtime/saveable/Saver;

    const/4 v2, 0x0

    const p5, 0x26c880a9

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p5

    invoke-interface {p3, p1, p2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    or-int/2addr p5, v3

    .local p5, "invalid$iv":Z
    move-object v3, p3

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 570
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 571
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p5, :cond_4

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_3

    goto :goto_0

    .line 575
    :cond_3
    move-object v7, v5

    goto :goto_1

    .line 572
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 472
    .local v7, "$i$a$-cache-TextFieldStateKt$rememberTextFieldState$1":I
    new-instance v8, Landroidx/compose/foundation/text2/input/TextFieldStateKt$rememberTextFieldState$1$1;

    invoke-direct {v8, p0, p1, p2}, Landroidx/compose/foundation/text2/input/TextFieldStateKt$rememberTextFieldState$1$1;-><init>(Ljava/lang/String;J)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 572
    .end local v7    # "$i$a$-cache-TextFieldStateKt$rememberTextFieldState$1":I
    move-object v7, v8

    .line 573
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 574
    nop

    .line 571
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 570
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 472
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v5, 0x38

    const/4 v6, 0x4

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/foundation/text2/input/TextFieldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final setTextAndPlaceCursorAtEnd(Landroidx/compose/foundation/text2/input/TextFieldState;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$setTextAndPlaceCursorAtEnd"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "text"    # Ljava/lang/String;

    .line 495
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 576
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v2

    .line 577
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    move-object v3, v2

    .local v3, "$this$setTextAndPlaceCursorAtEnd_u24lambda_u241":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 496
    .local v4, "$i$a$-edit-TextFieldStateKt$setTextAndPlaceCursorAtEnd$1":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v5

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 497
    invoke-static {v3}, Landroidx/compose/foundation/text2/input/TextFieldBufferKt;->placeCursorAtEnd(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 498
    nop

    .line 577
    .end local v3    # "$this$setTextAndPlaceCursorAtEnd_u24lambda_u241":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$setTextAndPlaceCursorAtEnd$1":I
    nop

    .line 578
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 579
    nop

    .line 499
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    return-void
.end method

.method public static final setTextAndSelectAll(Landroidx/compose/foundation/text2/input/TextFieldState;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$setTextAndSelectAll"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "text"    # Ljava/lang/String;

    .line 520
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 580
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->startEdit(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    move-result-object v2

    .line 581
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    move-object v3, v2

    .local v3, "$this$setTextAndSelectAll_u24lambda_u242":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 521
    .local v4, "$i$a$-edit-TextFieldStateKt$setTextAndSelectAll$1":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v5

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 522
    invoke-static {v3}, Landroidx/compose/foundation/text2/input/TextFieldBufferKt;->selectAll(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 523
    nop

    .line 581
    .end local v3    # "$this$setTextAndSelectAll_u24lambda_u242":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$setTextAndSelectAll$1":I
    nop

    .line 582
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 583
    nop

    .line 524
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer;
    return-void
.end method

.method public static final textAsFlow(Landroidx/compose/foundation/text2/input/TextFieldState;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p0, "$this$textAsFlow"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Landroidx/compose/foundation/text2/input/TextFieldStateKt$textAsFlow$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/TextFieldStateKt$textAsFlow$1;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
