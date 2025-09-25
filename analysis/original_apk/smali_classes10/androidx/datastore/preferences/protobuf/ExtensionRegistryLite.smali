.class public Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;,
        Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ExtensionClassHolder;
    }
.end annotation


# static fields
.field static final EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

.field static final EXTENSION_CLASS_NAME:Ljava/lang/String; = "androidx.datastore.preferences.protobuf.Extension"

.field private static doFullRuntimeInheritanceCheck:Z

.field private static volatile eagerlyParseMessageSets:Z

.field private static volatile emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    .line 195
    new-instance v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 193
    return-void
.end method

.method constructor <init>(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "other"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 203
    :goto_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "empty"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 210
    return-void
.end method

.method public static getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .locals 3

    .line 126
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    return-object v0

    .line 129
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 130
    .local v0, "result":Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    if-nez v0, :cond_2

    .line 131
    const-class v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-object v0, v2

    .line 133
    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryFactory;->createEmpty()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v2

    sput-object v2, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->emptyRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-object v0, v2

    .line 136
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 138
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isEagerlyParseMessageSets()Z
    .locals 1

    .line 100
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static newInstance()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 114
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryFactory;->create()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;-><init>()V

    .line 114
    :goto_0
    return-object v0
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .locals 0
    .param p0, "isEagerlyParse"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEagerlyParse"
        }
    .end annotation

    .line 104
    sput-boolean p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 105
    return-void
.end method


# virtual methods
.method public final add(Landroidx/datastore/preferences/protobuf/ExtensionLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/ExtensionLite<",
            "**>;)V"
        }
    .end annotation

    .line 171
    .local p1, "extension":Landroidx/datastore/preferences/protobuf/ExtensionLite;, "Landroidx/datastore/preferences/protobuf/ExtensionLite<**>;"
    const-class v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->add(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 174
    :cond_0
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryFactory;->isFullRegistry(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "add"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ExtensionClassHolder;->INSTANCE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 179
    const-string v3, "Could not invoke ExtensionRegistry#add for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final add(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 161
    .local p1, "extension":Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 162
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 161
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public findLiteExtensionByNumber(Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 155
    .local p1, "containingTypeDefaultInstance":Landroidx/datastore/preferences/protobuf/MessageLite;, "TContainingType;"
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 155
    return-object v0
.end method

.method public getUnmodifiable()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .locals 1

    .line 143
    new-instance v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;-><init>(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
