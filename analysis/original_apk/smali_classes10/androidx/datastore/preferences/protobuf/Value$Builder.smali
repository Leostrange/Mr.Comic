.class public final Landroidx/datastore/preferences/protobuf/Value$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Value;",
        "Landroidx/datastore/preferences/protobuf/Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 456
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Value;->access$000()Landroidx/datastore/preferences/protobuf/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Value$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Value$1;

    .line 449
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBoolValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$1100(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 652
    return-object p0
.end method

.method public clearKind()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$100(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 468
    return-object p0
.end method

.method public clearListValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 746
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$1700(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 748
    return-object p0
.end method

.method public clearNullValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 521
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$400(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 523
    return-object p0
.end method

.method public clearNumberValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 557
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$600(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 559
    return-object p0
.end method

.method public clearStringValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$800(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 605
    return-object p0
.end method

.method public clearStructValue()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 698
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value;->access$1400(Landroidx/datastore/preferences/protobuf/Value;)V

    .line 700
    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getBoolValue()Z

    move-result v0

    return v0
.end method

.method public getKindCase()Landroidx/datastore/preferences/protobuf/Value$KindCase;
    .locals 1

    .line 462
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getKindCase()Landroidx/datastore/preferences/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1

    .line 715
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getListValue()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 1

    .line 504
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getNullValue()Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 1

    .line 486
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getNullValueValue()I

    move-result v0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 540
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getStringValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStructValue()Landroidx/datastore/preferences/protobuf/Struct;
    .locals 1

    .line 667
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getStructValue()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .line 625
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasBoolValue()Z

    move-result v0

    return v0
.end method

.method public hasListValue()Z
    .locals 1

    .line 708
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasListValue()Z

    move-result v0

    return v0
.end method

.method public hasNullValue()Z
    .locals 1

    .line 478
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasNullValue()Z

    move-result v0

    return v0
.end method

.method public hasNumberValue()Z
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasNumberValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 568
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public hasStructValue()Z
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->hasStructValue()Z

    move-result v0

    return v0
.end method

.method public mergeListValue(Landroidx/datastore/preferences/protobuf/ListValue;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$1600(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V

    .line 740
    return-object p0
.end method

.method public mergeStructValue(Landroidx/datastore/preferences/protobuf/Struct;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$1300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V

    .line 692
    return-object p0
.end method

.method public setBoolValue(Z)Landroidx/datastore/preferences/protobuf/Value$Builder;
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

    .line 641
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 642
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$1000(Landroidx/datastore/preferences/protobuf/Value;Z)V

    .line 643
    return-object p0
.end method

.method public setListValue(Landroidx/datastore/preferences/protobuf/ListValue$Builder;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Value;->access$1500(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V

    .line 732
    return-object p0
.end method

.method public setListValue(Landroidx/datastore/preferences/protobuf/ListValue;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$1500(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V

    .line 723
    return-object p0
.end method

.method public setNullValue(Landroidx/datastore/preferences/protobuf/NullValue;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/NullValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/NullValue;)V

    .line 514
    return-object p0
.end method

.method public setNullValueValue(I)Landroidx/datastore/preferences/protobuf/Value$Builder;
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

    .line 494
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$200(Landroidx/datastore/preferences/protobuf/Value;I)V

    .line 496
    return-object p0
.end method

.method public setNumberValue(D)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Value;->access$500(Landroidx/datastore/preferences/protobuf/Value;D)V

    .line 550
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Value$Builder;
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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$700(Landroidx/datastore/preferences/protobuf/Value;Ljava/lang/String;)V

    .line 596
    return-object p0
.end method

.method public setStringValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Value$Builder;
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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$900(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 616
    return-object p0
.end method

.method public setStructValue(Landroidx/datastore/preferences/protobuf/Struct$Builder;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Struct$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Struct;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Value;->access$1200(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V

    .line 684
    return-object p0
.end method

.method public setStructValue(Landroidx/datastore/preferences/protobuf/Struct;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Value$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Value;->access$1200(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V

    .line 675
    return-object p0
.end method
