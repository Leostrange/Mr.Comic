.class public Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "AddFilesToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/AddFilesToZipTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddFilesToZipTaskParameters"
.end annotation


# instance fields
.field private final filesToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final zipParameters:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/model/Zip4jConfig;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 68
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;->filesToAdd:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    return-object v0
.end method

.method static synthetic access$100(Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;->filesToAdd:Ljava/util/List;

    return-object v0
.end method
