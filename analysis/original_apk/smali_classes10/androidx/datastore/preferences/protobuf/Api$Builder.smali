.class public final Landroidx/datastore/preferences/protobuf/Api$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Api.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Api;",
        "Landroidx/datastore/preferences/protobuf/Api$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 576
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->access$000()Landroidx/datastore/preferences/protobuf/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 577
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Api$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Api$1;

    .line 569
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethods(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 710
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Method;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 711
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$700(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    .line 712
    return-object p0
.end method

.method public addAllMixins(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1010
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Mixin;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2500(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    .line 1012
    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 812
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1300(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    .line 814
    return-object p0
.end method

.method public addMethods(ILandroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Method$Builder;
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

    .line 700
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 702
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Method$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Method;

    .line 701
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$600(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    .line 703
    return-object p0
.end method

.method public addMethods(ILandroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Method;
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

    .line 682
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$600(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    .line 684
    return-object p0
.end method

.method public addMethods(Landroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Method$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Method$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$500(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Method;)V

    .line 693
    return-object p0
.end method

.method public addMethods(Landroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$500(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Method;)V

    .line 675
    return-object p0
.end method

.method public addMixins(ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 1000
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 1002
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Mixin;

    .line 1001
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$2400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    .line 1003
    return-object p0
.end method

.method public addMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 982
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$2400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    .line 984
    return-object p0
.end method

.method public addMixins(Landroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$2300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Mixin;)V

    .line 993
    return-object p0
.end method

.method public addMixins(Landroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Mixin;)V

    .line 975
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 802
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 804
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 803
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$1200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 805
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 784
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 785
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 786
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 793
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$1100(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 795
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 775
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1100(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 777
    return-object p0
.end method

.method public clearMethods()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 718
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$800(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 720
    return-object p0
.end method

.method public clearMixins()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1018
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1019
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$2600(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 1020
    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 613
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$200(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 615
    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$1400(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 822
    return-object p0
.end method

.method public clearSourceContext()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 924
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$2100(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 926
    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1072
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$3000(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 1074
    return-object p0
.end method

.method public clearVersion()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 866
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$1700(Landroidx/datastore/preferences/protobuf/Api;)V

    .line 868
    return-object p0
.end method

.method public getMethods(I)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 648
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getMethods(I)Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 642
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMethodsCount()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 635
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v0

    .line 634
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixins(I)Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 948
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getMixins(I)Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 942
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMixinsCount()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 935
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v0

    .line 934
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 595
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

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

    .line 750
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 744
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getOptionsCount()I

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

    .line 736
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 737
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 736
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;
    .locals 1

    .line 894
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 1055
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1037
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 848
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getVersionBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 887
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2000(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 919
    return-object p0
.end method

.method public removeMethods(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 726
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$900(Landroidx/datastore/preferences/protobuf/Api;I)V

    .line 728
    return-object p0
.end method

.method public removeMixins(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 1026
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1027
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2700(Landroidx/datastore/preferences/protobuf/Api;I)V

    .line 1028
    return-object p0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 828
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1500(Landroidx/datastore/preferences/protobuf/Api;I)V

    .line 830
    return-object p0
.end method

.method public setMethods(ILandroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Method$Builder;
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

    .line 664
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 666
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Method$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Method;

    .line 665
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    .line 667
    return-object p0
.end method

.method public setMethods(ILandroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Method;
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

    .line 655
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    .line 657
    return-object p0
.end method

.method public setMixins(ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 964
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 966
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Mixin;

    .line 965
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$2200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    .line 967
    return-object p0
.end method

.method public setMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 955
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$2200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    .line 957
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 604
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$100(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V

    .line 606
    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 624
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 626
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 766
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 768
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 767
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$1000(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 769
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 757
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1000(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 759
    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/SourceContext$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 909
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 910
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/SourceContext$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/SourceContext;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Api;->access$1900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 911
    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 901
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 902
    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 1063
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Syntax;)V

    .line 1065
    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 1045
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2800(Landroidx/datastore/preferences/protobuf/Api;I)V

    .line 1047
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 857
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 858
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1600(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V

    .line 859
    return-object p0
.end method

.method public setVersionBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Api$Builder;
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

    .line 877
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1800(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 879
    return-object p0
.end method
