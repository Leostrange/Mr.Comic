.class final Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;


# direct methods
.method public static synthetic $r8$lambda$FPMwr6ijST40NW2PK61NtaYL-tU(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;->invoke$lambda$0(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;

    invoke-direct {v0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;-><init>()V

    sput-object v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Z)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Z

    .line 1219
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 1216
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C1216@48407L85:MainActivity.kt#kb949x"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1217
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 1218
    :cond_1
    :goto_0
    new-instance v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-23$1$$ExternalSyntheticLambda0;-><init>()V

    .line 1217
    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-static {v1, v0, p1, v2}, Lcom/example/mrcomic/MainActivityKt;->MrComicApp(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1221
    :goto_1
    return-void
.end method
