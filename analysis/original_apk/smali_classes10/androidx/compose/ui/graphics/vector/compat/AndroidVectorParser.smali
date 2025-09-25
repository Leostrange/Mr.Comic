.class public final Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
.super Ljava/lang/Object;
.source "XmlVectorParser.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014J\u001e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0014J\u001e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J(\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0011J0\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\"\u001a\u0008\u0018\u00010#R\u00020$2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0005J8\u0010%\u001a\u00020&2\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\"\u001a\u0008\u0018\u00010#R\u00020$2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0005J(\u0010\'\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0014J(\u0010(\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J\u0018\u0010)\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0005J\t\u0010*\u001a\u00020\u0005H\u00d6\u0001J,\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020$2\u000c\u0010\"\u001a\u0008\u0018\u00010#R\u00020$2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\t\u00101\u001a\u00020\u001eH\u00d6\u0001J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0005H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u00065"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;",
        "",
        "xmlParser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "config",
        "",
        "(Lorg/xmlpull/v1/XmlPullParser;I)V",
        "getConfig",
        "()I",
        "setConfig",
        "(I)V",
        "getXmlParser",
        "()Lorg/xmlpull/v1/XmlPullParser;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "getDimension",
        "",
        "typedArray",
        "Landroid/content/res/TypedArray;",
        "index",
        "defValue",
        "getFloat",
        "defaultValue",
        "getInt",
        "getNamedBoolean",
        "attrName",
        "",
        "resId",
        "getNamedColorStateList",
        "Landroid/content/res/ColorStateList;",
        "theme",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "getNamedComplexColor",
        "Landroidx/core/content/res/ComplexColorCompat;",
        "getNamedFloat",
        "getNamedInt",
        "getString",
        "hashCode",
        "obtainAttributes",
        "res",
        "set",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "toString",
        "updateConfig",
        "",
        "resConfig",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private config:I

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 0
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "config"    # I

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 528
    iput p2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    .line 526
    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 526
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 528
    const/4 p2, 0x0

    .line 526
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 726
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Lorg/xmlpull/v1/XmlPullParser;IILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->copy(Lorg/xmlpull/v1/XmlPullParser;I)Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    move-result-object p0

    return-object p0
.end method

.method private final updateConfig(I)V
    .locals 1
    .param p1, "resConfig"    # I

    .line 532
    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    .line 533
    return-void
.end method


# virtual methods
.method public final component1()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return v0
.end method

.method public final copy(Lorg/xmlpull/v1/XmlPullParser;I)Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    iget v1, v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfig()I
    .locals 1

    .line 528
    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return v0
.end method

.method public final getDimension(Landroid/content/res/TypedArray;IF)F
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defValue"    # F

    .line 671
    move-object v0, p1

    .local v0, "$this$getDimension_u24lambda_u246":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 672
    .local v1, "$i$a$-with-AndroidVectorParser$getDimension$1":I
    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 673
    .local v2, "result":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 674
    return v2
.end method

.method public final getFloat(Landroid/content/res/TypedArray;IF)F
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # F

    .line 632
    move-object v0, p1

    .local v0, "$this$getFloat_u24lambda_u243":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 633
    .local v1, "$i$a$-with-AndroidVectorParser$getFloat$1":I
    nop

    .line 634
    nop

    .line 635
    nop

    .line 633
    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 637
    .local v2, "result":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 638
    return v2
.end method

.method public final getInt(Landroid/content/res/TypedArray;II)I
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .line 647
    move-object v0, p1

    .local v0, "$this$getInt_u24lambda_u244":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 648
    .local v1, "$i$a$-with-AndroidVectorParser$getInt$1":I
    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 649
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 650
    return v2
.end method

.method public final getNamedBoolean(Landroid/content/res/TypedArray;Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # Z

    .line 614
    move-object v0, p1

    .local v0, "$this$getNamedBoolean_u24lambda_u242":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$a$-with-AndroidVectorParser$getNamedBoolean$1":I
    nop

    .line 617
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 615
    invoke-static {v0, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    .line 622
    .local v2, "result":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 623
    return v2
.end method

.method public final getNamedColorStateList(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "resId"    # I

    .line 714
    move-object v0, p1

    .local v0, "$this$getNamedColorStateList_u24lambda_u248":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 716
    .local v1, "$i$a$-with-AndroidVectorParser$getNamedColorStateList$1":I
    nop

    .line 717
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 718
    nop

    .line 719
    nop

    .line 720
    nop

    .line 715
    invoke-static {p1, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 722
    .local v2, "result":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 723
    return-object v2
.end method

.method public final getNamedComplexColor(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "defaultValue"    # I

    .line 690
    move-object v0, p1

    .local v0, "$this$getNamedComplexColor_u24lambda_u247":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 692
    .local v6, "$i$a$-with-AndroidVectorParser$getNamedComplexColor$1":I
    nop

    .line 693
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 694
    nop

    .line 695
    nop

    .line 696
    nop

    .line 691
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v1

    .line 698
    .local v1, "result":Landroidx/core/content/res/ComplexColorCompat;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 699
    return-object v1
.end method

.method public final getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # F

    .line 590
    move-object v0, p1

    .local v0, "$this$getNamedFloat_u24lambda_u241":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 592
    .local v1, "$i$a$-with-AndroidVectorParser$getNamedFloat$1":I
    nop

    .line 593
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 594
    nop

    .line 595
    nop

    .line 596
    nop

    .line 591
    invoke-static {v0, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 598
    .local v2, "result":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 599
    return v2
.end method

.method public final getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I

    .line 566
    move-object v0, p1

    .local v0, "$this$getNamedInt_u24lambda_u240":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 568
    .local v1, "$i$a$-with-AndroidVectorParser$getNamedInt$1":I
    nop

    .line 569
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 570
    nop

    .line 571
    nop

    .line 572
    nop

    .line 567
    invoke-static {v0, v2, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 574
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 575
    return v2
.end method

.method public final getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 659
    move-object v0, p1

    .local v0, "$this$getString_u24lambda_u245":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 660
    .local v1, "$i$a$-with-AndroidVectorParser$getString$1":I
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 662
    return-object v2
.end method

.method public final getXmlParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "set"    # Landroid/util/AttributeSet;
    .param p4, "attrs"    # [I

    .line 546
    nop

    .line 547
    nop

    .line 548
    nop

    .line 549
    nop

    .line 545
    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 551
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 552
    return-object v0
.end method

.method public final setConfig(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 528
    iput p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidVectorParser(xmlParser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
