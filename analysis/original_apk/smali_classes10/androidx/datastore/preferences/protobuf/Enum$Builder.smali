.class public final Landroidx/datastore/preferences/protobuf/Enum$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Enum.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Enum;",
        "Landroidx/datastore/preferences/protobuf/Enum$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/EnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 433
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Enum;->access$000()Landroidx/datastore/preferences/protobuf/Enum;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Enum$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Enum$1;

    .line 426
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEnumvalue(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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
            "Landroidx/datastore/preferences/protobuf/EnumValue;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 567
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/EnumValue;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$700(Landroidx/datastore/preferences/protobuf/Enum;Ljava/lang/Iterable;)V

    .line 569
    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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
            "Landroidx/datastore/preferences/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 669
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1300(Landroidx/datastore/preferences/protobuf/Enum;Ljava/lang/Iterable;)V

    .line 671
    return-object p0
.end method

.method public addEnumvalue(ILandroidx/datastore/preferences/protobuf/EnumValue$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
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

    .line 557
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 559
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/EnumValue;

    .line 558
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$600(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 560
    return-object p0
.end method

.method public addEnumvalue(ILandroidx/datastore/preferences/protobuf/EnumValue;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/EnumValue;
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

    .line 539
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Enum;->access$600(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 541
    return-object p0
.end method

.method public addEnumvalue(Landroidx/datastore/preferences/protobuf/EnumValue$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$500(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 550
    return-object p0
.end method

.method public addEnumvalue(Landroidx/datastore/preferences/protobuf/EnumValue;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/EnumValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$500(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 532
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 659
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 661
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 660
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1200(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 662
    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 641
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 642
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Enum;->access$1200(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 643
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 650
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1100(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 652
    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 632
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 633
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1100(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/Option;)V

    .line 634
    return-object p0
.end method

.method public clearEnumvalue()Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1

    .line 575
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Enum;->access$800(Landroidx/datastore/preferences/protobuf/Enum;)V

    .line 577
    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Enum;->access$200(Landroidx/datastore/preferences/protobuf/Enum;)V

    .line 472
    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Enum;->access$1400(Landroidx/datastore/preferences/protobuf/Enum;)V

    .line 679
    return-object p0
.end method

.method public clearSourceContext()Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1

    .line 732
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Enum;->access$1800(Landroidx/datastore/preferences/protobuf/Enum;)V

    .line 734
    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1

    .line 778
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Enum;->access$2100(Landroidx/datastore/preferences/protobuf/Enum;)V

    .line 780
    return-object p0
.end method

.method public getEnumvalue(I)Landroidx/datastore/preferences/protobuf/EnumValue;
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

    .line 505
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->getEnumvalue(I)Landroidx/datastore/preferences/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public getEnumvalueCount()I
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getEnumvalueCount()I

    move-result v0

    return v0
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 492
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v0

    .line 491
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 452
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

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

    .line 607
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 601
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getOptionsCount()I

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

    .line 593
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 594
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 593
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;
    .locals 1

    .line 702
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 761
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 743
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 695
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 725
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1700(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 727
    return-object p0
.end method

.method public removeEnumvalue(I)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 583
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$900(Landroidx/datastore/preferences/protobuf/Enum;I)V

    .line 585
    return-object p0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 685
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1500(Landroidx/datastore/preferences/protobuf/Enum;I)V

    .line 687
    return-object p0
.end method

.method public setEnumvalue(ILandroidx/datastore/preferences/protobuf/EnumValue$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
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

    .line 521
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 523
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/EnumValue;

    .line 522
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$400(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 524
    return-object p0
.end method

.method public setEnumvalue(ILandroidx/datastore/preferences/protobuf/EnumValue;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/EnumValue;
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

    .line 512
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Enum;->access$400(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/EnumValue;)V

    .line 514
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 461
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$100(Landroidx/datastore/preferences/protobuf/Enum;Ljava/lang/String;)V

    .line 463
    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 481
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 482
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$300(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 483
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 623
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    .line 625
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Option$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Option;

    .line 624
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1000(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 626
    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 614
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Enum;->access$1000(Landroidx/datastore/preferences/protobuf/Enum;ILandroidx/datastore/preferences/protobuf/Option;)V

    .line 616
    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 717
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/SourceContext$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/SourceContext;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1600(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 719
    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 708
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1600(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    .line 710
    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 769
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$2000(Landroidx/datastore/preferences/protobuf/Enum;Landroidx/datastore/preferences/protobuf/Syntax;)V

    .line 771
    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Enum$Builder;
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

    .line 751
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Enum$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Enum$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Enum;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Enum;->access$1900(Landroidx/datastore/preferences/protobuf/Enum;I)V

    .line 753
    return-object p0
.end method
