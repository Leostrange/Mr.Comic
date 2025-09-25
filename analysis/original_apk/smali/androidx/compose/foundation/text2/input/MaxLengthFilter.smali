.class final Landroidx/compose/foundation/text2/input/MaxLengthFilter;
.super Ljava/lang/Object;
.source "MaxLengthTransformation.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/InputTransformation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaxLengthTransformation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaxLengthTransformation.kt\nandroidx/compose/foundation/text2/input/MaxLengthFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u0008\u001a\u00020\u0005H\u00c2\u0003J\u001d\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/MaxLengthFilter;",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "maxLength",
        "",
        "inCodepoints",
        "",
        "(IZ)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
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
.field private final inCodepoints:Z

.field private final maxLength:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "maxLength"    # I
    .param p2, "inCodepoints"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    .line 48
    iput-boolean p2, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    .line 51
    nop

    .line 52
    iget v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 53
    nop

    .line 46
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 52
    .local v0, "$i$a$-require-MaxLengthFilter$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxLength must be at least zero, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-MaxLengthFilter$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final component1()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    return v0
.end method

.method private final component2()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    return v0
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text2/input/MaxLengthFilter;IZILjava/lang/Object;)Landroidx/compose/foundation/text2/input/MaxLengthFilter;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->copy(IZ)Landroidx/compose/foundation/text2/input/MaxLengthFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IZ)Landroidx/compose/foundation/text2/input/MaxLengthFilter;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text2/input/MaxLengthFilter;-><init>(IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text2/input/MaxLengthFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/text2/input/MaxLengthFilter;

    iget v3, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    iget v4, v1, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    iget-boolean v1, v1, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "maxLengthInCodepoints"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "maxLengthInChars"

    .line 68
    .local v0, "name":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputTransformation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(maxLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V
    .locals 2
    .param p1, "originalValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "valueWithChanges"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 60
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->inCodepoints:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getCodepointLength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getLength()I

    move-result v0

    .line 59
    :goto_0
    nop

    .line 61
    .local v0, "newLength":I
    iget v1, p0, Landroidx/compose/foundation/text2/input/MaxLengthFilter;->maxLength:I

    if-le v0, v1, :cond_1

    .line 62
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->revertAllChanges()V

    .line 64
    :cond_1
    return-void
.end method
