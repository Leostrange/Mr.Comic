.class public final Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperationKt;
.super Ljava/lang/Object;
.source "TextUndoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextUndoOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextUndoOperation.kt\nandroidx/compose/foundation/text2/input/internal/undo/TextUndoOperationKt\n+ 2 TextFieldState.kt\nandroidx/compose/foundation/text2/input/TextFieldState\n*L\n1#1,179:1\n218#2,14:180\n218#2,14:194\n*S KotlinDebug\n*F\n+ 1 TextUndoOperation.kt\nandroidx/compose/foundation/text2/input/internal/undo/TextUndoOperationKt\n*L\n117#1:180,14\n128#1:194,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "redo",
        "",
        "Landroidx/compose/foundation/text2/input/TextFieldState;",
        "op",
        "Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;",
        "undo",
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
.method public static final redo(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;)V
    .locals 8
    .param p0, "$this$redo"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "op"    # Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;

    .line 128
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$editWithNoSideEffects$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    .line 196
    .local v2, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 197
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    .local v3, "$this$redo_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$a$-editWithNoSideEffects$foundation_release-TextUndoOperationKt$redo$1":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPreText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPostText()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v6, v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPostSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPostSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 131
    nop

    .line 197
    .end local v3    # "$this$redo_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v4    # "$i$a$-editWithNoSideEffects$foundation_release-TextUndoOperationKt$redo$1":I
    nop

    .line 200
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 202
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    .line 199
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v3

    .line 205
    .local v3, "afterEditValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-static {v0, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$setText(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 206
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$notifyIme(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 207
    nop

    .line 132
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$editWithNoSideEffects$foundation_release":I
    .end local v2    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "afterEditValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    return-void
.end method

.method public static final undo(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;)V
    .locals 8
    .param p0, "$this$undo"    # Landroidx/compose/foundation/text2/input/TextFieldState;
    .param p1, "op"    # Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;

    .line 117
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    const/4 v1, 0x0

    .line 180
    .local v1, "$i$f$editWithNoSideEffects$foundation_release":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    .line 182
    .local v2, "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text2/input/internal/ChangeTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/ChangeTracker;->clearChanges()V

    .line 183
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    .local v3, "$this$undo_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$a$-editWithNoSideEffects$foundation_release-TextUndoOperationKt$undo$1":I
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPostText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPreText()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v6, v7}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPreSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/foundation/text2/input/internal/undo/TextUndoOperation;->getPreSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->setSelection(II)V

    .line 120
    nop

    .line 183
    .end local v3    # "$this$undo_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/EditingBuffer;
    .end local v4    # "$i$a$-editWithNoSideEffects$foundation_release-TextUndoOperationKt$undo$1":I
    nop

    .line 186
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 187
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 188
    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text2/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/EditingBuffer;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    .line 185
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->TextFieldCharSequence-3r_uNRQ(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v3

    .line 191
    .local v3, "afterEditValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-static {v0, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$setText(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 192
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/text2/input/TextFieldState;->access$notifyIme(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)V

    .line 193
    nop

    .line 121
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text2/input/TextFieldState;
    .end local v1    # "$i$f$editWithNoSideEffects$foundation_release":I
    .end local v2    # "previousValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "afterEditValue$iv":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    return-void
.end method
