.class final Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/Tooltip_androidKt;->PlainTooltip-Fg7CxbU(Landroidx/compose/material3/CaretScope;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CaretProperties;Landroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/draw/DrawResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "anchorLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
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
.field final synthetic $caretProperties:Landroidx/compose/material3/CaretProperties;

.field final synthetic $configuration:Landroid/content/res/Configuration;

.field final synthetic $containerColor:J

.field final synthetic $density:Landroidx/compose/ui/unit/Density;


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$configuration:Landroid/content/res/Configuration;

    iput-wide p3, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$containerColor:J

    iput-object p5, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$caretProperties:Landroidx/compose/material3/CaretProperties;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;
    .locals 7
    .param p1, "$this$drawCaret"    # Landroidx/compose/ui/draw/CacheDrawScope;
    .param p2, "anchorLayoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 74
    nop

    .line 75
    iget-object v1, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 76
    iget-object v2, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$configuration:Landroid/content/res/Configuration;

    .line 77
    iget-wide v3, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$containerColor:J

    .line 78
    iget-object v5, p0, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->$caretProperties:Landroidx/compose/material3/CaretProperties;

    .line 79
    nop

    .line 74
    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/Tooltip_androidKt;->access$drawCaretWithPath-Bx497Mc(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JLandroidx/compose/material3/CaretProperties;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 73
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$customModifier$1$1;->invoke(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method
