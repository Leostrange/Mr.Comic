.class final Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidDragAndDropSource.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback;->cachePicture(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDragAndDropSource.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDragAndDropSource.android.kt\nandroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,146:1\n299#2,20:147\n246#2:167\n*S KotlinDebug\n*F\n+ 1 AndroidDragAndDropSource.android.kt\nandroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1\n*L\n132#1:147,20\n142#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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
.field final synthetic $height:I

.field final synthetic $picture:Landroid/graphics/Picture;

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroid/graphics/Picture;II)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$picture:Landroid/graphics/Picture;

    iput p2, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$width:I

    iput p3, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$height:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 129
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 14
    .param p1, "$this$onDrawWithContent"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 131
    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$picture:Landroid/graphics/Picture;

    iget v1, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$width:I

    iget v2, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$height:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->Canvas(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    .line 130
    nop

    .line 132
    .local v0, "pictureCanvas":Landroidx/compose/ui/graphics/Canvas;
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 134
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    .line 136
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    .line 132
    nop

    .local v1, "$this$draw_u2dGRGpd60$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v2, "layoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .local v3, "size$iv":J
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$f$draw-GRGpd60":I
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v6

    .line 148
    .local v6, "prevDensity$iv":Landroidx/compose/ui/unit/Density;
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    .line 149
    .local v7, "prevLayoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v8

    .line 150
    .local v8, "prevCanvas$iv":Landroidx/compose/ui/graphics/Canvas;
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v9

    .line 151
    .local v9, "prevSize$iv":J
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v11

    .local v11, "$this$draw_GRGpd60_u24lambda_u247$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/4 v12, 0x0

    .line 152
    .local v12, "$i$a$-apply-DrawScopeKt$draw$1$iv":I
    move-object v13, p1

    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-interface {v11, v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 153
    invoke-interface {v11, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 154
    invoke-interface {v11, v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 155
    invoke-interface {v11, v3, v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 156
    nop

    .line 151
    .end local v11    # "$this$draw_GRGpd60_u24lambda_u247$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v12    # "$i$a$-apply-DrawScopeKt$draw$1$iv":I
    nop

    .line 157
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 158
    move-object v11, v1

    .local v11, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v12, 0x0

    .line 138
    .local v12, "$i$a$-draw-GRGpd60-CacheDrawScopeDragShadowCallback$cachePicture$1$1$1":I
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 139
    nop

    .line 158
    .end local v11    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v12    # "$i$a$-draw-GRGpd60-CacheDrawScopeDragShadowCallback$cachePicture$1$1$1":I
    nop

    .line 159
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 160
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v11

    .local v11, "$this$draw_GRGpd60_u24lambda_u248$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$a$-apply-DrawScopeKt$draw$2$iv":I
    invoke-interface {v11, v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 162
    invoke-interface {v11, v7}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 163
    invoke-interface {v11, v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 164
    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 165
    nop

    .line 160
    .end local v11    # "$this$draw_GRGpd60_u24lambda_u248$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v12    # "$i$a$-apply-DrawScopeKt$draw$2$iv":I
    nop

    .line 166
    nop

    .line 140
    .end local v1    # "$this$draw_u2dGRGpd60$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v2    # "layoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v3    # "size$iv":J
    .end local v5    # "$i$f$draw-GRGpd60":I
    .end local v6    # "prevDensity$iv":Landroidx/compose/ui/unit/Density;
    .end local v7    # "prevLayoutDirection$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v8    # "prevCanvas$iv":Landroidx/compose/ui/graphics/Canvas;
    .end local v9    # "prevSize$iv":J
    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$picture:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 142
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v1, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    iget-object v2, p0, Landroidx/compose/foundation/draganddrop/CacheDrawScopeDragShadowCallback$cachePicture$1$1;->$picture:Landroid/graphics/Picture;

    const/4 v3, 0x0

    .line 167
    .local v3, "$i$f$drawIntoCanvas":I
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    .local v4, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$a$-drawIntoCanvas-CacheDrawScopeDragShadowCallback$cachePicture$1$1$2":I
    invoke-static {v4}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 167
    .end local v4    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v5    # "$i$a$-drawIntoCanvas-CacheDrawScopeDragShadowCallback$cachePicture$1$1$2":I
    nop

    .line 143
    .end local v1    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v3    # "$i$f$drawIntoCanvas":I
    return-void
.end method
