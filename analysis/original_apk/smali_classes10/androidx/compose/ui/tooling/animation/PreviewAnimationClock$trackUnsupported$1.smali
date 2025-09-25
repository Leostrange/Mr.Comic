.class final Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewAnimationClock.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackUnsupported(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $label:Ljava/lang/String;

.field final synthetic this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;->$label:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;->invoke(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .param p1, "it"    # Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;->this$0:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$trackUnsupported$1;->$label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->access$createUnsupported(Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Ljava/lang/String;)V

    .line 201
    return-void
.end method
