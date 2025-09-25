.class public final Landroidx/datastore/preferences/protobuf/Api;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Api.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Api$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Api;",
        "Landroidx/datastore/preferences/protobuf/Api$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ApiOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

.field public static final METHODS_FIELD_NUMBER:I = 0x2

.field public static final MIXINS_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

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

.field private sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

.field private syntax_:I

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1142
    new-instance v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Api;-><init>()V

    .line 1145
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Api;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    .line 1146
    const-class v1, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1148
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Api;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

    .line 16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 18
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Api;
    .locals 1

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addOptions(Landroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearOptions()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearVersion()V

    return-void
.end method

.method static synthetic access$1800(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setVersionBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearSourceContext()V

    return-void
.end method

.method static synthetic access$2200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Mixin;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->setMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Mixin;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addMixins(Landroidx/datastore/preferences/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Mixin;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->addMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2500(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addAllMixins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearMixins()V

    return-void
.end method

.method static synthetic access$2700(Landroidx/datastore/preferences/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->removeMixins(I)V

    return-void
.end method

.method static synthetic access$2800(Landroidx/datastore/preferences/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Syntax;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Syntax;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearSyntax()V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->setMethods(ILandroidx/datastore/preferences/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addMethods(Landroidx/datastore/preferences/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Method;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->addMethods(ILandroidx/datastore/preferences/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->addAllMethods(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->clearMethods()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Api;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->removeMethods(I)V

    return-void
.end method

.method private addAllMethods(Ljava/lang/Iterable;)V
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
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Method;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMethodsIsMutable()V

    .line 145
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method private addAllMixins(Ljava/lang/Iterable;)V
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
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Mixin;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMixinsIsMutable()V

    .line 426
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 428
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

    .line 238
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureOptionsIsMutable()V

    .line 239
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 241
    return-void
.end method

.method private addMethods(ILandroidx/datastore/preferences/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Method;
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

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMethodsIsMutable()V

    .line 137
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method private addMethods(Landroidx/datastore/preferences/protobuf/Method;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMethodsIsMutable()V

    .line 128
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private addMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 416
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMixinsIsMutable()V

    .line 418
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 419
    return-void
.end method

.method private addMixins(Landroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMixinsIsMutable()V

    .line 409
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 410
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

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureOptionsIsMutable()V

    .line 231
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 232
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

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureOptionsIsMutable()V

    .line 222
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method private clearMethods()V
    .locals 1

    .line 152
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 153
    return-void
.end method

.method private clearMixins()V
    .locals 1

    .line 433
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 434
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 55
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 246
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 247
    return-void
.end method

.method private clearSourceContext()V
    .locals 1

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 347
    return-void
.end method

.method private clearSyntax()V
    .locals 1

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Api;->syntax_:I

    .line 483
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 290
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    .line 291
    return-void
.end method

.method private ensureMethodsIsMutable()V
    .locals 2

    .line 106
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 107
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Method;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    nop

    .line 109
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 111
    :cond_0
    return-void
.end method

.method private ensureMixinsIsMutable()V
    .locals 2

    .line 387
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 388
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Mixin;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    nop

    .line 390
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 392
    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 200
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 201
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    nop

    .line 203
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 205
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Api;
    .locals 1

    .line 1151
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method private mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)V
    .locals 2
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 334
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SourceContext;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 336
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SourceContext;->newBuilder(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/SourceContext$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/SourceContext$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/SourceContext;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    goto :goto_0

    .line 338
    :cond_0
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 341
    :goto_0
    return-void
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 560
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Api;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Api;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 563
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Api;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 537
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Api;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 543
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Api;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 501
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 508
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 548
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 555
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 525
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 532
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 488
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 495
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 513
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Api;
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

    .line 520
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 1157
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMethods(I)V
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

    .line 158
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMethodsIsMutable()V

    .line 159
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private removeMixins(I)V
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

    .line 439
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMixinsIsMutable()V

    .line 440
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 441
    return-void
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

    .line 252
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureOptionsIsMutable()V

    .line 253
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private setMethods(ILandroidx/datastore/preferences/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Method;
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

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMethodsIsMutable()V

    .line 120
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method private setMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 399
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureMixinsIsMutable()V

    .line 401
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
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

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

    .line 49
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

    .line 63
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Api;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 64
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

    .line 66
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

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api;->ensureOptionsIsMutable()V

    .line 214
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)V
    .locals 0
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    .line 326
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

    .line 474
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Syntax;->getNumber()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Api;->syntax_:I

    .line 476
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

    .line 467
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Api;->syntax_:I

    .line 468
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
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

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 283
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    .line 284
    return-void
.end method

.method private setVersionBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 298
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Api;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 299
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    .line 301
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    .line 1084
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1132
    :pswitch_0
    return-object v1

    .line 1129
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1114
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1115
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Api;>;"
    if-nez v0, :cond_1

    .line 1116
    const-class v1, Landroidx/datastore/preferences/protobuf/Api;

    monitor-enter v1

    .line 1117
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/Api;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 1118
    if-nez v0, :cond_0

    .line 1119
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1122
    sput-object v0, Landroidx/datastore/preferences/protobuf/Api;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1124
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1126
    :cond_1
    :goto_0
    return-object v0

    .line 1111
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Api;>;"
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    return-object v0

    .line 1092
    :pswitch_4
    const-string/jumbo v1, "name_"

    const-string/jumbo v2, "methods_"

    const-class v3, Landroidx/datastore/preferences/protobuf/Method;

    const-string/jumbo v4, "options_"

    const-class v5, Landroidx/datastore/preferences/protobuf/Option;

    const-string/jumbo v6, "version_"

    const-string/jumbo v7, "sourceContext_"

    const-string/jumbo v8, "mixins_"

    const-class v9, Landroidx/datastore/preferences/protobuf/Mixin;

    const-string/jumbo v10, "syntax_"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 1104
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0003\u0000\u0001\u0208\u0002\u001b\u0003\u001b\u0004\u0208\u0005\t\u0006\u001b\u0007\u000c"

    .line 1107
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Api;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Api;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1089
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Api$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Api$1;)V

    return-object v0

    .line 1086
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Api;-><init>()V

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

.method public getMethods(I)Landroidx/datastore/preferences/protobuf/Method;
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

    .line 96
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMethodsOrBuilder(I)Landroidx/datastore/preferences/protobuf/MethodOrBuilder;
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

    .line 103
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MethodOrBuilder;

    return-object v0
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/preferences/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->methods_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixins(I)Landroidx/datastore/preferences/protobuf/Mixin;
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

    .line 377
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixinsOrBuilder(I)Landroidx/datastore/preferences/protobuf/MixinOrBuilder;
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

    .line 384
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MixinOrBuilder;

    return-object v0
.end method

.method public getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/preferences/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->mixins_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->name_:Ljava/lang/String;

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

    .line 190
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 169
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 197
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 176
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/SourceContext;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    :goto_0
    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 2

    .line 459
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Api;->syntax_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Syntax;->forNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    .line 460
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

    .line 451
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Api;->syntax_:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->version_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 310
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api;->sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
