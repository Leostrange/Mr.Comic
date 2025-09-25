.class public final Landroidx/compose/foundation/text2/PasswordRevealFilter;
.super Ljava/lang/Object;
.source "BasicSecureTextField.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/InputTransformation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicSecureTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicSecureTextField.kt\nandroidx/compose/foundation/text2/PasswordRevealFilter\n+ 2 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n*L\n1#1,523:1\n75#2:524\n108#2,2:525\n*S KotlinDebug\n*F\n+ 1 BasicSecureTextField.kt\nandroidx/compose/foundation/text2/PasswordRevealFilter\n*L\n412#1:524\n412#1:525,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R+\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078@@BX\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/PasswordRevealFilter;",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "scheduleHide",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "<set-?>",
        "",
        "revealCodepointIndex",
        "getRevealCodepointIndex$foundation_release",
        "()I",
        "setRevealCodepointIndex",
        "(I)V",
        "revealCodepointIndex$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "getScheduleHide",
        "()Lkotlin/jvm/functions/Function0;",
        "hide",
        "transformInput",
        "originalValue",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "valueWithChanges",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer;",
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
.field private final revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final scheduleHide:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "scheduleHide"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->scheduleHide:Lkotlin/jvm/functions/Function0;

    .line 412
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 408
    return-void
.end method

.method private final setRevealCodepointIndex(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 412
    iget-object v0, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 525
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 526
    nop

    .line 412
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public final getRevealCodepointIndex$foundation_release()I
    .locals 3

    .line 412
    iget-object v0, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 524
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 412
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method public final getScheduleHide()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->scheduleHide:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .line 442
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->setRevealCodepointIndex(I)V

    .line 443
    return-void
.end method

.method public transformInput(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/TextFieldBuffer;)V
    .locals 5
    .param p1, "originalValue"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "valueWithChanges"    # Landroidx/compose/foundation/text2/input/TextFieldBuffer;

    .line 420
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getChangeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 421
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getRange--jx7JFs(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 422
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getOriginalRange--jx7JFs(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 420
    :goto_0
    move v0, v2

    .line 425
    .local v0, "singleCharacterInsertion":Z
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 430
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text2/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;->getRange--jx7JFs(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    .line 431
    .local v1, "insertionPoint":I
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->getRevealCodepointIndex$foundation_release()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 433
    iget-object v2, p0, Landroidx/compose/foundation/text2/PasswordRevealFilter;->scheduleHide:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 434
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->setRevealCodepointIndex(I)V

    .line 436
    :cond_2
    return-void

    .line 426
    .end local v1    # "insertionPoint":I
    :cond_3
    :goto_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text2/PasswordRevealFilter;->setRevealCodepointIndex(I)V

    .line 427
    return-void
.end method
