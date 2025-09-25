.class public final synthetic Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->$r8$lambda$cAib3SiRXhoSJ4ddMKIQ4VGPkgk(Landroid/content/Context;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
