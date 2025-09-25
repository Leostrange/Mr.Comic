.class public final Landroidx/compose/ui/unit/FontScalingKt;
.super Ljava/lang/Object;
.source "FontScaling.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontScaling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontScaling.kt\nandroidx/compose/ui/unit/FontScalingKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,105:1\n81#2:106\n107#2,2:107\n*S KotlinDebug\n*F\n+ 1 FontScaling.kt\nandroidx/compose/ui/unit/FontScalingKt\n*L\n43#1:106\n43#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\"1\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018G@GX\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\t\u0010\n\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "<set-?>",
        "",
        "DisableNonLinearFontScalingInCompose",
        "getDisableNonLinearFontScalingInCompose$annotations",
        "()V",
        "getDisableNonLinearFontScalingInCompose",
        "()Z",
        "setDisableNonLinearFontScalingInCompose",
        "(Z)V",
        "DisableNonLinearFontScalingInCompose$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "ui-unit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DisableNonLinearFontScalingInCompose$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/unit/FontScalingKt;->DisableNonLinearFontScalingInCompose$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public static final getDisableNonLinearFontScalingInCompose()Z
    .locals 4

    .line 43
    sget-object v0, Landroidx/compose/ui/unit/FontScalingKt;->DisableNonLinearFontScalingInCompose$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 43
    return v0
.end method

.method public static synthetic getDisableNonLinearFontScalingInCompose$annotations()V
    .locals 0

    return-void
.end method

.method public static final setDisableNonLinearFontScalingInCompose(Z)V
    .locals 5
    .param p0, "<set-?>"    # Z

    .line 43
    sget-object v0, Landroidx/compose/ui/unit/FontScalingKt;->DisableNonLinearFontScalingInCompose$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 108
    nop

    .line 43
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method
