.class public final Landroidx/datastore/preferences/protobuf/Mixin$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Mixin.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Mixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Mixin;",
        "Landroidx/datastore/preferences/protobuf/Mixin$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MixinOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 203
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Mixin;->access$000()Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Mixin$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Mixin$1;

    .line 196
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 240
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 241
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->access$200(Landroidx/datastore/preferences/protobuf/Mixin;)V

    .line 242
    return-object p0
.end method

.method public clearRoot()Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 290
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->access$500(Landroidx/datastore/preferences/protobuf/Mixin;)V

    .line 291
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getRootBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 231
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 232
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$100(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V

    .line 233
    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 251
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 252
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$300(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 253
    return-object p0
.end method

.method public setRoot(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 280
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$400(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V

    .line 282
    return-object p0
.end method

.method public setRootBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
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

    .line 300
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$600(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 302
    return-object p0
.end method
