.class public final Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;
.super Ljava/lang/Object;
.source "ComicArchiveReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/ComicArchiveReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComicArchive"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J/\u0010\u0014\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c7\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d7\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d7\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d7\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;",
        "",
        "pages",
        "",
        "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
        "tempFile",
        "Ljava/io/File;",
        "comicType",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V",
        "getPages",
        "()Ljava/util/List;",
        "getTempFile",
        "()Ljava/io/File;",
        "getComicType",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final comicType:Ljava/lang/String;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "pages"    # Ljava/util/List;
    .param p2, "tempFile"    # Ljava/io/File;
    .param p3, "comicType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    .line 47
    iput-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;Ljava/util/List;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->copy(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comicType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;

    invoke-direct {v0, p1, p2, p3}, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;-><init>(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;

    iget-object v3, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    iget-object v4, v1, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    iget-object v1, v1, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getComicType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    return-object v0
.end method

.method public final getTempFile()Ljava/io/File;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->pages:Ljava/util/List;

    iget-object v1, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->tempFile:Ljava/io/File;

    iget-object v2, p0, Lcom/example/mrcomic/ComicArchiveReader$ComicArchive;->comicType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ComicArchive(pages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", tempFile="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comicType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
