.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 6 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 9 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,987:1\n847#1:1012\n847#1:1026\n847#1:1058\n847#1:1063\n1208#2:988\n1187#2,2:989\n361#3,7:991\n361#3,7:998\n361#3,7:1049\n495#4,4:1005\n500#4:1018\n495#4,4:1019\n500#4:1032\n495#4,4:1033\n500#4:1042\n129#5,3:1009\n133#5:1017\n129#5,3:1023\n133#5:1031\n129#5,5:1037\n1072#6,4:1013\n1072#6,4:1027\n1072#6,2:1043\n1074#6,2:1047\n1072#6,4:1059\n1072#6,4:1064\n1072#6,4:1068\n1855#7,2:1045\n215#8,2:1056\n33#9,6:1072\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n*L\n470#1:1012\n540#1:1026\n835#1:1058\n841#1:1063\n384#1:988\n384#1:989,2\n421#1:991,7\n457#1:998,7\n763#1:1049,7\n469#1:1005,4\n469#1:1018\n527#1:1019,4\n527#1:1032\n567#1:1033,4\n567#1:1042\n469#1:1009,3\n469#1:1017\n527#1:1023,3\n527#1:1031\n567#1:1037,5\n470#1:1013,4\n540#1:1027,4\n591#1:1043,2\n591#1:1047,2\n835#1:1059,4\n841#1:1064,4\n847#1:1068,4\n592#1:1045,2\n824#1:1056,2\n947#1:1072,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001:\u0003cdeB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J%\u0010+\u001a\u00020,2\u001d\u0010-\u001a\u0019\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u0002010.\u00a2\u0006\u0002\u00082J!\u00103\u001a\u0002012\u0006\u00104\u001a\u0002012\u000e\u0008\u0004\u00105\u001a\u0008\u0012\u0004\u0012\u00020706H\u0082\u0008J\u0010\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u0010H\u0002J\u0008\u0010:\u001a\u000207H\u0002J\u000e\u0010;\u001a\u0002072\u0006\u0010<\u001a\u00020\u0010J\u0008\u0010=\u001a\u000207H\u0002J\u0006\u0010>\u001a\u000207J\u0012\u0010?\u001a\u0004\u0018\u00010\u00182\u0006\u00109\u001a\u00020\u0010H\u0002J\u0017\u0010@\u001a\u0002072\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020706H\u0082\u0008J\u0006\u0010A\u001a\u000207J\u0010\u0010B\u001a\u0002072\u0006\u0010C\u001a\u00020DH\u0002J\"\u0010E\u001a\u0002072\u0006\u0010F\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u00102\u0008\u0008\u0002\u0010H\u001a\u00020\u0010H\u0002J\u0008\u0010I\u001a\u000207H\u0016J\u0008\u0010J\u001a\u000207H\u0016J\u0008\u0010K\u001a\u000207H\u0016J0\u0010L\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0008\u0010O\u001a\u0004\u0018\u00010\u00182\u0011\u0010P\u001a\r\u0012\u0004\u0012\u00020706\u00a2\u0006\u0002\u0008QH\u0002\u00a2\u0006\u0002\u0010RJ(\u0010S\u001a\u00020\u001d2\u0008\u0010O\u001a\u0004\u0018\u00010\u00182\u0011\u0010P\u001a\r\u0012\u0004\u0012\u00020706\u00a2\u0006\u0002\u0008Q\u00a2\u0006\u0002\u0010TJ\u0018\u0010U\u001a\u0002072\u0006\u0010V\u001a\u00020\u00032\u0006\u0010W\u001a\u00020\u0014H\u0002J2\u0010U\u001a\u0002072\u0006\u0010V\u001a\u00020\u00032\u0008\u0010O\u001a\u0004\u0018\u00010\u00182\u0011\u0010P\u001a\r\u0012\u0004\u0012\u00020706\u00a2\u0006\u0002\u0008QH\u0002\u00a2\u0006\u0002\u0010XJ.\u0010U\u001a\u0008\u0012\u0004\u0012\u00020N0M2\u0008\u0010O\u001a\u0004\u0018\u00010\u00182\u0011\u0010P\u001a\r\u0012\u0004\u0012\u00020706\u00a2\u0006\u0002\u0008Q\u00a2\u0006\u0002\u0010RJB\u0010Y\u001a\u00020Z2\u0008\u0010[\u001a\u0004\u0018\u00010Z2\u0006\u0010\\\u001a\u00020\u00032\u0006\u0010]\u001a\u00020D2\u0006\u0010^\u001a\u00020\n2\u0011\u0010_\u001a\r\u0012\u0004\u0012\u00020706\u00a2\u0006\u0002\u0008QH\u0002\u00a2\u0006\u0002\u0010`J\u0014\u0010a\u001a\u0004\u0018\u00010\u00032\u0008\u0010O\u001a\u0004\u0018\u00010\u0018H\u0002J\u000c\u0010b\u001a\u000207*\u00020\u0003H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00140\u0013j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0014`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00060\u001aR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u001e\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u00030\u0013j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u0003`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00060$R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010%\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u00030\u0013j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u0003`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006f"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "slotReusePolicy",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "NoIntrinsicsMessage",
        "",
        "compositionContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "getCompositionContext",
        "()Landroidx/compose/runtime/CompositionContext;",
        "setCompositionContext",
        "(Landroidx/compose/runtime/CompositionContext;)V",
        "currentIndex",
        "",
        "currentPostLookaheadIndex",
        "nodeToNodeState",
        "Ljava/util/HashMap;",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
        "Lkotlin/collections/HashMap;",
        "postLookaheadComposedSlotIds",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "",
        "postLookaheadMeasureScope",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;",
        "postLookaheadPrecomposeSlotHandleMap",
        "",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "precomposeMap",
        "precomposedCount",
        "reusableCount",
        "reusableSlotIdsSet",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;",
        "scope",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;",
        "slotIdToNode",
        "value",
        "getSlotReusePolicy",
        "()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "setSlotReusePolicy",
        "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "createMeasurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "createMeasureResult",
        "result",
        "placeChildrenBlock",
        "Lkotlin/Function0;",
        "",
        "createNodeAt",
        "index",
        "disposeCurrentNodes",
        "disposeOrReuseStartingFromIndex",
        "startIndex",
        "disposeUnusedSlotsInPostLookahead",
        "forceRecomposeChildren",
        "getSlotIdAtIndex",
        "ignoreRemeasureRequests",
        "makeSureStateIsConsistent",
        "markActiveNodesAsReused",
        "deactivate",
        "",
        "move",
        "from",
        "to",
        "count",
        "onDeactivate",
        "onRelease",
        "onReuse",
        "postLookaheadSubcompose",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "slotId",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "precompose",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "subcompose",
        "node",
        "nodeState",
        "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "subcomposeInto",
        "Landroidx/compose/runtime/ReusableComposition;",
        "existing",
        "container",
        "reuseContent",
        "parent",
        "composable",
        "(Landroidx/compose/runtime/ReusableComposition;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/ReusableComposition;",
        "takeNodeFromReusables",
        "resetLayoutState",
        "NodeState",
        "PostLookaheadMeasureScopeImpl",
        "Scope",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final NoIntrinsicsMessage:Ljava/lang/String;

.field private compositionContext:Landroidx/compose/runtime/CompositionContext;

.field private currentIndex:I

.field private currentPostLookaheadIndex:I

.field private final nodeToNodeState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
            ">;"
        }
    .end annotation
.end field

.field private final postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final postLookaheadMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;

.field private final postLookaheadPrecomposeSlotHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final precomposeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private precomposedCount:I

.field private reusableCount:I

.field private final reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

.field private final root:Landroidx/compose/ui/node/LayoutNode;

.field private final scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field private final slotIdToNode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 6
    .param p1, "root"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "slotReusePolicy"    # Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 359
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    .line 375
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 376
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    .line 379
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 381
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadPrecomposeSlotHandleMap:Ljava/util/Map;

    .line 384
    const/4 v0, 0x0

    .line 988
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 989
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 990
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 988
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 384
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 743
    const-string v0, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public static final synthetic access$disposeUnusedSlotsInPostLookahead(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeUnusedSlotsInPostLookahead()V

    return-void
.end method

.method public static final synthetic access$getCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return v0
.end method

.method public static final synthetic access$getCurrentPostLookaheadIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    return v0
.end method

.method public static final synthetic access$getPostLookaheadComposedSlotIds$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public static final synthetic access$getPostLookaheadMeasureScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;

    return-object v0
.end method

.method public static final synthetic access$getPrecomposeMap$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return v0
.end method

.method public static final synthetic access$getReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return v0
.end method

.method public static final synthetic access$getRoot$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public static final synthetic access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    return-object v0
.end method

.method public static final synthetic access$getSlotIdToNode$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$move(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "count"    # I

    .line 353
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method public static final synthetic access$postLookaheadSubcompose(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;

    .line 353
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadSubcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "<set-?>"    # I

    .line 353
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return-void
.end method

.method public static final synthetic access$setCurrentPostLookaheadIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "<set-?>"    # I

    .line 353
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    return-void
.end method

.method public static final synthetic access$setPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "<set-?>"    # I

    .line 353
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return-void
.end method

.method public static final synthetic access$setReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p1, "<set-?>"    # I

    .line 353
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return-void
.end method

.method private final createMeasureResult(Landroidx/compose/ui/layout/MeasureResult;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .param p1, "result"    # Landroidx/compose/ui/layout/MeasureResult;
    .param p2, "placeChildrenBlock"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 737
    .local v0, "$i$f$createMeasureResult":I
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasureResult$1;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasureResult$1;-><init>(Landroidx/compose/ui/layout/MeasureResult;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasureResult;

    .line 741
    return-object v1
.end method

.method private final createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;
    .locals 10
    .param p1, "index"    # I

    .line 834
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "node":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x0

    .line 835
    .local v2, "$i$a$-also-LayoutNodeSubcompositionsState$createNodeAt$1":I
    move-object v5, p0

    .local v5, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    const/4 v6, 0x0

    .line 1058
    .local v6, "$i$f$ignoreRemeasureRequests":I
    iget-object v7, v5, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v7, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 1059
    .local v8, "$i$f$ignoreRemeasureRequests$ui_release":I
    invoke-static {v7, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1060
    const/4 v3, 0x0

    .line 836
    .local v3, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$createNodeAt$1$1":I
    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v9, p1, v1}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 837
    nop

    .line 1060
    .end local v3    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$createNodeAt$1$1":I
    nop

    .line 1061
    invoke-static {v7, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1062
    nop

    .line 1058
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 838
    .end local v5    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v6    # "$i$f$ignoreRemeasureRequests":I
    nop

    .line 834
    .end local v1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "$i$a$-also-LayoutNodeSubcompositionsState$createNodeAt$1":I
    nop

    .line 838
    return-object v0
.end method

.method private final disposeCurrentNodes()V
    .locals 10

    .line 591
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 1043
    .local v1, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1044
    const/4 v2, 0x0

    .line 592
    .local v2, "$i$a$-ignoreRemeasureRequests$ui_release-LayoutNodeSubcompositionsState$disposeCurrentNodes$1":I
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1045
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .local v7, "it":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    const/4 v8, 0x0

    .line 593
    .local v8, "$i$a$-forEach-LayoutNodeSubcompositionsState$disposeCurrentNodes$1$1":I
    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/ReusableComposition;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroidx/compose/runtime/ReusableComposition;->dispose()V

    .line 594
    :cond_0
    nop

    .line 1045
    .end local v7    # "it":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .end local v8    # "$i$a$-forEach-LayoutNodeSubcompositionsState$disposeCurrentNodes$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1046
    :cond_1
    nop

    .line 595
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    .line 596
    nop

    .line 1044
    .end local v2    # "$i$a$-ignoreRemeasureRequests$ui_release-LayoutNodeSubcompositionsState$disposeCurrentNodes$1":I
    nop

    .line 1047
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1048
    nop

    .line 598
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$ignoreRemeasureRequests$ui_release":I
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 599
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 600
    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 601
    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 602
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 604
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    .line 605
    return-void
.end method

.method private final disposeUnusedSlotsInPostLookahead()V
    .locals 2

    .line 722
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadPrecomposeSlotHandleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 732
    return-void
.end method

.method private final getSlotIdAtIndex(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 508
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 509
    .local v0, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private final ignoreRemeasureRequests(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 847
    .local v0, "$i$f$ignoreRemeasureRequests":I
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v1, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x0

    .line 1068
    .local v2, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1069
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1070
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1071
    nop

    .line 847
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "$i$f$ignoreRemeasureRequests$ui_release":I
    return-void
.end method

.method private final markActiveNodesAsReused(Z)V
    .locals 16
    .param p1, "deactivate"    # Z

    .line 561
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 562
    iget-object v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 564
    iget-object v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 565
    .local v2, "childCount":I
    iget v3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    if-eq v3, v2, :cond_4

    .line 566
    iput v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 567
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v4, 0x0

    .line 1033
    .local v4, "$i$f$withoutReadObservation":I
    nop

    .line 1034
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    .line 1035
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1036
    move-object v6, v5

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1037
    .local v7, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1038
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1039
    const/4 v9, 0x0

    .line 568
    .local v9, "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$markActiveNodesAsReused$1":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_3

    .line 569
    :try_start_1
    iget-object v11, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/node/LayoutNode;

    .line 570
    .local v11, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v12, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 571
    .local v12, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getActive()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 572
    invoke-direct {v1, v11}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->resetLayoutState(Landroidx/compose/ui/node/LayoutNode;)V

    .line 573
    if-eqz p1, :cond_1

    .line 574
    invoke-virtual {v12}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/ReusableComposition;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroidx/compose/runtime/ReusableComposition;->deactivate()V

    .line 575
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v13, v15, v14, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActiveState(Landroidx/compose/runtime/MutableState;)V

    goto :goto_1

    .line 577
    :cond_1
    invoke-virtual {v12, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V

    .line 580
    :goto_1
    invoke-static {}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->access$getReusedSlotId$p()Landroidx/compose/ui/layout/SubcomposeLayoutKt$ReusedSlotId$1;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setSlotId(Ljava/lang/Object;)V

    .line 568
    .end local v11    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v12    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 583
    .end local v10    # "i":I
    :cond_3
    nop

    .end local v9    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$markActiveNodesAsReused$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    nop

    .line 1041
    :try_start_2
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1039
    nop

    .line 1042
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1036
    nop

    .line 584
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    iget-object v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_2

    .line 1041
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "childCount":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local p1    # "deactivate":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1042
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "childCount":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "deactivate":Z
    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 587
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    .line 588
    return-void
.end method

.method private final move(III)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "count"    # I

    .line 841
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    const/4 v1, 0x0

    .line 1063
    .local v1, "$i$f$ignoreRemeasureRequests":I
    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v3, 0x0

    .line 1064
    .local v3, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1065
    const/4 v4, 0x0

    .line 842
    .local v4, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$move$1":I
    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    .line 843
    nop

    .line 1065
    .end local v4    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$move$1":I
    nop

    .line 1066
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1067
    nop

    .line 1063
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 844
    .end local v0    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v1    # "$i$f$ignoreRemeasureRequests":I
    return-void
.end method

.method static synthetic move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V
    .locals 0

    .line 840
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method private final postLookaheadSubcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 12
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 927
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    if-ne v0, v1, :cond_1

    .line 928
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 930
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 932
    :goto_1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentPostLookaheadIndex:I

    .line 933
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 935
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v0

    .local v0, "it":Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    const/4 v1, 0x0

    .line 936
    .local v1, "$i$a$-also-LayoutNodeSubcompositionsState$postLookaheadSubcompose$2":I
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadPrecomposeSlotHandleMap:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    nop

    .line 935
    .end local v0    # "it":Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .end local v1    # "$i$a$-also-LayoutNodeSubcompositionsState$postLookaheadSubcompose$2":I
    nop

    .line 938
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_2

    .line 939
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    goto :goto_2

    .line 941
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    .line 945
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_5

    .local v0, "$this$postLookaheadSubcompose_u24lambda_u2426":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 946
    .local v1, "$i$a$-run-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getChildDelegates$ui_release()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .local v3, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 947
    .local v4, "$i$a$-also-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3$1":I
    move-object v5, v3

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1072
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1073
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_4

    .line 1074
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1075
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .local v10, "delegate":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;
    const/4 v11, 0x0

    .line 947
    .local v11, "$i$a$-fastForEach-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3$1$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->markDetachedFromParentLookaheadPass$ui_release()V

    .line 1075
    .end local v10    # "delegate":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;
    .end local v11    # "$i$a$-fastForEach-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3$1$1":I
    nop

    .line 1073
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1077
    .end local v7    # "index$iv":I
    :cond_4
    nop

    .line 948
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .line 946
    .end local v3    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-also-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3$1":I
    nop

    .line 945
    .end local v0    # "$this$postLookaheadSubcompose_u24lambda_u2426":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$a$-run-LayoutNodeSubcompositionsState$postLookaheadSubcompose$3":I
    if-nez v2, :cond_6

    .line 949
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 945
    :cond_6
    return-object v2

    .line 923
    :cond_7
    const/4 v0, 0x0

    .line 924
    .local v0, "$i$a$-require-LayoutNodeSubcompositionsState$postLookaheadSubcompose$1":I
    nop

    .line 923
    .end local v0    # "$i$a$-require-LayoutNodeSubcompositionsState$postLookaheadSubcompose$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final resetLayoutState(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3
    .param p1, "$this$resetLayoutState"    # Landroidx/compose/ui/node/LayoutNode;

    .line 626
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 627
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;
    const/4 v1, 0x0

    .line 628
    .local v1, "$i$a$-let-LayoutNodeSubcompositionsState$resetLayoutState$1":I
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 629
    nop

    .line 627
    .end local v0    # "it":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;
    .end local v1    # "$i$a$-let-LayoutNodeSubcompositionsState$resetLayoutState$1":I
    nop

    .line 630
    :cond_0
    return-void
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V
    .locals 24
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "nodeState"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 469
    move-object/from16 v1, p2

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v3, 0x0

    .line 1005
    .local v3, "$i$f$withoutReadObservation":I
    nop

    .line 1006
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    .line 1007
    .local v4, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1008
    move-object v5, v4

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v6, 0x0

    .line 1009
    .local v6, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v7, v0

    .line 1010
    .local v7, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1011
    const/4 v0, 0x0

    .line 470
    .local v0, "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    const/4 v9, 0x0

    .line 1012
    .local v9, "$i$f$ignoreRemeasureRequests":I
    :try_start_1
    iget-object v10, v8, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v10, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v11, 0x0

    .line 1013
    .local v11, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v12, 0x1

    invoke-static {v10, v12}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1014
    const/4 v13, 0x0

    .line 471
    .local v13, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$subcompose$3$1":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .line 472
    .local v14, "content":Lkotlin/jvm/functions/Function2;
    nop

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/ReusableComposition;

    move-result-object v16

    .line 475
    move-object/from16 v15, p0

    iget-object v12, v15, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    if-eqz v12, :cond_0

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getForceReuse()Z

    move-result v18

    .line 472
    nop

    .line 473
    nop

    .line 474
    nop

    .line 476
    nop

    .line 475
    nop

    .line 477
    move/from16 v21, v0

    .end local v0    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    .local v21, "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;

    invoke-direct {v0, v1, v14}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Lkotlin/jvm/functions/Function2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v22, v2

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v22, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const v2, -0x68551fe9

    move/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "$i$f$withoutReadObservation":I
    .local v23, "$i$f$withoutReadObservation":I
    :try_start_2
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 472
    move-object/from16 v15, p0

    move-object/from16 v17, p1

    move-object/from16 v19, v12

    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcomposeInto(Landroidx/compose/runtime/ReusableComposition;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/ReusableComposition;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setComposition(Landroidx/compose/runtime/ReusableComposition;)V

    .line 481
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceReuse(Z)V

    .line 482
    nop

    .line 1014
    .end local v13    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$subcompose$3$1":I
    .end local v14    # "content":Lkotlin/jvm/functions/Function2;
    nop

    .line 1015
    invoke-static {v10, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1016
    nop

    .line 1012
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v11    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 483
    .end local v8    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v9    # "$i$f$ignoreRemeasureRequests":I
    nop

    .end local v21    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    nop

    .line 1017
    :try_start_3
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1011
    nop

    .line 1018
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "$i$f$enter":I
    .end local v7    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1008
    nop

    .line 484
    .end local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v23    # "$i$f$withoutReadObservation":I
    return-void

    .line 475
    .restart local v0    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v3    # "$i$f$withoutReadObservation":I
    .restart local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v6    # "$i$f$enter":I
    .restart local v7    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v8    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .restart local v9    # "$i$f$ignoreRemeasureRequests":I
    .restart local v10    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v11    # "$i$f$ignoreRemeasureRequests$ui_release":I
    .restart local v13    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$subcompose$3$1":I
    .restart local v14    # "content":Lkotlin/jvm/functions/Function2;
    :cond_0
    move/from16 v21, v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    .end local v0    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v3    # "$i$f$withoutReadObservation":I
    .restart local v21    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v23    # "$i$f$withoutReadObservation":I
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "parent composition reference not set"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "$i$f$enter":I
    .end local v7    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v23    # "$i$f$withoutReadObservation":I
    .end local p1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local p2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1017
    .end local v8    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v9    # "$i$f$ignoreRemeasureRequests":I
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v11    # "$i$f$ignoreRemeasureRequests$ui_release":I
    .end local v13    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$subcompose$3$1":I
    .end local v14    # "content":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$subcompose$3":I
    .restart local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v6    # "$i$f$enter":I
    .restart local v7    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v23    # "$i$f$withoutReadObservation":I
    .restart local p1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .restart local p2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v23    # "$i$f$withoutReadObservation":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v3    # "$i$f$withoutReadObservation":I
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v3    # "$i$f$withoutReadObservation":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v23    # "$i$f$withoutReadObservation":I
    :goto_0
    :try_start_5
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v23    # "$i$f$withoutReadObservation":I
    .end local p1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local p2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1018
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "$i$f$enter":I
    .end local v7    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v23    # "$i$f$withoutReadObservation":I
    .restart local p1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .restart local p2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :catchall_2
    move-exception v0

    goto :goto_1

    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v23    # "$i$f$withoutReadObservation":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v3    # "$i$f$withoutReadObservation":I
    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v3    # "$i$f$withoutReadObservation":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v23    # "$i$f$withoutReadObservation":I
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "slotId"    # Ljava/lang/Object;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 998
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 999
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 1000
    const/4 v3, 0x0

    .line 458
    .local v3, "$i$a$-getOrPut-LayoutNodeSubcompositionsState$subcompose$nodeState$1":I
    new-instance v10, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    sget-object v4, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->getLambda-1$ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ReusableComposition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1000
    .end local v3    # "$i$a$-getOrPut-LayoutNodeSubcompositionsState$subcompose$nodeState$1":I
    move-object v3, v10

    .line 1001
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1004
    :cond_0
    move-object v3, v2

    .line 999
    :goto_0
    nop

    .line 457
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 460
    .local v0, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/ReusableComposition;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/compose/runtime/ReusableComposition;->getHasInvalidations()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 461
    .local v1, "hasPendingChanges":Z
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    if-ne v2, p3, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getForceRecompose()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    :cond_2
    invoke-virtual {v0, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 463
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    .line 464
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    .line 466
    :cond_3
    return-void
.end method

.method private final subcomposeInto(Landroidx/compose/runtime/ReusableComposition;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/ReusableComposition;
    .locals 3
    .param p1, "existing"    # Landroidx/compose/runtime/ReusableComposition;
    .param p2, "container"    # Landroidx/compose/ui/node/LayoutNode;
    .param p3, "reuseContent"    # Z
    .param p4, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p5, "composable"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ReusableComposition;",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Z",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/ReusableComposition;"
        }
    .end annotation

    .line 493
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/ReusableComposition;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    move-object v0, p1

    goto :goto_1

    .line 494
    :cond_1
    :goto_0
    invoke-static {p2, p4}, Landroidx/compose/ui/platform/Wrapper_androidKt;->createSubcomposition(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/ReusableComposition;

    move-result-object v0

    .line 498
    :goto_1
    move-object v1, v0

    .local v1, "$this$subcomposeInto_u24lambda_u246":Landroidx/compose/runtime/ReusableComposition;
    const/4 v2, 0x0

    .line 499
    .local v2, "$i$a$-apply-LayoutNodeSubcompositionsState$subcomposeInto$1":I
    if-nez p3, :cond_2

    .line 500
    invoke-interface {v1, p5}, Landroidx/compose/runtime/ReusableComposition;->setContent(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2

    .line 502
    :cond_2
    invoke-interface {v1, p5}, Landroidx/compose/runtime/ReusableComposition;->setContentWithReuse(Lkotlin/jvm/functions/Function2;)V

    .line 504
    :goto_2
    nop

    .line 498
    .end local v1    # "$this$subcomposeInto_u24lambda_u246":Landroidx/compose/runtime/ReusableComposition;
    .end local v2    # "$i$a$-apply-LayoutNodeSubcompositionsState$subcomposeInto$1":I
    nop

    .line 493
    return-object v0
.end method

.method private final takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 10
    .param p1, "slotId"    # Ljava/lang/Object;

    .line 633
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 634
    return-object v1

    .line 636
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v0, v2

    .line 637
    .local v0, "reusableNodesSectionEnd":I
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v2, v0, v2

    .line 638
    .local v2, "reusableNodesSectionStart":I
    add-int/lit8 v3, v0, -0x1

    .line 639
    .local v3, "index":I
    const/4 v4, -0x1

    .line 641
    .local v4, "chosenIndex":I
    :goto_0
    if-lt v3, v2, :cond_2

    .line 642
    invoke-direct {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 644
    move v4, v3

    .line 645
    goto :goto_1

    .line 647
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 650
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 652
    add-int/lit8 v3, v0, -0x1

    .line 653
    :goto_2
    if-lt v3, v2, :cond_5

    .line 654
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 655
    .local v6, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 656
    .local v7, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    nop

    .line 657
    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->access$getReusedSlotId$p()Landroidx/compose/ui/layout/SubcomposeLayoutKt$ReusedSlotId$1;

    move-result-object v9

    if-eq v8, v9, :cond_4

    .line 658
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    invoke-virtual {v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    .line 664
    :cond_3
    nop

    .end local v6    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 660
    .restart local v6    # "node":Landroidx/compose/ui/node/LayoutNode;
    .restart local v7    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :cond_4
    :goto_3
    invoke-virtual {v7, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setSlotId(Ljava/lang/Object;)V

    .line 661
    move v4, v3

    .line 662
    nop

    .line 667
    .end local v6    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :cond_5
    if-ne v4, v5, :cond_6

    .line 669
    goto :goto_4

    .line 671
    :cond_6
    const/4 v6, 0x1

    if-eq v3, v2, :cond_7

    .line 673
    invoke-direct {p0, v3, v2, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    .line 675
    :cond_7
    iget v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr v7, v5

    iput v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 676
    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 677
    .local v5, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 679
    .restart local v7    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v1, v9, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActiveState(Landroidx/compose/runtime/MutableState;)V

    .line 680
    invoke-virtual {v7, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceReuse(Z)V

    .line 681
    invoke-virtual {v7, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    .line 682
    move-object v1, v5

    .line 667
    .end local v5    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :goto_4
    return-object v1
.end method


# virtual methods
.method public final createMeasurePolicy(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;

    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v1
.end method

.method public final disposeOrReuseStartingFromIndex(I)V
    .locals 22
    .param p1, "startIndex"    # I

    .line 513
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    iput v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 514
    iget-object v3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 515
    .local v3, "lastReusableIndex":I
    const/4 v5, 0x0

    .line 516
    .local v5, "needApplyNotification":Z
    if-gt v2, v3, :cond_5

    .line 518
    iget-object v6, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    invoke-virtual {v6}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->clear()V

    .line 519
    move/from16 v6, p1

    .local v6, "i":I
    if-gt v6, v3, :cond_0

    .line 520
    :goto_0
    invoke-direct {v1, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v7

    .line 521
    .local v7, "slotId":Ljava/lang/Object;
    iget-object v8, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    invoke-virtual {v8, v7}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->add$ui_release(Ljava/lang/Object;)Z

    .line 519
    .end local v7    # "slotId":Ljava/lang/Object;
    if-eq v6, v3, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 524
    .end local v6    # "i":I
    :cond_0
    iget-object v6, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    iget-object v7, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V

    .line 526
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v6, v3

    .line 527
    sget-object v7, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v7, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v8, 0x0

    .line 1019
    .local v8, "$i$f$withoutReadObservation":I
    nop

    .line 1020
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    .line 1021
    .local v9, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1022
    move-object v10, v9

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v11, 0x0

    .line 1023
    .local v11, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1024
    .local v12, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1025
    const/4 v13, 0x0

    .line 528
    .local v13, "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    :goto_1
    if-lt v6, v2, :cond_4

    .line 529
    :try_start_1
    iget-object v14, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/node/LayoutNode;

    .line 530
    .local v14, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v15, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v15, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 531
    .local v15, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    invoke-virtual {v15}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    .line 532
    .local v17, "slotId":Ljava/lang/Object;
    iget-object v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    move-object/from16 v4, v17

    .end local v17    # "slotId":Ljava/lang/Object;
    .local v4, "slotId":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 533
    :try_start_2
    iget v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 534
    invoke-virtual {v15}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-direct {v1, v14}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->resetLayoutState(Landroidx/compose/ui/node/LayoutNode;)V

    .line 536
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    const/4 v5, 0x1

    move/from16 v21, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_2

    .line 534
    :cond_1
    move/from16 v21, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_2

    .line 1031
    .end local v4    # "slotId":Ljava/lang/Object;
    .end local v13    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    .end local v14    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :catchall_0
    move-exception v0

    move/from16 v21, v3

    goto :goto_3

    .line 540
    .restart local v4    # "slotId":Ljava/lang/Object;
    .restart local v13    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    .restart local v14    # "node":Landroidx/compose/ui/node/LayoutNode;
    .restart local v15    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :cond_2
    move-object/from16 v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    const/16 v17, 0x0

    .line 1026
    .local v17, "$i$f$ignoreRemeasureRequests":I
    :try_start_3
    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/16 v18, 0x0

    .line 1027
    .local v18, "$i$f$ignoreRemeasureRequests$ui_release":I
    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .local v19, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    invoke-static {v2, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1028
    const/4 v0, 0x0

    .line 541
    .local v0, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1$1":I
    move/from16 v20, v0

    .end local v0    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1$1":I
    .local v20, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1$1":I
    iget-object v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {v15}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/ReusableComposition;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    :try_start_4
    invoke-interface {v0}, Landroidx/compose/runtime/ReusableComposition;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 543
    :cond_3
    :try_start_5
    iget-object v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "lastReusableIndex":I
    .local v21, "lastReusableIndex":I
    :try_start_6
    invoke-virtual {v0, v6, v3}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    .line 544
    nop

    .line 1028
    .end local v20    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1$1":I
    nop

    .line 1029
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1030
    nop

    .line 1026
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v18    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 547
    .end local v17    # "$i$f$ignoreRemeasureRequests":I
    .end local v19    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    :goto_2
    iget-object v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    add-int/lit8 v6, v6, -0x1

    move/from16 v2, p1

    move v4, v3

    move/from16 v3, v21

    .end local v4    # "slotId":Ljava/lang/Object;
    .end local v14    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    goto/16 :goto_1

    .line 1031
    .end local v13    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    .end local v21    # "lastReusableIndex":I
    .restart local v3    # "lastReusableIndex":I
    :catchall_1
    move-exception v0

    move/from16 v21, v3

    .end local v3    # "lastReusableIndex":I
    .restart local v21    # "lastReusableIndex":I
    goto :goto_3

    .line 550
    .end local v21    # "lastReusableIndex":I
    .restart local v3    # "lastReusableIndex":I
    .restart local v13    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    :cond_4
    move/from16 v21, v3

    .end local v3    # "lastReusableIndex":I
    .end local v13    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$disposeOrReuseStartingFromIndex$1":I
    .restart local v21    # "lastReusableIndex":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1025
    nop

    .line 1031
    :try_start_7
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1025
    nop

    .line 1032
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1022
    goto :goto_5

    .line 1032
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1031
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v11    # "$i$f$enter":I
    .restart local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_3
    move-exception v0

    :goto_3
    :try_start_8
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v5    # "needApplyNotification":Z
    .end local v6    # "i":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v21    # "lastReusableIndex":I
    .end local p1    # "startIndex":I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1032
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v11    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v3    # "lastReusableIndex":I
    .restart local v5    # "needApplyNotification":Z
    .restart local v6    # "i":I
    .restart local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "startIndex":I
    :catchall_4
    move-exception v0

    move/from16 v21, v3

    .end local v3    # "lastReusableIndex":I
    .restart local v21    # "lastReusableIndex":I
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 516
    .end local v6    # "i":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v21    # "lastReusableIndex":I
    .restart local v3    # "lastReusableIndex":I
    :cond_5
    move/from16 v21, v3

    .line 553
    .end local v3    # "lastReusableIndex":I
    .restart local v21    # "lastReusableIndex":I
    :goto_5
    if-eqz v5, :cond_6

    .line 554
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 557
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    .line 558
    return-void
.end method

.method public final forceRecomposeChildren()V
    .locals 8

    .line 820
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 821
    .local v0, "childCount":I
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    if-eq v1, v0, :cond_1

    .line 824
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 1056
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 824
    .local v5, "$i$a$-forEach-LayoutNodeSubcompositionsState$forceRecomposeChildren$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 825
    .local v6, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    .line 826
    nop

    .line 1056
    .end local v5    # "$i$a$-forEach-LayoutNodeSubcompositionsState$forceRecomposeChildren$1":I
    .end local v6    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 1057
    :cond_0
    nop

    .line 828
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v1

    if-nez v1, :cond_1

    .line 829
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    .line 832
    :cond_1
    return-void
.end method

.method public final getCompositionContext()Landroidx/compose/runtime/CompositionContext;
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public final getSlotReusePolicy()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;
    .locals 1

    .line 359
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    return-object v0
.end method

.method public final makeSureStateIsConsistent()V
    .locals 5

    .line 608
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 609
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_5

    .line 615
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v1, v0, v1

    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v1, v4

    if-ltz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 619
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 623
    return-void

    .line 619
    :cond_3
    const/4 v1, 0x0

    .line 620
    .local v1, "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$3":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state. Precomposed children "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Map size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    .end local v1    # "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_4
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state. Total children "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Reusable children "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    nop

    .line 616
    const-string v3, ". Precomposed children "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .end local v1    # "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 609
    :cond_5
    const/4 v1, 0x0

    .line 610
    .local v1, "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    nop

    .line 610
    const-string v3, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    nop

    .line 610
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    nop

    .line 610
    const-string v3, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .end local v1    # "$i$a$-require-LayoutNodeSubcompositionsState$makeSureStateIsConsistent$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDeactivate()V
    .locals 1

    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    .line 404
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 407
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeCurrentNodes()V

    .line 408
    return-void
.end method

.method public onReuse()V
    .locals 1

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    .line 400
    return-void
.end method

.method public final precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 10
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    .line 760
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 762
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->postLookaheadPrecomposeSlotHandleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1049
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1050
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 1051
    const/4 v3, 0x0

    .line 764
    .local v3, "$i$a$-getOrPut-LayoutNodeSubcompositionsState$precompose$node$1":I
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 765
    .local v4, "reusedNode":Landroidx/compose/ui/node/LayoutNode;
    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 767
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 768
    .local v6, "nodeIndex":I
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v5}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    .line 769
    iget v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v7, v5

    iput v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 770
    move-object v6, v4

    .end local v6    # "nodeIndex":I
    goto :goto_0

    .line 772
    :cond_1
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    move-object v7, v6

    .local v7, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 773
    .local v8, "$i$a$-also-LayoutNodeSubcompositionsState$precompose$node$1$1":I
    iget v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v9, v5

    iput v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 774
    nop

    .line 772
    .end local v7    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "$i$a$-also-LayoutNodeSubcompositionsState$precompose$node$1$1":I
    nop

    .line 765
    :goto_0
    nop

    .line 1051
    .end local v3    # "$i$a$-getOrPut-LayoutNodeSubcompositionsState$precompose$node$1":I
    .end local v4    # "reusedNode":Landroidx/compose/ui/node/LayoutNode;
    move-object v3, v6

    .line 1052
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1055
    :cond_2
    move-object v3, v2

    .line 1050
    :goto_1
    nop

    .line 763
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 777
    .local v0, "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 779
    .end local v0    # "node":Landroidx/compose/ui/node/LayoutNode;
    :cond_3
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object v0
.end method

.method public final setCompositionContext(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/CompositionContext;

    .line 357
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public final setSlotReusePolicy(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 4
    .param p1, "value"    # Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 361
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    if-eq v0, p1, :cond_0

    .line 362
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    .line 365
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v0, v0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    .line 367
    :cond_0
    return-void
.end method

.method public final subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 11
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    .line 412
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    .line 414
    .local v0, "layoutState":Landroidx/compose/ui/node/LayoutNode$LayoutState;
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    .line 415
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    .line 416
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 413
    :goto_1
    if-eqz v1, :cond_c

    .line 421
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    .local v1, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 991
    .local v4, "$i$f$getOrPut":I
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 992
    .local v5, "value$iv":Ljava/lang/Object;
    if-nez v5, :cond_6

    .line 993
    const/4 v6, 0x0

    .line 422
    .local v6, "$i$a$-getOrPut-LayoutNodeSubcompositionsState$subcompose$node$1":I
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 423
    .local v7, "precomposed":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v7, :cond_4

    .line 425
    iget v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-lez v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    if-eqz v8, :cond_3

    .line 426
    iget v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 427
    move-object v8, v7

    goto :goto_3

    .line 425
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    if-nez v8, :cond_5

    .line 430
    iget v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    invoke-direct {p0, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    .line 423
    :cond_5
    :goto_3
    nop

    .line 993
    .end local v6    # "$i$a$-getOrPut-LayoutNodeSubcompositionsState$subcompose$node$1":I
    .end local v7    # "precomposed":Landroidx/compose/ui/node/LayoutNode;
    move-object v6, v8

    .line 994
    .local v6, "answer$iv":Ljava/lang/Object;
    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    nop

    .end local v6    # "answer$iv":Ljava/lang/Object;
    goto :goto_4

    .line 997
    :cond_6
    move-object v6, v5

    .line 992
    :goto_4
    nop

    .line 421
    .end local v1    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v4    # "$i$f$getOrPut":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 434
    .local v1, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_9

    .line 436
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 437
    .local v4, "itemIndex":I
    iget v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    if-lt v4, v5, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    .line 441
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    if-eq v2, v4, :cond_9

    .line 442
    iget v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v4

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V

    goto :goto_5

    .line 437
    :cond_8
    const/4 v2, 0x0

    .line 438
    .local v2, "$i$a$-require-LayoutNodeSubcompositionsState$subcompose$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .end local v2    # "$i$a$-require-LayoutNodeSubcompositionsState$subcompose$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    .end local v4    # "itemIndex":I
    :cond_9
    :goto_5
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    .line 447
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 449
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v2, :cond_b

    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v2, :cond_a

    goto :goto_6

    .line 452
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildLookaheadMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    goto :goto_7

    .line 450
    :cond_b
    :goto_6
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v2

    .line 449
    :goto_7
    return-object v2

    .line 413
    .end local v1    # "node":Landroidx/compose/ui/node/LayoutNode;
    :cond_c
    const/4 v1, 0x0

    .line 418
    .local v1, "$i$a$-check-LayoutNodeSubcompositionsState$subcompose$1":I
    nop

    .line 413
    .end local v1    # "$i$a$-check-LayoutNodeSubcompositionsState$subcompose$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subcompose can only be used inside the measure or layout blocks"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
