.class public final Landroidx/datastore/preferences/protobuf/Method$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Method.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Method;",
        "Landroidx/datastore/preferences/protobuf/Method$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MethodOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 440
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->access$000()Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Method$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Method$1;

    .line 433
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Method$Builder;"
        }
    .end annotation

    .line 728
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1700(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/Iterable;)V

    .line 730
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    .line 720
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 719
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Method;->access$1600(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 721
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1600(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 702
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Method;->access$1500(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 711
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1500(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 693
    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$200(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 479
    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$1800(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 738
    return-object p0
.end method

.method public clearRequestStreaming()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$800(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 567
    return-object p0
.end method

.method public clearRequestTypeUrl()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 526
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$500(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 528
    return-object p0
.end method

.method public clearResponseStreaming()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 642
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 643
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$1300(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 644
    return-object p0
.end method

.method public clearResponseTypeUrl()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$1000(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 605
    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 790
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$2200(Landroidx/datastore/preferences/protobuf/Method;)V

    .line 792
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 459
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    .line 653
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 652
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 548
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 508
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 625
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 773
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 755
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1900(Landroidx/datastore/preferences/protobuf/Method;I)V

    .line 746
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$100(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    .line 470
    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$300(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 490
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    .line 684
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 683
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Method;->access$1400(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 685
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1400(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 675
    return-object p0
.end method

.method public setRequestStreaming(Z)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$700(Landroidx/datastore/preferences/protobuf/Method;Z)V

    .line 558
    return-object p0
.end method

.method public setRequestTypeUrl(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$400(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    .line 519
    return-object p0
.end method

.method public setRequestTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$600(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 539
    return-object p0
.end method

.method public setResponseStreaming(Z)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 634
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1200(Landroidx/datastore/preferences/protobuf/Method;Z)V

    .line 635
    return-object p0
.end method

.method public setResponseTypeUrl(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$900(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    .line 596
    return-object p0
.end method

.method public setResponseTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1100(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 616
    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Syntax;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2100(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Syntax;)V

    .line 783
    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2000(Landroidx/datastore/preferences/protobuf/Method;I)V

    .line 765
    return-object p0
.end method
