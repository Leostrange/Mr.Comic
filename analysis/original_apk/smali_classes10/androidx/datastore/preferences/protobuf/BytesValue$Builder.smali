.class public final Landroidx/datastore/preferences/protobuf/BytesValue$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "BytesValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/BytesValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/BytesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/BytesValue;",
        "Landroidx/datastore/preferences/protobuf/BytesValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/BytesValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 135
    invoke-static {}, Landroidx/datastore/preferences/protobuf/BytesValue;->access$000()Landroidx/datastore/preferences/protobuf/BytesValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/BytesValue$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/BytesValue$1;

    .line 128
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Landroidx/datastore/preferences/protobuf/BytesValue$Builder;
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;->copyOnWrite()V

    .line 163
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/BytesValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/BytesValue;->access$200(Landroidx/datastore/preferences/protobuf/BytesValue;)V

    .line 164
    return-object p0
.end method

.method public getValue()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/BytesValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/BytesValue;->getValue()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/BytesValue$Builder;
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

    .line 153
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;->copyOnWrite()V

    .line 154
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BytesValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/BytesValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/BytesValue;->access$100(Landroidx/datastore/preferences/protobuf/BytesValue;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 155
    return-object p0
.end method
