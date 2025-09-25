.class public final Landroidx/navigation/compose/BackStackEntryIdViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NavBackStackEntryProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavBackStackEntryProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavBackStackEntryProvider.kt\nandroidx/navigation/compose/BackStackEntryIdViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/navigation/compose/BackStackEntryIdViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "handle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "(Landroidx/lifecycle/SavedStateHandle;)V",
        "IdKey",
        "",
        "id",
        "Ljava/util/UUID;",
        "getId",
        "()Ljava/util/UUID;",
        "saveableStateHolderRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
        "getSaveableStateHolderRef",
        "()Ljava/lang/ref/WeakReference;",
        "setSaveableStateHolderRef",
        "(Ljava/lang/ref/WeakReference;)V",
        "onCleared",
        "",
        "navigation-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final IdKey:Ljava/lang/String;

.field private final id:Ljava/util/UUID;

.field public saveableStateHolderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4
    .param p1, "handle"    # Landroidx/lifecycle/SavedStateHandle;

    .line 68
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 70
    const-string v0, "SaveableStateHolder_BackStackEntryKey"

    iput-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->IdKey:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->IdKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 88
    move-object v1, v0

    .local v1, "it":Ljava/util/UUID;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-also-BackStackEntryIdViewModel$id$1":I
    iget-object v3, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->IdKey:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v1    # "it":Ljava/util/UUID;
    .end local v2    # "$i$a$-also-BackStackEntryIdViewModel$id$1":I
    :cond_0
    iput-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->id:Ljava/util/UUID;

    .line 68
    return-void
.end method


# virtual methods
.method public final getId()Ljava/util/UUID;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSaveableStateHolderRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->saveableStateHolderRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "saveableStateHolderRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 83
    invoke-virtual {p0}, Landroidx/navigation/compose/BackStackEntryIdViewModel;->getSaveableStateHolderRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->id:Ljava/util/UUID;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->removeState(Ljava/lang/Object;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/compose/BackStackEntryIdViewModel;->getSaveableStateHolderRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 85
    return-void
.end method

.method public final setSaveableStateHolderRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->saveableStateHolderRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
