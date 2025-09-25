.class public final Landroidx/datastore/preferences/protobuf/Field;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Field.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Field$Builder;,
        Landroidx/datastore/preferences/protobuf/Field$Cardinality;,
        Landroidx/datastore/preferences/protobuf/Field$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Field;",
        "Landroidx/datastore/preferences/protobuf/Field$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/FieldOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0xb

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x7

.field public static final OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x6


# instance fields
.field private cardinality_:I

.field private defaultValue_:Ljava/lang/String;

.field private jsonName_:Ljava/lang/String;

.field private kind_:I

.field private name_:Ljava/lang/String;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packed_:Z

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1449
    new-instance v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Field;-><init>()V

    .line 1452
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Field;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    .line 1453
    const-class v1, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1455
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Field;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 18
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Field;
    .locals 1

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setKindValue(I)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearName()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearTypeUrl()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setOneofIndex(I)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearOneofIndex()V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/protobuf/Field;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setPacked(Z)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearPacked()V

    return-void
.end method

.method static synthetic access$1900(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->setOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Field$Kind;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Field$Kind;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setKind(Landroidx/datastore/preferences/protobuf/Field$Kind;)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->addOptions(Landroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/datastore/preferences/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->addOptions(ILandroidx/datastore/preferences/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$2200(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearOptions()V

    return-void
.end method

.method static synthetic access$2400(Landroidx/datastore/preferences/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$2500(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setJsonName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearJsonName()V

    return-void
.end method

.method static synthetic access$2700(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setJsonNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearDefaultValue()V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearKind()V

    return-void
.end method

.method static synthetic access$3000(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setDefaultValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setCardinalityValue(I)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Field$Cardinality;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setCardinality(Landroidx/datastore/preferences/protobuf/Field$Cardinality;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearCardinality()V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Field;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setNumber(I)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/Field;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->clearNumber()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->setName(Ljava/lang/String;)V

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

    .line 702
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->ensureOptionsIsMutable()V

    .line 703
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 705
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

    .line 693
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->ensureOptionsIsMutable()V

    .line 695
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 696
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

    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->ensureOptionsIsMutable()V

    .line 686
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 451
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->cardinality_:I

    .line 452
    return-void
.end method

.method private clearDefaultValue()V
    .locals 1

    .line 801
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 802
    return-void
.end method

.method private clearJsonName()V
    .locals 1

    .line 754
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 755
    return-void
.end method

.method private clearKind()V
    .locals 1

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->kind_:I

    .line 410
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 514
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    .line 515
    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->number_:I

    .line 478
    return-void
.end method

.method private clearOneofIndex()V
    .locals 1

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->oneofIndex_:I

    .line 598
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 710
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 711
    return-void
.end method

.method private clearPacked()V
    .locals 1

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Field;->packed_:Z

    .line 624
    return-void
.end method

.method private clearTypeUrl()V
    .locals 1

    .line 561
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 562
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 664
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 665
    .local v0, "tmp":Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;, "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<Landroidx/datastore/preferences/protobuf/Option;>;"
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    nop

    .line 667
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->mutableCopy(Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 669
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Field;
    .locals 1

    .line 1458
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 889
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Field;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 892
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Field;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 866
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Field;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 872
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Field;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 830
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 837
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 877
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 884
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 854
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 861
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 817
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 824
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 842
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Field;
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

    .line 849
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 1464
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

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

    .line 716
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->ensureOptionsIsMutable()V

    .line 717
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 718
    return-void
.end method

.method private setCardinality(Landroidx/datastore/preferences/protobuf/Field$Cardinality;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->getNumber()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->cardinality_:I

    .line 445
    return-void
.end method

.method private setCardinalityValue(I)V
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

    .line 436
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Field;->cardinality_:I

    .line 437
    return-void
.end method

.method private setDefaultValue(Ljava/lang/String;)V
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

    .line 792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 794
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 795
    return-void
.end method

.method private setDefaultValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 809
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Field;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 810
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    .line 812
    return-void
.end method

.method private setJsonName(Ljava/lang/String;)V
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

    .line 745
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 747
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 748
    return-void
.end method

.method private setJsonNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 762
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Field;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 763
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    .line 765
    return-void
.end method

.method private setKind(Landroidx/datastore/preferences/protobuf/Field$Kind;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Field$Kind;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Field$Kind;->getNumber()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Field;->kind_:I

    .line 403
    return-void
.end method

.method private setKindValue(I)V
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

    .line 394
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Field;->kind_:I

    .line 395
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

    .line 505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 507
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    .line 508
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

    .line 522
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Field;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 523
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    .line 525
    return-void
.end method

.method private setNumber(I)V
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

    .line 470
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Field;->number_:I

    .line 471
    return-void
.end method

.method private setOneofIndex(I)V
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

    .line 590
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Field;->oneofIndex_:I

    .line 591
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

    .line 676
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field;->ensureOptionsIsMutable()V

    .line 678
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method private setPacked(Z)V
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

    .line 616
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/Field;->packed_:Z

    .line 617
    return-void
.end method

.method private setTypeUrl(Ljava/lang/String;)V
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

    .line 552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 554
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 555
    return-void
.end method

.method private setTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 569
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Field;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 570
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    .line 572
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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

    .line 1390
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1439
    :pswitch_0
    return-object v1

    .line 1436
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1421
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1422
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Field;>;"
    if-nez v0, :cond_1

    .line 1423
    const-class v1, Landroidx/datastore/preferences/protobuf/Field;

    monitor-enter v1

    .line 1424
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/Field;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 1425
    if-nez v0, :cond_0

    .line 1426
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1429
    sput-object v0, Landroidx/datastore/preferences/protobuf/Field;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1431
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1433
    :cond_1
    :goto_0
    return-object v0

    .line 1418
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Field;>;"
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    return-object v0

    .line 1398
    :pswitch_4
    const-string v1, "kind_"

    const-string v2, "cardinality_"

    const-string/jumbo v3, "number_"

    const-string/jumbo v4, "name_"

    const-string/jumbo v5, "typeUrl_"

    const-string/jumbo v6, "oneofIndex_"

    const-string/jumbo v7, "packed_"

    const-string/jumbo v8, "options_"

    const-class v9, Landroidx/datastore/preferences/protobuf/Option;

    const-string v10, "jsonName_"

    const-string v11, "defaultValue_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 1411
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\n\u0000\u0000\u0001\u000b\n\u0000\u0001\u0000\u0001\u000c\u0002\u000c\u0003\u0004\u0004\u0208\u0006\u0208\u0007\u0004\u0008\u0007\t\u001b\n\u0208\u000b\u0208"

    .line 1414
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Field;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Field;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1395
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Field$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Field$1;)V

    return-object v0

    .line 1392
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Field;-><init>()V

    return-object v0

    nop

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

.method public getCardinality()Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 2

    .line 428
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->cardinality_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->forNumber(I)Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    move-result-object v0

    .line 429
    .local v0, "result":Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Field$Cardinality;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getCardinalityValue()I
    .locals 1

    .line 420
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 784
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->defaultValue_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 737
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->jsonName_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Landroidx/datastore/preferences/protobuf/Field$Kind;
    .locals 2

    .line 386
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->kind_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field$Kind;->forNumber(I)Landroidx/datastore/preferences/protobuf/Field$Kind;

    move-result-object v0

    .line 387
    .local v0, "result":Landroidx/datastore/preferences/protobuf/Field$Kind;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Field$Kind;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Field$Kind;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getKindValue()I
    .locals 1

    .line 378
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 497
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->name_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 462
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .line 582
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Field;->oneofIndex_:I

    return v0
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

    .line 654
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 633
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 661
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

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

    .line 640
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Field;->packed_:Z

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 544
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field;->typeUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
