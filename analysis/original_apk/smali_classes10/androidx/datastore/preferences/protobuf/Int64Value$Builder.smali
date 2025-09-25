.class public final Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Int64Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Int64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Int64Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Int64Value;",
        "Landroidx/datastore/preferences/protobuf/Int64Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Int64ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Int64Value;->access$000()Landroidx/datastore/preferences/protobuf/Int64Value;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Int64Value$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/Int64Value$1;

    .line 126
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->copyOnWrite()V

    .line 161
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;->access$200(Landroidx/datastore/preferences/protobuf/Int64Value;)V

    .line 162
    return-object p0
.end method

.method public getValue()J
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Int64Value;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(J)Landroidx/datastore/preferences/protobuf/Int64Value$Builder;
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->copyOnWrite()V

    .line 152
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Int64Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Int64Value;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Int64Value;->access$100(Landroidx/datastore/preferences/protobuf/Int64Value;J)V

    .line 153
    return-object p0
.end method
