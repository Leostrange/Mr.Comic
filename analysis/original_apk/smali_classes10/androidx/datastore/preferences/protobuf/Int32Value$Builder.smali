.class public final Landroidx/datastore/preferences/protobuf/Int32Value$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Int32Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Int32ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Int32Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Int32Value;",
        "Landroidx/datastore/preferences/protobuf/Int32Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Int32ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Int32Value;->access$000()Landroidx/datastore/preferences/protobuf/Int32Value;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Int32Value$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Int32Value$1;

    .line 126
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Landroidx/datastore/preferences/protobuf/Int32Value$Builder;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;->copyOnWrite()V

    .line 161
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int32Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Int32Value;->access$200(Landroidx/datastore/preferences/protobuf/Int32Value;)V

    .line 162
    return-object p0
.end method

.method public getValue()I
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int32Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Int32Value;->getValue()I

    move-result v0

    return v0
.end method

.method public setValue(I)Landroidx/datastore/preferences/protobuf/Int32Value$Builder;
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

    .line 151
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;->copyOnWrite()V

    .line 152
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int32Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int32Value;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Int32Value;->access$100(Landroidx/datastore/preferences/protobuf/Int32Value;I)V

    .line 153
    return-object p0
.end method
