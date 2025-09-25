.class public final Landroidx/datastore/preferences/protobuf/Option$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Option.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Option;",
        "Landroidx/datastore/preferences/protobuf/Option$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 201
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Option;->access$000()Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Option$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Option$1;

    .line 194
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$200(Landroidx/datastore/preferences/protobuf/Option;)V

    .line 240
    return-object p0
.end method

.method public clearValue()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 296
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 297
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$600(Landroidx/datastore/preferences/protobuf/Option;)V

    .line 298
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Landroidx/datastore/preferences/protobuf/Any;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getValue()Landroidx/datastore/preferences/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .line 259
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Any;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 290
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$500(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    .line 291
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Option$Builder;
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

    .line 229
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 230
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$100(Landroidx/datastore/preferences/protobuf/Option;Ljava/lang/String;)V

    .line 231
    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Option$Builder;
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

    .line 249
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 250
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$300(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 251
    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any$Builder;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Any$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Any$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Any;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Option;->access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    .line 283
    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Any;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 273
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    .line 274
    return-object p0
.end method
