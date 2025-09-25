.class public Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "ExtractAllFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractAllFilesTaskParameters"
.end annotation


# instance fields
.field private final outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 81
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 82
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;->outputPath:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;

    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;->outputPath:Ljava/lang/String;

    return-object v0
.end method
