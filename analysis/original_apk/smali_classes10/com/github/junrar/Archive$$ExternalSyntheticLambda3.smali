.class public final synthetic Lcom/github/junrar/Archive$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/github/junrar/rarfile/FileHeader;

    invoke-virtual {p1}, Lcom/github/junrar/rarfile/FileHeader;->isEncrypted()Z

    move-result p1

    return p1
.end method
