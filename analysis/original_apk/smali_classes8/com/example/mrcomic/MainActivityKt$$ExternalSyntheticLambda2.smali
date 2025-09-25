.class public final synthetic Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lcom/example/mrcomic/ComicViewModel;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;Lcom/example/mrcomic/ComicViewModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$0:J

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$2:Lcom/example/mrcomic/ComicViewModel;

    iput p5, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$3:I

    iput p6, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-wide v0, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$0:J

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$2:Lcom/example/mrcomic/ComicViewModel;

    iget v4, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$3:I

    iget v5, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda2;->f$4:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/example/mrcomic/MainActivityKt;->$r8$lambda$A0XQat4AlVoZeg_lmDoIdUgQC9g(JLkotlin/jvm/functions/Function0;Lcom/example/mrcomic/ComicViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
