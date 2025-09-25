.class final Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavHostController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/compose/NavHostControllerKt;->NavControllerSaver(Landroid/content/Context;)Landroidx/compose/runtime/saveable/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/os/Bundle;",
        "Landroidx/navigation/NavHostController;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHostController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHostController.kt\nandroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavHostController;",
        "it",
        "Landroid/os/Bundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;->$context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/os/Bundle;)Landroidx/navigation/NavHostController;
    .locals 3
    .param p1, "it"    # Landroid/os/Bundle;

    .line 83
    iget-object v0, p0, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;->$context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/navigation/compose/NavHostControllerKt;->access$createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    move-result-object v0

    move-object v1, v0

    .line 86
    .local v1, "$this$invoke_u24lambda_u240":Landroidx/navigation/NavHostController;
    const/4 v2, 0x0

    .line 83
    .local v2, "$i$a$-apply-NavHostControllerKt$NavControllerSaver$2$1":I
    invoke-virtual {v1, p1}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .end local v1    # "$this$invoke_u24lambda_u240":Landroidx/navigation/NavHostController;
    .end local v2    # "$i$a$-apply-NavHostControllerKt$NavControllerSaver$2$1":I
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;->invoke(Landroid/os/Bundle;)Landroidx/navigation/NavHostController;

    move-result-object v0

    return-object v0
.end method
