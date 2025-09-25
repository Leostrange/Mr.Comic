.class public Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "RenameFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/RenameFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFilesTaskParameters"
.end annotation


# instance fields
.field private final fileNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/lingala/zip4j/model/Zip4jConfig;",
            ")V"
        }
    .end annotation

    .line 203
    .local p1, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 204
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->fileNamesMap:Ljava/util/Map;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    .line 199
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->fileNamesMap:Ljava/util/Map;

    return-object v0
.end method
