.class final Landroidx/compose/ui/tooling/data/SourceInformationContext;
.super Ljava/lang/Object;
.source "SlotTree.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001BW\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0008\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u00062\u0008\u0010 \u001a\u0004\u0018\u00010\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0011R\u0011\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/data/SourceInformationContext;",
        "",
        "name",
        "",
        "sourceFile",
        "packageHash",
        "",
        "locations",
        "",
        "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
        "repeatOffset",
        "parameters",
        "Landroidx/compose/ui/tooling/data/Parameter;",
        "isCall",
        "",
        "isInline",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/util/List;ZZ)V",
        "()Z",
        "getLocations",
        "()Ljava/util/List;",
        "getName",
        "()Ljava/lang/String;",
        "nextLocation",
        "getPackageHash",
        "()I",
        "getParameters",
        "getRepeatOffset",
        "getSourceFile",
        "nextSourceLocation",
        "Landroidx/compose/ui/tooling/data/SourceLocation;",
        "sourceLocation",
        "callIndex",
        "parentContext",
        "ui-tooling-data_release"
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
.field private final isCall:Z

.field private final isInline:Z

.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private nextLocation:I

.field private final packageHash:I

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final repeatOffset:I

.field private final sourceFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/util/List;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sourceFile"    # Ljava/lang/String;
    .param p3, "packageHash"    # I
    .param p4, "locations"    # Ljava/util/List;
    .param p5, "repeatOffset"    # I
    .param p6, "parameters"    # Ljava/util/List;
    .param p7, "isCall"    # Z
    .param p8, "isInline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;ZZ)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->name:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    .line 210
    iput p3, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    .line 211
    iput-object p4, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    .line 212
    iput p5, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    .line 213
    iput-object p6, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->parameters:Ljava/util/List;

    .line 214
    iput-boolean p7, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall:Z

    .line 215
    iput-boolean p8, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isInline:Z

    .line 207
    return-void
.end method


# virtual methods
.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageHash()I
    .locals 1

    .line 210
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    return v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/Parameter;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public final getRepeatOffset()I
    .locals 1

    .line 212
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    return v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public final isCall()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isCall:Z

    return v0
.end method

.method public final isInline()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->isInline:Z

    return v0
.end method

.method public final nextSourceLocation()Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 9

    .line 220
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    if-ltz v0, :cond_0

    .line 221
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    iput v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    .line 223
    :cond_0
    iget v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 224
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->nextLocation:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    .line 225
    .local v0, "location":Landroidx/compose/ui/tooling/data/SourceLocationInfo;
    new-instance v7, Landroidx/compose/ui/tooling/data/SourceLocation;

    .line 226
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLineNumber()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 227
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 228
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    .line 229
    :goto_2
    iget-object v6, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    .line 230
    iget v8, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    .line 225
    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/tooling/data/SourceLocation;-><init>(IIILjava/lang/String;I)V

    return-object v7

    .line 233
    .end local v0    # "location":Landroidx/compose/ui/tooling/data/SourceLocationInfo;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final sourceLocation(ILandroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 10
    .param p1, "callIndex"    # I
    .param p2, "parentContext"    # Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 237
    move v0, p1

    .line 238
    .local v0, "locationIndex":I
    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    iget-object v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 240
    iget v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    sub-int v1, p1, v1

    iget-object v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    iget v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->repeatOffset:I

    add-int/2addr v1, v2

    .line 239
    move v0, v1

    .line 242
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    .line 243
    iget-object v1, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/tooling/data/SourceLocationInfo;

    .line 244
    .local v1, "location":Landroidx/compose/ui/tooling/data/SourceLocationInfo;
    new-instance v9, Landroidx/compose/ui/tooling/data/SourceLocation;

    .line 245
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLineNumber()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 246
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getOffset()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    .line 247
    :goto_1
    invoke-virtual {v1}, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->getLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v4

    .line 248
    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    if-nez v3, :cond_5

    if-eqz p2, :cond_4

    iget-object v3, p2, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v8, v2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v8, v3

    .line 249
    :goto_4
    iget-object v3, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceFile:Ljava/lang/String;

    if-nez v3, :cond_6

    if-eqz p2, :cond_7

    iget v2, p2, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    goto :goto_5

    :cond_6
    iget v2, p0, Landroidx/compose/ui/tooling/data/SourceInformationContext;->packageHash:I

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_8
    move v2, v4

    .line 244
    :goto_6
    move-object v3, v9

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/tooling/data/SourceLocation;-><init>(IIILjava/lang/String;I)V

    return-object v9

    .line 252
    .end local v1    # "location":Landroidx/compose/ui/tooling/data/SourceLocationInfo;
    :cond_9
    return-object v2
.end method
