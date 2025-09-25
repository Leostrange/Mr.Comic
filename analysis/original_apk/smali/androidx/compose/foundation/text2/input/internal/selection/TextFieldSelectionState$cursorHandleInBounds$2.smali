.class final Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSelectionState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,1235:1\n495#2,4:1236\n500#2:1245\n129#3,5:1240\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2\n*L\n240#1:1236,4\n240#1:1245\n240#1:1240,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 10

    .line 240
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    const/4 v2, 0x0

    .line 1236
    .local v2, "$i$f$withoutReadObservation":I
    nop

    .line 1237
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 1238
    .local v3, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1239
    move-object v4, v3

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v5, 0x0

    .line 1240
    .local v5, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1241
    .local v6, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1242
    const/4 v7, 0x0

    .line 240
    .local v7, "$i$a$-withoutReadObservation-TextFieldSelectionState$cursorHandleInBounds$2$position$1":I
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1242
    .end local v7    # "$i$a$-withoutReadObservation-TextFieldSelectionState$cursorHandleInBounds$2$position$1":I
    nop

    .line 1244
    :try_start_2
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1242
    nop

    .line 1245
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$i$f$enter":I
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1239
    nop

    .line 240
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-wide v0, v8

    .line 242
    .local v0, "position":J
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->access$getTextLayoutCoordinates(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    .line 242
    nop

    .line 243
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_0

    .line 243
    nop

    .line 244
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v2

    .line 242
    goto :goto_0

    .line 245
    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 242
    return-object v2

    .line 1244
    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .restart local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "$i$f$enter":I
    .restart local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1245
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "$i$f$enter":I
    .end local v6    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .restart local v3    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v1

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
