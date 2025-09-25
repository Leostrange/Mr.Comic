.class final Landroidx/compose/foundation/text2/input/AllCapsTransformation;
.super Ljava/lang/Object;
.source "AllCapsTransformation.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/InputTransformation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllCapsTransformation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllCapsTransformation.kt\nandroidx/compose/foundation/text2/input/AllCapsTransformation\n+ 2 TextFieldBuffer.kt\nandroidx/compose/foundation/text2/input/TextFieldBufferKt\n*L\n1#1,64:1\n545#2,7:65\n*S KotlinDebug\n*F\n+ 1 AllCapsTransformation.kt\nandroidx/compose/foundation/text2/input/AllCapsTransformation\n*L\n51#1:65,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\t\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/AllCapsTransformation;",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "locale",
        "Landroidx/compose/ui/text/intl/Locale;",
        "(Landroidx/compose/ui/text/intl/Locale;)V",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "getKeyboardOptions",
        "()Landroidx/compose/foundation/text/KeyboardOptions;",
        "component1",
        "copy",
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
.field private final keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field private final locale:Landroidx/compose/ui/text/intl/Locale;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/intl/Locale;)V
    .locals 9
    .param p1, "locale"    # Landroidx/compose/ui/text/intl/Locale;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    .line 42
    new-instance v8, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 43
    sget-object v0, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getCharacters-IUNYP9k()I

    move-result v1

    .line 42
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 41
    return-void
.end method

.method private final component1()Landroidx/compose/ui/text/intl/Locale;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    return-object v0
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text2/input/AllCapsTransformation;Landroidx/compose/ui/text/intl/Locale;ILjava/lang/Object;)Landroidx/compose/foundation/text2/input/AllCapsTransformation;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->copy(Landroidx/compose/ui/text/intl/Locale;)Landroidx/compose/foundation/text2/input/AllCapsTransformation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/text/intl/Locale;)Landroidx/compose/foundation/text2/input/AllCapsTransformation;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text2/input/AllCapsTransformation;-><init>(Landroidx/compose/ui/text/intl/Locale;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text2/input/AllCapsTransformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text2/input/AllCapsTransformation;

    iget-object v3, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    iget-object v1, v1, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getKeyboardOptions()Landroidx/compose/foundation/text/KeyboardOptions;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/Locale;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputTransformation.allCaps(locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

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
    .locals 10
    .param p1, "originalValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "valueWithChanges"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 51
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    .local v0, "$this$forEachChange$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$f$forEachChange":I
    const/4 v2, 0x0

    .line 67
    .local v2, "i$iv":I
    :goto_0
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getChangeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 68
    invoke-interface {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getRange--jx7JFs(I)J

    move-result-wide v3

    .local v3, "range":J
    invoke-interface {v0, v2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getOriginalRange--jx7JFs(I)J

    const/4 v5, 0x0

    .line 52
    .local v5, "$i$a$-forEachChange-AllCapsTransformation$transformInput$1":I
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    nop

    .line 54
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v6

    .line 55
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    .line 56
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroidx/compose/ui/text/TextRangeKt;->substring-FDrldGo(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroidx/compose/foundation/text2/input/AllCapsTransformation;->locale:Landroidx/compose/ui/text/intl/Locale;

    invoke-static {v8, v9}, Landroidx/compose/ui/text/StringKt;->toUpperCase(Ljava/lang/String;Landroidx/compose/ui/text/intl/Locale;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p2, v6, v7, v8}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 59
    :cond_0
    nop

    .line 68
    .end local v3    # "range":J
    .end local v5    # "$i$a$-forEachChange-AllCapsTransformation$transformInput$1":I
    nop

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    nop

    .line 60
    .end local v0    # "$this$forEachChange$iv":Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;
    .end local v1    # "$i$f$forEachChange":I
    .end local v2    # "i$iv":I
    return-void
.end method
