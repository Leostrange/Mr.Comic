.class public final Landroidx/compose/ui/graphics/AndroidPath_androidKt;
.super Ljava/lang/Object;
.source "AndroidPath.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\r\u0010\u0002\u001a\u00020\u0003*\u00020\u0001H\u0086\u0008\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Path",
        "Landroidx/compose/ui/graphics/Path;",
        "asAndroidPath",
        "Landroid/graphics/Path;",
        "asComposePath",
        "ui-graphics_release"
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
.method public static final Path()Landroidx/compose/ui/graphics/Path;
    .locals 3

    .line 23
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public static final asAndroidPath(Landroidx/compose/ui/graphics/Path;)Landroid/graphics/Path;
    .locals 3
    .param p0, "$this$asAndroidPath"    # Landroidx/compose/ui/graphics/Path;

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$asAndroidPath":I
    instance-of v1, p0, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v1, :cond_0

    .line 36
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object v1

    .line 39
    return-object v1

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unable to obtain android.graphics.Path"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 1
    .param p0, "$this$asComposePath"    # Landroid/graphics/Path;

    .line 28
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    check-cast v0, Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method
