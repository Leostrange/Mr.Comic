.class public final synthetic Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/github/junrar/Archive;

.field public final synthetic f$1:Lcom/github/junrar/rarfile/FileHeader;

.field public final synthetic f$2:Ljava/io/PipedOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/github/junrar/Archive;Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$0:Lcom/github/junrar/Archive;

    iput-object p2, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$1:Lcom/github/junrar/rarfile/FileHeader;

    iput-object p3, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$2:Ljava/io/PipedOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$0:Lcom/github/junrar/Archive;

    iget-object v1, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$1:Lcom/github/junrar/rarfile/FileHeader;

    iget-object v2, p0, Lcom/github/junrar/Archive$$ExternalSyntheticLambda2;->f$2:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1, v2}, Lcom/github/junrar/Archive;->lambda$getInputStream$0$com-github-junrar-Archive(Lcom/github/junrar/rarfile/FileHeader;Ljava/io/PipedOutputStream;)V

    return-void
.end method
