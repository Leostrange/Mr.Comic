.class public final Landroidx/datastore/preferences/protobuf/Method;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Method.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Method$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Method;",
        "Landroidx/datastore/preferences/protobuf/Method$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MethodOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_STREAMING_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_STREAMING_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7


# instance fields
.field private name_:Ljava/lang/String;

.field private options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private requestStreaming_:Z

.field private requestTypeUrl_:Ljava/lang/String;

.field private responseStreaming_:Z

.field private responseTypeUrl_:Ljava/lang/String;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 858
    new-instance v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Method;-><init>()V

    .line 861
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Method;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    .line 862
    const-class v1, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 864
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    .line 18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 19
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Method;
    .locals 1

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearResponseTypeUrl()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setResponseTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/Method;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setResponseStreaming(Z)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearResponseStreaming()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->addOptions(Landroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearOptions()V

    return-void
.end method

.method static synthetic access$1900(Landroidx/datastore/preferences/protobuf/Method;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Landroidx/datastore/preferences/protobuf/Method;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Syntax;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Syntax;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$2200(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearSyntax()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setRequestTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearRequestTypeUrl()V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setRequestTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Method;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setRequestStreaming(Z)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->clearRequestStreaming()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->setResponseTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
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
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->ensureOptionsIsMutable()V

    .line 290
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 292
    return-void
.end method

.method private addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Option;
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

    .line 280
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->ensureOptionsIsMutable()V

    .line 282
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 283
    return-void
.end method

.method private addOptions(Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->ensureOptionsIsMutable()V

    .line 273
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 54
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 297
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 298
    return-void
.end method

.method private clearRequestStreaming()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestStreaming_:Z

    .line 138
    return-void
.end method

.method private clearRequestTypeUrl()V
    .locals 1

    .line 101
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private clearResponseStreaming()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseStreaming_:Z

    .line 211
    return-void
.end method

.method private clearResponseTypeUrl()V
    .locals 1

    .line 174
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private clearSyntax()V
    .locals 1

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Method;->syntax_:I

    .line 347
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 252
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    nop

    .line 254
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 256
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Method;
    .locals 1

    .line 867
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 424
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 427
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Method;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 401
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Method;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 407
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Method;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 365
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 372
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 412
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 419
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 389
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 396
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 352
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 359
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 377
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 384
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 873
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
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
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->ensureOptionsIsMutable()V

    .line 304
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method private setName(Ljava/lang/String;)V
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

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 62
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Method;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 63
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Option;
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

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method;->ensureOptionsIsMutable()V

    .line 265
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method private setRequestStreaming(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 130
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/Method;->requestStreaming_:Z

    .line 131
    return-void
.end method

.method private setRequestTypeUrl(Ljava/lang/String;)V
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

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private setRequestTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 109
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Method;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 110
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private setResponseStreaming(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 203
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/Method;->responseStreaming_:Z

    .line 204
    return-void
.end method

.method private setResponseTypeUrl(Ljava/lang/String;)V
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

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private setResponseTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 182
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Method;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 183
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Syntax;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Syntax;->getNumber()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Method;->syntax_:I

    .line 340
    return-void
.end method

.method private setSyntaxValue(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 331
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Method;->syntax_:I

    .line 332
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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

    .line 802
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 851
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 848
    :pswitch_0
    return-object v1

    .line 845
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 830
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 831
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Method;>;"
    if-nez v0, :cond_1

    .line 832
    const-class v1, Landroidx/datastore/preferences/protobuf/Method;

    monitor-enter v1

    .line 833
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/Method;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 834
    if-nez v0, :cond_0

    .line 835
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 838
    sput-object v0, Landroidx/datastore/preferences/protobuf/Method;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 840
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 842
    :cond_1
    :goto_0
    return-object v0

    .line 827
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Method;>;"
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    return-object v0

    .line 810
    :pswitch_4
    const-string/jumbo v1, "name_"

    const-string/jumbo v2, "requestTypeUrl_"

    const-string/jumbo v3, "requestStreaming_"

    const-string/jumbo v4, "responseTypeUrl_"

    const-string/jumbo v5, "responseStreaming_"

    const-string/jumbo v6, "options_"

    const-class v7, Landroidx/datastore/preferences/protobuf/Option;

    const-string/jumbo v8, "syntax_"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 820
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0007\u0004\u0208\u0005\u0007\u0006\u001b\u0007\u000c"

    .line 823
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Method;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Method;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 807
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Method$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Method$1;)V

    return-object v0

    .line 804
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Method;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->name_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
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

    .line 241
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Landroidx/datastore/preferences/protobuf/OptionOrBuilder;
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

    .line 248
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestStreaming_:Z

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseStreaming_:Z

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 2

    .line 323
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Method;->syntax_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Syntax;->forNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    .line 324
    .local v0, "result":Landroidx/datastore/preferences/protobuf/Syntax;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Syntax;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Syntax;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 315
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Method;->syntax_:I

    return v0
.end method
