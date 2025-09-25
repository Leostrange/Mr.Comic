.class final Landroidx/compose/foundation/text2/input/FilterChain;
.super Ljava/lang/Object;
.source "InputTransformation.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/InputTransformation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/FilterChain;",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "first",
        "second",
        "(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)V",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "getKeyboardOptions",
        "()Landroidx/compose/foundation/text/KeyboardOptions;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "transformInput",
        "",
        "originalValue",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "valueWithChanges",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer;",
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
.field private final first:Landroidx/compose/foundation/text2/input/InputTransformation;

.field private final second:Landroidx/compose/foundation/text2/input/InputTransformation;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)V
    .locals 0
    .param p1, "first"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p2, "second"    # Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 150
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 169
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 170
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 172
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/text2/input/FilterChain;

    .line 174
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/text2/input/FilterChain;

    iget-object v3, v3, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 175
    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/text2/input/FilterChain;

    iget-object v3, v3, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 176
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/FilterChain;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/text2/input/FilterChain;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/FilterChain;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 178
    :cond_5
    return v0
.end method

.method public getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/InputTransformation;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/InputTransformation;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 182
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 183
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x20

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/FilterChain;->getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".then("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V
    .locals 1
    .param p1, "originalValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "valueWithChanges"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 161
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/FilterChain;->first:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/text2/input/InputTransformation;->transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 162
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/FilterChain;->second:Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/text2/input/InputTransformation;->transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V

    .line 163
    return-void
.end method
