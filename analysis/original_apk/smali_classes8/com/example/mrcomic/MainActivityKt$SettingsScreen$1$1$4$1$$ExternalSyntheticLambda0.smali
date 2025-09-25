.class public final synthetic Lcom/example/mrcomic/MainActivityKt$SettingsScreen$1$1$4$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$SettingsScreen$1$1$4$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$SettingsScreen$1$1$4$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/example/mrcomic/MainActivityKt$SettingsScreen$1$1$4$1;->$r8$lambda$kIST34xx8ACYjDwjmrHdDTFeqBY(Landroidx/compose/runtime/MutableState;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
