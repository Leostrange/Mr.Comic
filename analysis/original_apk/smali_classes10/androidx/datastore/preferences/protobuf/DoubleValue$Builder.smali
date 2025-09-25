.class public final Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "DoubleValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DoubleValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/DoubleValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/DoubleValue;",
        "Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DoubleValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DoubleValue;->access$000()Landroidx/datastore/preferences/protobuf/DoubleValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/DoubleValue$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/DoubleValue$1;

    .line 126
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;->copyOnWrite()V

    .line 161
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DoubleValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DoubleValue;->access$200(Landroidx/datastore/preferences/protobuf/DoubleValue;)V

    .line 162
    return-object p0
.end method

.method public getValue()D
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DoubleValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DoubleValue;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;
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

    .line 151
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;->copyOnWrite()V

    .line 152
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DoubleValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DoubleValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DoubleValue;->access$100(Landroidx/datastore/preferences/protobuf/DoubleValue;D)V

    .line 153
    return-object p0
.end method
