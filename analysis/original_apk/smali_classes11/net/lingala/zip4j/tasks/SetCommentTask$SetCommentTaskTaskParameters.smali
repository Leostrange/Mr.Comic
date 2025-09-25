.class public Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "SetCommentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/SetCommentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetCommentTaskTaskParameters"
.end annotation


# instance fields
.field private comment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 59
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 60
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->comment:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    .line 55
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->comment:Ljava/lang/String;

    return-object v0
.end method
