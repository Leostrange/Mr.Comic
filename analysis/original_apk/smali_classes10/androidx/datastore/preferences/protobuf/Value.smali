.class public final Landroidx/datastore/preferences/protobuf/Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Value$Builder;,
        Landroidx/datastore/preferences/protobuf/Value$KindCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Value;",
        "Landroidx/datastore/preferences/protobuf/Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

.field public static final LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x3

.field public static final STRUCT_VALUE_FIELD_NUMBER:I = 0x5


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 810
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Value;-><init>()V

    .line 813
    .local v0, "defaultInstance":Landroidx/datastore/preferences/protobuf/Value;
    sput-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    .line 814
    const-class v1, Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 816
    .end local v0    # "defaultInstance":Landroidx/datastore/preferences/protobuf/Value;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 15
    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/Value;
    .locals 1

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearKind()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/protobuf/Value;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setBoolValue(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearBoolValue()V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/Struct;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/Struct;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->mergeStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearStructValue()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ListValue;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ListValue;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->mergeListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearListValue()V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/Value;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setNullValueValue(I)V

    return-void
.end method

.method static synthetic access$300(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/NullValue;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/NullValue;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setNullValue(Landroidx/datastore/preferences/protobuf/NullValue;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearNullValue()V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/Value;D)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # D

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Value;->setNumberValue(D)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearNumberValue()V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/protobuf/Value;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/protobuf/Value;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Value;->clearStringValue()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/protobuf/Value;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Landroidx/datastore/preferences/protobuf/Value;
    .param p1, "x1"    # Landroidx/datastore/preferences/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->setStringValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method private clearBoolValue()V
    .locals 2

    .line 259
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 263
    :cond_0
    return-void
.end method

.method private clearKind()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private clearListValue()V
    .locals 2

    .line 359
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 363
    :cond_0
    return-void
.end method

.method private clearNullValue()V
    .locals 2

    .line 119
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 123
    :cond_0
    return-void
.end method

.method private clearNumberValue()V
    .locals 2

    .line 157
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method

.method private clearStringValue()V
    .locals 2

    .line 211
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 215
    :cond_0
    return-void
.end method

.method private clearStructValue()V
    .locals 2

    .line 309
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 313
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/Value;
    .locals 1

    .line 819
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method private mergeListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V
    .locals 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 347
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 348
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ListValue;->newBuilder(Landroidx/datastore/preferences/protobuf/ListValue;)Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue$Builder;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ListValue$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_0
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 353
    :goto_0
    iput v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 354
    return-void
.end method

.method private mergeStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V
    .locals 3
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 297
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Struct;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 298
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Struct;->newBuilder(Landroidx/datastore/preferences/protobuf/Struct;)Landroidx/datastore/preferences/protobuf/Struct$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct$Builder;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Struct$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_0
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 303
    :goto_0
    iput v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 304
    return-void
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1

    .line 440
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/Value;)Landroidx/datastore/preferences/protobuf/Value$Builder;
    .locals 1
    .param p0, "prototype"    # Landroidx/datastore/preferences/protobuf/Value;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 443
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Value;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 417
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 423
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 381
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 388
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 428
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 435
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 405
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 412
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 368
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 375
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 393
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/Value;
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

    .line 400
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/Value;

    return-object v0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 825
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Value;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBoolValue(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 252
    const/4 v0, 0x4

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 253
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private setListValue(Landroidx/datastore/preferences/protobuf/ListValue;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/ListValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 339
    const/4 v0, 0x6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 340
    return-void
.end method

.method private setNullValue(Landroidx/datastore/preferences/protobuf/NullValue;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/NullValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/NullValue;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 114
    return-void
.end method

.method private setNullValueValue(I)V
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

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method private setNumberValue(D)V
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

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    iput v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 205
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 206
    return-void
.end method

.method private setStringValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
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

    .line 222
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Value;->checkByteStringIsUtf8(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 223
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 225
    return-void
.end method

.method private setStructValue(Landroidx/datastore/preferences/protobuf/Struct;)V
    .locals 1
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/Struct;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 289
    const/4 v0, 0x5

    iput v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    .line 290
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

    .line 758
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 803
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 800
    :pswitch_0
    return-object v1

    .line 797
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 782
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 783
    .local v0, "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Value;>;"
    if-nez v0, :cond_1

    .line 784
    const-class v1, Landroidx/datastore/preferences/protobuf/Value;

    monitor-enter v1

    .line 785
    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    move-object v0, v2

    .line 786
    if-nez v0, :cond_0

    .line 787
    new-instance v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v2, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 790
    sput-object v0, Landroidx/datastore/preferences/protobuf/Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 792
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 794
    :cond_1
    :goto_0
    return-object v0

    .line 779
    .end local v0    # "parser":Landroidx/datastore/preferences/protobuf/Parser;, "Landroidx/datastore/preferences/protobuf/Parser<Landroidx/datastore/preferences/protobuf/Value;>;"
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    return-object v0

    .line 766
    :pswitch_4
    const-string v0, "kind_"

    const-string v1, "kindCase_"

    const-class v2, Landroidx/datastore/preferences/protobuf/Struct;

    const-class v3, Landroidx/datastore/preferences/protobuf/ListValue;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 772
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003\u023b\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000"

    .line 775
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroidx/datastore/preferences/protobuf/Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Value;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Value;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 763
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/Value$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Value$1;)V

    return-object v0

    .line 760
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Value;-><init>()V

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

.method public getBoolValue()Z
    .locals 2

    .line 242
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKindCase()Landroidx/datastore/preferences/protobuf/Value$KindCase;
    .locals 1

    .line 58
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Value$KindCase;->forNumber(I)Landroidx/datastore/preferences/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Landroidx/datastore/preferences/protobuf/ListValue;
    .locals 2

    .line 328
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListValue;

    return-object v0

    .line 331
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListValue;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Landroidx/datastore/preferences/protobuf/NullValue;
    .locals 2

    .line 93
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/NullValue;->forNumber(I)Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object v0

    .line 95
    .local v0, "result":Landroidx/datastore/preferences/protobuf/NullValue;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/NullValue;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/NullValue;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 97
    .end local v0    # "result":Landroidx/datastore/preferences/protobuf/NullValue;
    :cond_1
    sget-object v0, Landroidx/datastore/preferences/protobuf/NullValue;->NULL_VALUE:Landroidx/datastore/preferences/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 2

    .line 82
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 140
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 143
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .line 178
    const-string v0, ""

    .line 179
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 182
    :cond_0
    return-object v0
.end method

.method public getStringValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 3

    .line 191
    const-string v0, ""

    .line 192
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 195
    :cond_0
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getStructValue()Landroidx/datastore/preferences/protobuf/Struct;
    .locals 2

    .line 278
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Struct;

    return-object v0

    .line 281
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Struct;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 2

    .line 234
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListValue()Z
    .locals 2

    .line 321
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNullValue()Z
    .locals 2

    .line 74
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumberValue()Z
    .locals 2

    .line 132
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringValue()Z
    .locals 2

    .line 170
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructValue()Z
    .locals 2

    .line 271
    iget v0, p0, Landroidx/datastore/preferences/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
