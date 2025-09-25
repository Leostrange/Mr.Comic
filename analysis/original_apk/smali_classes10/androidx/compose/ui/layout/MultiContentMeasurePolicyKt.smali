.class public final Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;
.super Ljava/lang/Object;
.source "MultiContentMeasurePolicy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "createMeasurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "measurePolicy",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 3
    .param p0, "measurePolicy"    # Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 201
    move-object v0, p0

    .local v0, "$this$createMeasurePolicy_u24lambda_u240":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$a$-with-MultiContentMeasurePolicyKt$createMeasurePolicy$1":I
    new-instance v2, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt$createMeasurePolicy$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt$createMeasurePolicy$1$1;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    .line 201
    .end local v0    # "$this$createMeasurePolicy_u24lambda_u240":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local v1    # "$i$a$-with-MultiContentMeasurePolicyKt$createMeasurePolicy$1":I
    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 228
    return-object v2
.end method
