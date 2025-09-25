.class public final Landroidx/work/WorkQuery$Builder;
.super Ljava/lang/Object;
.source "WorkQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;"
        }
    .end annotation
.end field

.field mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUniqueWorkNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/List;

    .line 196
    return-void
.end method

.method public static fromIds(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 207
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    new-instance v0, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0}, Landroidx/work/WorkQuery$Builder;-><init>()V

    .line 208
    .local v0, "builder":Landroidx/work/WorkQuery$Builder;
    invoke-virtual {v0, p0}, Landroidx/work/WorkQuery$Builder;->addIds(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    .line 209
    return-object v0
.end method

.method public static fromStates(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 249
    .local p0, "states":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkInfo$State;>;"
    new-instance v0, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0}, Landroidx/work/WorkQuery$Builder;-><init>()V

    .line 250
    .local v0, "builder":Landroidx/work/WorkQuery$Builder;
    invoke-virtual {v0, p0}, Landroidx/work/WorkQuery$Builder;->addStates(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    .line 251
    return-object v0
.end method

.method public static fromTags(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 235
    .local p0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0}, Landroidx/work/WorkQuery$Builder;-><init>()V

    .line 236
    .local v0, "builder":Landroidx/work/WorkQuery$Builder;
    invoke-virtual {v0, p0}, Landroidx/work/WorkQuery$Builder;->addTags(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    .line 237
    return-object v0
.end method

.method public static fromUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueWorkNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 221
    .local p0, "uniqueWorkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0}, Landroidx/work/WorkQuery$Builder;-><init>()V

    .line 222
    .local v0, "builder":Landroidx/work/WorkQuery$Builder;
    invoke-virtual {v0, p0}, Landroidx/work/WorkQuery$Builder;->addUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;

    .line 223
    return-object v0
.end method


# virtual methods
.method public addIds(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 262
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    return-object p0
.end method

.method public addStates(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 298
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkInfo$State;>;"
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    return-object p0
.end method

.method public addTags(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 286
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    return-object p0
.end method

.method public addUniqueWorkNames(Ljava/util/List;)Landroidx/work/WorkQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueWorkNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkQuery$Builder;"
        }
    .end annotation

    .line 274
    .local p1, "uniqueWorkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    return-object p0
.end method

.method public build()Landroidx/work/WorkQuery;
    .locals 2

    .line 309
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/List;

    .line 310
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/List;

    .line 311
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    const-string v0, "Must specify ids, uniqueNames, tags or states when building a WorkQuery"

    .line 316
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Landroidx/work/WorkQuery;

    invoke-direct {v0, p0}, Landroidx/work/WorkQuery;-><init>(Landroidx/work/WorkQuery$Builder;)V

    return-object v0
.end method
