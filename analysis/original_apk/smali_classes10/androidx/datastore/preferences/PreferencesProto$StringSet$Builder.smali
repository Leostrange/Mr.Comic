.class public final Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/PreferencesProto$StringSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/PreferencesProto$StringSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/PreferencesProto$StringSet;",
        "Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;",
        ">;",
        "Landroidx/datastore/preferences/PreferencesProto$StringSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1664
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2400()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1665
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/PreferencesProto$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/PreferencesProto$1;

    .line 1657
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllStrings(Ljava/lang/Iterable;)Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;"
        }
    .end annotation

    .line 1735
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->copyOnWrite()V

    .line 1736
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2700(Landroidx/datastore/preferences/PreferencesProto$StringSet;Ljava/lang/Iterable;)V

    .line 1737
    return-object p0
.end method

.method public addStrings(Ljava/lang/String;)Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1724
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->copyOnWrite()V

    .line 1725
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2600(Landroidx/datastore/preferences/PreferencesProto$StringSet;Ljava/lang/String;)V

    .line 1726
    return-object p0
.end method

.method public addStringsBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1755
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->copyOnWrite()V

    .line 1756
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2900(Landroidx/datastore/preferences/PreferencesProto$StringSet;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1757
    return-object p0
.end method

.method public clearStrings()Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .locals 1

    .line 1744
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->copyOnWrite()V

    .line 1745
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2800(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    .line 1746
    return-object p0
.end method

.method public getStrings(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1693
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getStrings(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 1703
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getStringsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringsCount()I
    .locals 1

    .line 1684
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getStringsCount()I

    move-result v0

    return v0
.end method

.method public getStringsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1675
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    .line 1676
    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getStringsList()Ljava/util/List;

    move-result-object v0

    .line 1675
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setStrings(ILjava/lang/String;)Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1713
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->copyOnWrite()V

    .line 1714
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2500(Landroidx/datastore/preferences/PreferencesProto$StringSet;ILjava/lang/String;)V

    .line 1715
    return-object p0
.end method
