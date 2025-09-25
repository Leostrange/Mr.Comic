.class public final Landroidx/datastore/preferences/protobuf/ListValue;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "ListValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ListValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/ListValue;",
        "Landroidx/datastore/preferences/protobuf/ListValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ListValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/ListValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 364
    new-instance v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ListValue;-><init>()V

    .line 367
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/ListValue;
    sput-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    .line 368
    const-class v1, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 370
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/ListValue;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 16
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ListValue;->setValues(ILandroidx/datastore/preferences/protobuf/Value;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/ListValue;Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->addValues(Landroidx/datastore/preferences/protobuf/Value;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/ListValue;ILandroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ListValue;->addValues(ILandroidx/datastore/preferences/protobuf/Value;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/ListValue;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/ListValue;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->clearValues()V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/ListValue;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->removeValues(I)V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
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
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->ensureValuesIsMutable()V

    .line 94
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method private addValues(ILandroidx/datastore/preferences/protobuf/Value;)V
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

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->ensureValuesIsMutable()V

    .line 86
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method private addValues(Landroidx/datastore/preferences/protobuf/Value;)V
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

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->ensureValuesIsMutable()V

    .line 77
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private clearValues()V
    .locals 1

    .line 101
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 102
    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 55
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 56
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Value;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    nop

    .line 58
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 60
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1

    .line 373
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1

    .line 186
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/ListValue;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;
    .locals 1
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 189
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/ListValue;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/ListValue;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/ListValue;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 134
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 114
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 121
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 146
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/ListValue;",
            ">;"
        }
    .end annotation

    .line 379
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeValues(I)V
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

    .line 107
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->ensureValuesIsMutable()V

    .line 108
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private setValues(ILandroidx/datastore/preferences/protobuf/Value;)V
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

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListValue;->ensureValuesIsMutable()V

    .line 69
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 315
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 354
    :pswitch_0
    return-object v1

    .line 351
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 336
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 337
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/ListValue;>;"
    if-nez v0, :cond_1

    .line 338
    const-class v1, Landroidx/datastore/preferences/protobuf/ListValue;

    monitor-enter v1

    .line 339
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/ListValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 340
    if-nez v0, :cond_0

    .line 341
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 344
    sput-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 346
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 348
    :cond_1
    :goto_0
    return-object v0

    .line 333
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/ListValue;>;"
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0

    .line 323
    :pswitch_4
    const-string/jumbo v0, "values_"

    const-class v1, Landroidx/datastore/preferences/protobuf/Value;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 329
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/ListValue;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/ListValue;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 320
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;-><init>(Landroidx/datastore/preferences/protobuf/ListValue$1;)V

    return-object v0

    .line 317
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ListValue;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 45
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

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

    .line 24
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValuesOrBuilder(I)Landroidx/datastore/preferences/protobuf/ValueOrBuilder;
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

    .line 52
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ValueOrBuilder;

    return-object v0
.end method

.method public getValuesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/preferences/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ListValue;->values_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method
