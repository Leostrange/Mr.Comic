.class public final Landroidx/datastore/preferences/protobuf/ListValue$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "ListValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ListValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ListValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/ListValue;",
        "Landroidx/datastore/preferences/protobuf/ListValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ListValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 202
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->access$000()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ListValue$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue$1;

    .line 195
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
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
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/ListValue$Builder;"
        }
    .end annotation

    .line 287
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 288
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$400(Landroidx/datastore/preferences/protobuf/ListValue;Ljava/lang/Iterable;)V

    .line 289
    return-object p0
.end method

.method public addValues(ILandroidx/datastore/preferences/protobuf/Value$Builder;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Value$Builder;
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

    .line 277
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 278
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    .line 279
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Value$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Value;

    .line 278
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$300(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V

    .line 280
    return-object p0
.end method

.method public addValues(ILandroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Value;
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

    .line 259
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 260
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/ListValue;->access$300(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V

    .line 261
    return-object p0
.end method

.method public addValues(Landroidx/datastore/preferences/protobuf/Value$Builder;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 2
    .param p1, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Value$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 269
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Value$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$200(Landroidx/datastore/preferences/protobuf/ListValue;Landroidx/datastore/preferences/protobuf/Value;)V

    .line 270
    return-object p0
.end method

.method public addValues(Landroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Value;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 251
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$200(Landroidx/datastore/preferences/protobuf/ListValue;Landroidx/datastore/preferences/protobuf/Value;)V

    .line 252
    return-object p0
.end method

.method public clearValues()Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1

    .line 295
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 296
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->access$500(Landroidx/datastore/preferences/protobuf/ListValue;)V

    .line 297
    return-object p0
.end method

.method public getValues(I)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 225
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->getValues(I)Landroidx/datastore/preferences/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    .line 212
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
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

    .line 303
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$600(Landroidx/datastore/preferences/protobuf/ListValue;I)V

    .line 305
    return-object p0
.end method

.method public setValues(ILandroidx/datastore/preferences/protobuf/Value$Builder;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroidx/datastore/preferences/protobuf/Value$Builder;
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

    .line 241
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 242
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    .line 243
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/Value$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/Value;

    .line 242
    invoke-static {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/ListValue;->access$100(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V

    .line 244
    return-object p0
.end method

.method public setValues(ILandroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Value;
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

    .line 232
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 233
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/ListValue;->access$100(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V

    .line 234
    return-object p0
.end method
