.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;
.super Ljava/lang/Object;
.source "TextFieldLayoutStateCache.kt"

# interfaces
.implements Landroidx/compose/runtime/State;
.implements Landroidx/compose/runtime/snapshots/StateObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;,
        Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;,
        Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        ">;",
        "Landroidx/compose/runtime/snapshots/StateObject;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldLayoutStateCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldLayoutStateCache.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n215#1,4:420\n220#1:430\n81#2:413\n107#2,2:414\n81#2:416\n107#2,2:417\n2283#3:419\n2165#3:424\n1714#3:425\n2166#3,2:427\n2165#3:431\n1714#3:432\n2166#3,2:434\n82#4:426\n82#4:433\n1#5:429\n1#5:436\n*S KotlinDebug\n*F\n+ 1 TextFieldLayoutStateCache.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache\n*L\n197#1:420,4\n197#1:430\n63#1:413\n63#1:414,2\n67#1:416\n67#1:417,2\n155#1:419\n197#1:424\n197#1:425\n197#1:427,2\n218#1:431\n218#1:432\n218#1:434,2\n197#1:426\n218#1:433\n197#1:429\n218#1:436\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0003@ABB\u0005\u00a2\u0006\u0002\u0010\u0004J*\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010!\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\"\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0002J0\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J \u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0016J\u0010\u00102\u001a\u0002032\u0006\u0010\u001b\u001a\u00020\u0006H\u0016J\"\u00104\u001a\u0002032\u0017\u00105\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020306\u00a2\u0006\u0002\u00087H\u0082\u0008J&\u00108\u001a\u0002032\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R/\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\n8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR/\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\u00128B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "()V",
        "firstStateRecord",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "getFirstStateRecord",
        "()Landroidx/compose/runtime/snapshots/StateRecord;",
        "<set-?>",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;",
        "measureInputs",
        "getMeasureInputs",
        "()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;",
        "setMeasureInputs",
        "(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)V",
        "measureInputs$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;",
        "nonMeasureInputs",
        "getNonMeasureInputs",
        "()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;",
        "setNonMeasureInputs",
        "(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;)V",
        "nonMeasureInputs$delegate",
        "record",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;",
        "value",
        "getValue",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "computeLayout",
        "visualText",
        "",
        "prevResult",
        "getOrComputeLayout",
        "layoutWithNewMeasureInputs",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "layoutWithNewMeasureInputs--hBUhpc",
        "(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Landroidx/compose/ui/text/TextLayoutResult;",
        "mergeRecords",
        "previous",
        "current",
        "applied",
        "prependStateRecord",
        "",
        "updateCacheIfWritable",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "updateNonMeasureInputs",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "singleLine",
        "",
        "softWrap",
        "CacheRecord",
        "MeasureInputs",
        "NonMeasureInputs",
        "foundation_release"
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
.field private final measureInputs$delegate:Landroidx/compose/runtime/MutableState;

.field private final nonMeasureInputs$delegate:Landroidx/compose/runtime/MutableState;

.field private record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    nop

    .line 64
    nop

    .line 65
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs$Companion;->getMutationPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->nonMeasureInputs$delegate:Landroidx/compose/runtime/MutableState;

    .line 67
    nop

    .line 68
    nop

    .line 69
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->Companion:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs$Companion;->getMutationPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->measureInputs$delegate:Landroidx/compose/runtime/MutableState;

    .line 251
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    .line 62
    return-void
.end method

.method private final computeLayout(Ljava/lang/CharSequence;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 14
    .param p1, "visualText"    # Ljava/lang/CharSequence;
    .param p2, "nonMeasureInputs"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    .param p3, "measureInputs"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;
    .param p4, "prevResult"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 235
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v8

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getSoftWrap()Z

    move-result v5

    .line 240
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 234
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    .line 235
    nop

    .line 236
    nop

    .line 234
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 239
    nop

    .line 234
    const/4 v10, 0x0

    .line 237
    nop

    .line 238
    nop

    .line 240
    nop

    .line 234
    const/16 v11, 0x2c

    const/4 v13, 0x0

    move-object v0, v12

    move-object v1, v6

    move v6, v10

    move v10, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    .local v0, "textDelegate":Landroidx/compose/foundation/text/TextDelegate;
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getConstraints-msEJaDk()J

    move-result-wide v2

    .line 243
    nop

    .line 245
    nop

    .line 244
    nop

    .line 246
    nop

    .line 243
    move-object/from16 v4, p4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    return-object v1
.end method

.method private final getMeasureInputs()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;
    .locals 3

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->measureInputs$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 416
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;

    .line 67
    return-object v0
.end method

.method private final getNonMeasureInputs()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    .locals 3

    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->nonMeasureInputs$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 413
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;

    .line 63
    return-object v0
.end method

.method private final getOrComputeLayout(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 27
    .param p1, "nonMeasureInputs"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    .param p2, "measureInputs"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;

    .line 149
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextFieldState()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v2

    .line 155
    .local v2, "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    iget-object v0, v1, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v3, "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v4, 0x0

    .line 419
    .local v4, "$i$f$withCurrent":I
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    .local v5, "cachedRecord":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;
    const/4 v6, 0x0

    .line 156
    .local v6, "$i$a$-withCurrent-TextFieldLayoutStateCache$getOrComputeLayout$1":I
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v13

    .line 158
    .local v13, "cachedResult":Landroidx/compose/ui/text/TextLayoutResult;
    if-eqz v13, :cond_6

    .line 159
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getVisualText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    if-eqz v0, :cond_6

    .line 160
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getSingleLine()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getSingleLine()Z

    move-result v9

    if-ne v0, v9, :cond_6

    .line 161
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getSoftWrap()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getSoftWrap()Z

    move-result v9

    if-ne v0, v9, :cond_6

    .line 162
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    if-ne v0, v9, :cond_6

    .line 163
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getDensityValue()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v9

    cmpg-float v0, v0, v9

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getFontScale()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v9

    cmpg-float v0, v0, v9

    if-nez v0, :cond_2

    move v0, v7

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getConstraints-msEJaDk()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getConstraints-msEJaDk()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v13

    .line 171
    :cond_3
    nop

    .line 172
    nop

    .line 171
    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_5

    .line 171
    nop

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/compose/ui/text/TextStyle;->hasSameDrawAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v0

    if-ne v0, v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_3

    .line 171
    :cond_5
    move v7, v8

    :goto_3
    if-eqz v7, :cond_6

    .line 174
    nop

    .line 175
    new-instance v8, Landroidx/compose/ui/text/TextLayoutInput;

    .line 176
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v15

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    .line 178
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v17

    .line 179
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v18

    .line 180
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v19

    .line 181
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v20

    .line 182
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v21

    .line 183
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v22

    .line 184
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v23

    .line 185
    invoke-virtual {v13}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v24

    const/16 v26, 0x0

    .line 175
    move-object v14, v8

    invoke-direct/range {v14 .. v26}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/text/TextLayoutResult;->copy-O0kMr_c$default(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/TextLayoutInput;JILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    return-object v0

    .line 192
    :cond_6
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v1, v0, v7, v8, v13}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->computeLayout(Ljava/lang/CharSequence;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    .line 193
    move-object v9, v0

    .local v9, "newResult":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v10, 0x0

    .line 196
    .local v10, "$i$a$-also-TextFieldLayoutStateCache$getOrComputeLayout$1$1":I
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 197
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;
    const/4 v12, 0x0

    .line 420
    .local v12, "$i$f$updateCacheIfWritable":I
    sget-object v14, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 422
    .local v14, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    move-result v15

    if-nez v15, :cond_7

    .line 423
    iget-object v15, v11, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    check-cast v15, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v15, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/16 v16, 0x0

    .line 424
    .local v16, "$i$f$writable":I
    const/16 v17, 0x0

    .line 425
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 426
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 427
    .local v20, "$i$a$-sync-SnapshotKt$writable$1$iv$iv":I
    :try_start_0
    move-object v1, v11

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v15, v1, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v1, "$this$getOrComputeLayout_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;
    const/16 v21, 0x0

    .line 198
    .local v21, "$i$a$-updateCacheIfWritable-TextFieldLayoutStateCache$getOrComputeLayout$1$1$1":I
    move-object/from16 v22, v3

    .end local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .local v22, "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setVisualText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getSingleLine()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setSingleLine(Z)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getSoftWrap()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setSoftWrap(Z)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;->getTextStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setTextStyle(Landroidx/compose/ui/text/TextStyle;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getDensityValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setDensityValue(F)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getFontScale()F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setFontScale(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    move-object/from16 v23, v2

    .end local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .local v23, "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setConstraints-BRTryo0(J)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setFontFamilyResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 207
    invoke-virtual {v1, v9}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;->setLayoutResult(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 208
    nop

    .end local v1    # "$this$getOrComputeLayout_u24lambda_u243_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;
    .end local v21    # "$i$a$-updateCacheIfWritable-TextFieldLayoutStateCache$getOrComputeLayout$1$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$1$iv$iv":I
    nop

    .line 426
    monitor-exit v18

    .line 425
    .end local v18    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 428
    .end local v17    # "$i$f$sync":I
    nop

    .line 429
    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 428
    .local v2, "$i$a$-also-SnapshotKt$writable$2$iv$iv":I
    move-object v3, v11

    check-cast v3, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 424
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-also-SnapshotKt$writable$2$iv$iv":I
    goto :goto_5

    .line 426
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .local v2, "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    goto :goto_4

    .end local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    .end local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_4
    monitor-exit v18

    throw v0

    .line 422
    .end local v15    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v16    # "$i$f$writable":I
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    .line 430
    .end local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_5
    goto :goto_6

    .line 196
    .end local v11    # "this_$iv":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;
    .end local v12    # "$i$f$updateCacheIfWritable":I
    .end local v14    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .restart local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    .line 210
    .end local v2    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .end local v3    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v22    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v23    # "visualText":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    :goto_6
    nop

    .line 193
    .end local v9    # "newResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v10    # "$i$a$-also-TextFieldLayoutStateCache$getOrComputeLayout$1$1":I
    nop

    .line 192
    return-object v0
.end method

.method private final setMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->measureInputs$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 417
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 418
    nop

    .line 67
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setNonMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;

    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->nonMeasureInputs$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 415
    nop

    .line 63
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final updateCacheIfWritable(Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    .local v0, "$i$f$updateCacheIfWritable":I
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 217
    .local v1, "snapshot":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    check-cast v2, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v2, "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$f$writable":I
    const/4 v4, 0x0

    .line 432
    .local v4, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 433
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v7, 0x0

    .line 434
    .local v7, "$i$a$-sync-SnapshotKt$writable$1$iv":I
    const/4 v8, 0x1

    :try_start_0
    move-object v9, p0

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v7    # "$i$a$-sync-SnapshotKt$writable$1$iv":I
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 432
    .end local v5    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 435
    .end local v4    # "$i$f$sync":I
    move-object v4, v9

    .line 436
    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 435
    .local v5, "$i$a$-also-SnapshotKt$writable$2$iv":I
    move-object v6, p0

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 431
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-also-SnapshotKt$writable$2$iv":I
    goto :goto_0

    .line 433
    .local v4, "$i$f$sync":I
    .local v5, "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    :catchall_0
    move-exception v7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v7

    .line 220
    .end local v2    # "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v3    # "$i$f$writable":I
    .end local v4    # "$i$f$sync":I
    .end local v5    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    return-object v0
.end method

.method public getValue()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 3

    .line 87
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getNonMeasureInputs()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 88
    .local v0, "nonMeasureInputs":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getMeasureInputs()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 89
    .local v1, "measureInputs":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getOrComputeLayout(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    return-object v0
.end method

.method public final layoutWithNewMeasureInputs--hBUhpc(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 8
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p3, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p4, "constraints"    # J

    .line 132
    new-instance v7, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    const/4 v6, 0x0

    .line 132
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .local v0, "measureInputs":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->setMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)V

    .line 139
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getNonMeasureInputs()Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    .local v1, "nonMeasureInputs":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->getOrComputeLayout(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$MeasureInputs;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    return-object v2

    .line 139
    .end local v1    # "nonMeasureInputs":Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "$i$a$-checkNotNull-TextFieldLayoutStateCache$layoutWithNewMeasureInputs$nonMeasureInputs$1":I
    nop

    .line 139
    .end local v1    # "$i$a$-checkNotNull-TextFieldLayoutStateCache$layoutWithNewMeasureInputs$nonMeasureInputs$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called layoutWithNewMeasureInputs before updateNonMeasureInputs"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0
    .param p1, "previous"    # Landroidx/compose/runtime/snapshots/StateRecord;
    .param p2, "current"    # Landroidx/compose/runtime/snapshots/StateRecord;
    .param p3, "applied"    # Landroidx/compose/runtime/snapshots/StateRecord;

    .line 268
    return-object p3
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/runtime/snapshots/StateRecord;

    .line 256
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.foundation.text2.input.internal.TextFieldLayoutStateCache.CacheRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->record:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$CacheRecord;

    .line 257
    return-void
.end method

.method public final updateNonMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextStyle;ZZ)V
    .locals 1
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "singleLine"    # Z
    .param p4, "softWrap"    # Z

    .line 109
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 109
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextStyle;ZZ)V

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->setNonMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache$NonMeasureInputs;)V

    .line 115
    return-void
.end method
