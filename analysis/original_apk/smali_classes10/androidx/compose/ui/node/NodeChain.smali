.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "NodeChain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeChain$Differ;,
        Landroidx/compose/ui/node/NodeChain$Logger;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,862:1\n756#1,6:873\n725#1,6:890\n725#1,6:896\n733#1,3:903\n736#1,3:909\n756#1,6:912\n756#1,6:918\n702#1,8:926\n725#1,3:934\n710#1,2:937\n703#1:939\n704#1,11:983\n728#1,3:994\n715#1:997\n705#1:998\n708#1,2:999\n725#1,3:1001\n710#1,2:1004\n713#1,2:1049\n728#1,3:1051\n715#1:1054\n725#1,6:1055\n747#1,12:1061\n759#1,3:1116\n753#1:1119\n756#1,6:1120\n741#1,18:1126\n759#1,3:1187\n753#1:1190\n744#1:1191\n702#1,8:1192\n725#1,3:1200\n710#1,2:1203\n703#1:1205\n704#1,11:1249\n728#1,3:1260\n715#1:1263\n705#1:1264\n733#1,6:1265\n1#2:863\n1208#3:864\n1187#3,2:865\n1187#3,2:871\n1188#3:902\n1208#3:960\n1187#3,2:961\n1208#3:1026\n1187#3,2:1027\n1208#3:1093\n1187#3,2:1094\n1208#3:1164\n1187#3,2:1165\n1208#3:1226\n1187#3,2:1227\n523#4:867\n523#4:868\n523#4:869\n523#4:870\n476#4,11:879\n523#4:906\n728#4,2:907\n72#5:924\n261#6:925\n261#6:946\n261#6:1012\n261#6:1079\n261#6:1150\n261#6:1212\n385#7,6:940\n395#7,2:947\n397#7,8:952\n405#7,9:963\n414#7,8:975\n385#7,6:1006\n395#7,2:1013\n397#7,8:1018\n405#7,9:1029\n414#7,8:1041\n385#7,6:1073\n395#7,2:1080\n397#7,8:1085\n405#7,9:1096\n414#7,8:1108\n385#7,6:1144\n395#7,2:1151\n397#7,8:1156\n405#7,9:1167\n414#7,8:1179\n385#7,6:1206\n395#7,2:1213\n397#7,8:1218\n405#7,9:1229\n414#7,8:1241\n234#8,3:949\n237#8,3:972\n234#8,3:1015\n237#8,3:1038\n234#8,3:1082\n237#8,3:1105\n234#8,3:1153\n237#8,3:1176\n234#8,3:1215\n237#8,3:1238\n*S KotlinDebug\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n*L\n219#1:873,6\n289#1:890,6\n299#1:896,6\n325#1:903,3\n325#1:909,3\n359#1:912,6\n365#1:918,6\n695#1:926,8\n695#1:934,3\n695#1:937,2\n695#1:939\n695#1:983,11\n695#1:994,3\n695#1:997\n695#1:998\n702#1:999,2\n702#1:1001,3\n702#1:1004,2\n702#1:1049,2\n702#1:1051,3\n702#1:1054\n709#1:1055,6\n741#1:1061,12\n741#1:1116,3\n741#1:1119\n748#1:1120,6\n764#1:1126,18\n764#1:1187,3\n764#1:1190\n764#1:1191\n771#1:1192,8\n771#1:1200,3\n771#1:1203,2\n771#1:1205\n771#1:1249,11\n771#1:1260,3\n771#1:1263\n771#1:1264\n787#1:1265,6\n114#1:864\n114#1:865,2\n196#1:871,2\n323#1:902\n695#1:960\n695#1:961,2\n703#1:1026\n703#1:1027,2\n742#1:1093\n742#1:1094,2\n764#1:1164\n764#1:1165,2\n771#1:1226\n771#1:1227,2\n125#1:867\n126#1:868\n176#1:869\n188#1:870\n223#1:879,11\n353#1:906\n353#1:907,2\n407#1:924\n407#1:925\n695#1:946\n703#1:1012\n742#1:1079\n764#1:1150\n771#1:1212\n695#1:940,6\n695#1:947,2\n695#1:952,8\n695#1:963,9\n695#1:975,8\n703#1:1006,6\n703#1:1013,2\n703#1:1018,8\n703#1:1029,9\n703#1:1041,8\n742#1:1073,6\n742#1:1080,2\n742#1:1085,8\n742#1:1096,9\n742#1:1108,8\n764#1:1144,6\n764#1:1151,2\n764#1:1156,8\n764#1:1167,9\n764#1:1179,8\n771#1:1206,6\n771#1:1213,2\n771#1:1218,8\n771#1:1229,9\n771#1:1241,8\n695#1:949,3\n695#1:972,3\n703#1:1015,3\n703#1:1038,3\n742#1:1082,3\n742#1:1105,3\n764#1:1153,3\n764#1:1176,3\n771#1:1215,3\n771#1:1238,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0002mnB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J?\u0010,\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u001901H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103J@\u00104\u001a\u00060\rR\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u00108\u001a\u00020\u0019H\u0002J\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020;0:J\u001e\u0010<\u001a\u00020\u00192\n\u0010.\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010<\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008@J+\u0010\u0011\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ\"\u0010C\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008EJ=\u0010C\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ*\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008EJ\"\u0010H\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008IJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010K\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0006\u0010L\u001a\u00020DJ\r\u0010M\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008NJ\u0008\u0010O\u001a\u00020\u0010H\u0002J\u0018\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u00102\u0006\u0010R\u001a\u00020\u001fH\u0002J\u0010\u0010S\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J\r\u0010T\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008UJ\u0006\u0010V\u001a\u00020DJ\r\u0010W\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008XJ<\u0010Y\u001a\u00020D2\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010#\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0019H\u0002J\u0008\u0010Z\u001a\u00020DH\u0002J\u0006\u0010[\u001a\u00020DJ+\u0010#\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\\\u0010BJ\"\u0010]\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008^J=\u0010]\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010GJ*\u0010]\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008^J\u0008\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\u0010H\u0002J\u0015\u0010d\u001a\u00020D2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008gJ \u0010h\u001a\u00020D2\u0006\u0010i\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0010H\u0002J\u0017\u0010k\u001a\u00020D2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0000\u00a2\u0006\u0002\u0008lR\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0018\u00010\rR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u001f@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006o"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeChain;",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "aggregateChildKindSet",
        "",
        "getAggregateChildKindSet",
        "()I",
        "buffer",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/Modifier$Element;",
        "cachedDiffer",
        "Landroidx/compose/ui/node/NodeChain$Differ;",
        "current",
        "<set-?>",
        "Landroidx/compose/ui/Modifier$Node;",
        "head",
        "getHead$ui_release",
        "()Landroidx/compose/ui/Modifier$Node;",
        "innerCoordinator",
        "Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "getInnerCoordinator$ui_release",
        "()Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "isUpdating",
        "",
        "()Z",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "logger",
        "Landroidx/compose/ui/node/NodeChain$Logger;",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "outerCoordinator",
        "getOuterCoordinator$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "tail",
        "getTail$ui_release",
        "createAndInsertNodeAsChild",
        "element",
        "parent",
        "createAndInsertNodeAsParent",
        "child",
        "detachAndRemoveNode",
        "node",
        "firstFromHead",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "block",
        "Lkotlin/Function1;",
        "firstFromHead-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "getDiffer",
        "offset",
        "before",
        "after",
        "shouldAttachOnInsert",
        "getModifierInfo",
        "",
        "Landroidx/compose/ui/layout/ModifierInfo;",
        "has",
        "has-H91voCI$ui_release",
        "(I)Z",
        "mask",
        "has$ui_release",
        "head-H91voCI$ui_release",
        "(I)Ljava/lang/Object;",
        "headToTail",
        "",
        "headToTail$ui_release",
        "headToTail-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)V",
        "headToTailExclusive",
        "headToTailExclusive$ui_release",
        "insertChild",
        "insertParent",
        "markAsAttached",
        "markAsDetached",
        "markAsDetached$ui_release",
        "padChain",
        "propagateCoordinator",
        "start",
        "coordinator",
        "removeNode",
        "resetState",
        "resetState$ui_release",
        "runAttachLifecycle",
        "runDetachLifecycle",
        "runDetachLifecycle$ui_release",
        "structuralUpdate",
        "syncAggregateChildKindSet",
        "syncCoordinators",
        "tail-H91voCI$ui_release",
        "tailToHead",
        "tailToHead$ui_release",
        "tailToHead-aLcG6gQ$ui_release",
        "toString",
        "",
        "trimChain",
        "paddedHead",
        "updateFrom",
        "m",
        "Landroidx/compose/ui/Modifier;",
        "updateFrom$ui_release",
        "updateNode",
        "prev",
        "next",
        "useLogger",
        "useLogger$ui_release",
        "Differ",
        "Logger",
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
.field private buffer:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

.field private current:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private head:Landroidx/compose/ui/Modifier$Node;

.field private final innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private logger:Landroidx/compose/ui/node/NodeChain$Logger;

.field private outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field private final tail:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/NodeChain;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 36
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 37
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 39
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    .line 40
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 35
    return-void
.end method

.method public static final synthetic access$createAndInsertNodeAsChild(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detachAndRemoveNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;

    .line 35
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getLogger$p(Landroidx/compose/ui/node/NodeChain;)Landroidx/compose/ui/node/NodeChain$Logger;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    return-object v0
.end method

.method public static final synthetic access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "start"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic access$updateNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeChain;
    .param p1, "prev"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "next"    # Landroidx/compose/ui/Modifier$Element;
    .param p3, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method

.method private final createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 4
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 623
    nop

    .line 624
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 625
    .local v2, "$i$a$-also-NodeChain$createAndInsertNodeAsChild$node$1":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    .line 626
    nop

    .line 624
    .end local v1    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$a$-also-NodeChain$createAndInsertNodeAsChild$node$1":I
    goto :goto_0

    .line 627
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 623
    :goto_0
    nop

    .line 629
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {v0, v2}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 633
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/NodeChain;->insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    return-object v1

    .line 629
    :cond_1
    const/4 v1, 0x0

    .line 630
    .local v1, "$i$a$-check-NodeChain$createAndInsertNodeAsChild$1":I
    nop

    .line 629
    .end local v1    # "$i$a$-check-NodeChain$createAndInsertNodeAsChild$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A ModifierNodeElement cannot return an already attached node from create() "

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final createAndInsertNodeAsParent(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 4
    .param p1, "element"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "child"    # Landroidx/compose/ui/Modifier$Node;

    .line 585
    nop

    .line 586
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 587
    .local v2, "$i$a$-also-NodeChain$createAndInsertNodeAsParent$node$1":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    .line 588
    nop

    .line 586
    .end local v1    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$a$-also-NodeChain$createAndInsertNodeAsParent$node$1":I
    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 585
    :goto_0
    nop

    .line 591
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {v0, v2}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 593
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/NodeChain;->insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    return-object v1

    .line 863
    :cond_1
    const/4 v1, 0x0

    .line 591
    .local v1, "$i$a$-check-NodeChain$createAndInsertNodeAsParent$1":I
    nop

    .end local v1    # "$i$a$-check-NodeChain$createAndInsertNodeAsParent$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "createAndInsertNodeAsParent called on an attached node"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 544
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 549
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 550
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method private final getAggregateChildKindSet()I
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    return v0
.end method

.method private final getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;
    .locals 9
    .param p1, "head"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "offset"    # I
    .param p3, "before"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p4, "after"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p5, "shouldAttachOnInsert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;Z)",
            "Landroidx/compose/ui/node/NodeChain$Differ;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 379
    .local v0, "current":Landroidx/compose/ui/node/NodeChain$Differ;
    if-nez v0, :cond_0

    .line 380
    new-instance v8, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 386
    nop

    .line 380
    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V

    .line 387
    nop

    .line 863
    .local v1, "it":Landroidx/compose/ui/node/NodeChain$Differ;
    const/4 v2, 0x0

    .line 387
    .local v2, "$i$a$-also-NodeChain$getDiffer$1":I
    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    .end local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    .end local v2    # "$i$a$-also-NodeChain$getDiffer$1":I
    goto :goto_0

    .line 389
    :cond_0
    move-object v1, v0

    .restart local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    const/4 v2, 0x0

    .line 390
    .local v2, "$i$a$-also-NodeChain$getDiffer$2":I
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/NodeChain$Differ;->setNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 391
    invoke-virtual {v1, p2}, Landroidx/compose/ui/node/NodeChain$Differ;->setOffset(I)V

    .line 392
    invoke-virtual {v1, p3}, Landroidx/compose/ui/node/NodeChain$Differ;->setBefore(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 393
    invoke-virtual {v1, p4}, Landroidx/compose/ui/node/NodeChain$Differ;->setAfter(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 394
    invoke-virtual {v1, p5}, Landroidx/compose/ui/node/NodeChain$Differ;->setShouldAttachOnInsert(Z)V

    .line 395
    nop

    .line 389
    .end local v1    # "it":Landroidx/compose/ui/node/NodeChain$Differ;
    .end local v2    # "$i$a$-also-NodeChain$getDiffer$2":I
    move-object v8, v0

    .line 379
    :goto_0
    return-object v8
.end method

.method private final insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "parent"    # Landroidx/compose/ui/Modifier$Node;

    .line 649
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 650
    .local v0, "theChild":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 652
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 654
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 655
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 656
    return-object p1
.end method

.method private final insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "child"    # Landroidx/compose/ui/Modifier$Node;

    .line 609
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 610
    .local v0, "theParent":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 612
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 614
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 615
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 616
    return-object p1
.end method

.method private final isUpdating()Z
    .locals 2

    .line 42
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final padChain()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 66
    .local v0, "currentHead":Landroidx/compose/ui/Modifier$Node;
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 67
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 68
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    return-object v1

    .line 863
    .end local v0    # "currentHead":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$a$-check-NodeChain$padChain$1":I
    nop

    .end local v0    # "$i$a$-check-NodeChain$padChain$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "padChain called on already padded chain"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 5
    .param p1, "start"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "coordinator"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 400
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 401
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v0, :cond_3

    .line 402
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 404
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 405
    goto :goto_3

    .line 407
    :cond_1
    const/4 v1, 0x0

    .line 924
    .local v1, "$i$f$getLayout-OLwlOKw":I
    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 407
    .end local v1    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v1, "kind$iv":I
    move-object v2, v0

    .local v2, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 925
    .local v3, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 407
    .end local v1    # "kind$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-nez v4, :cond_3

    .line 408
    invoke-virtual {v0, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 409
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_3
    :goto_3
    return-void
.end method

.method private final removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 568
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 569
    .local v0, "child":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 570
    .local v1, "parent":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 572
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 574
    :cond_0
    if-eqz v1, :cond_1

    .line 575
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 576
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 578
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method private final structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "before"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p3, "after"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p4, "tail"    # Landroidx/compose/ui/Modifier$Node;
    .param p5, "shouldAttachOnInsert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/ui/Modifier$Node;",
            "Z)V"
        }
    .end annotation

    .line 538
    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;

    move-result-object v0

    .line 539
    .local v0, "differ":Landroidx/compose/ui/node/NodeChain$Differ;
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    sub-int/2addr v2, p1

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DiffCallback;

    invoke-static {v1, v2, v3}, Landroidx/compose/ui/node/MyersDiffKt;->executeDiff(IILandroidx/compose/ui/node/DiffCallback;)V

    .line 540
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    .line 541
    return-void
.end method

.method private final syncAggregateChildKindSet()V
    .locals 3

    .line 272
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 273
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x0

    .line 274
    .local v1, "aggregateChildKindSet":I
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 275
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    or-int/2addr v1, v2

    .line 276
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setAggregateChildKindSet$ui_release(I)V

    .line 277
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method private final trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 6
    .param p1, "paddedHead"    # Landroidx/compose/ui/Modifier$Node;

    .line 72
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 73
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    .line 74
    .local v0, "result":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 75
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 76
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setAggregateChildKindSet$ui_release(I)V

    .line 77
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 78
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v3

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 79
    return-object v0

    .line 863
    :cond_3
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-check-NodeChain$trimChain$2":I
    nop

    .end local v1    # "$i$a$-check-NodeChain$trimChain$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "trimChain did not update the head"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    .end local v0    # "result":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    const/4 v0, 0x0

    .line 72
    .local v0, "$i$a$-check-NodeChain$trimChain$1":I
    nop

    .end local v0    # "$i$a$-check-NodeChain$trimChain$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "trimChain called on already trimmed chain"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 2
    .param p1, "prev"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "next"    # Landroidx/compose/ui/Modifier$Element;
    .param p3, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 664
    nop

    .line 665
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p2, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_1

    .line 666
    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-static {v0, p3}, Landroidx/compose/ui/node/NodeChainKt;->access$updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V

    .line 667
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p3, v1}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    goto :goto_0

    .line 676
    :cond_1
    instance-of v0, p3, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v0, :cond_3

    .line 677
    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/BackwardsCompatNode;->setElement(Landroidx/compose/ui/Modifier$Element;)V

    .line 679
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 682
    :cond_2
    invoke-virtual {p3, v1}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 687
    :goto_0
    return-void

    .line 682
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 685
    const-string v1, "Unknown Modifier.Node type"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic firstFromHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 31
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 695
    .local v0, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 926
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v3, p1

    .local v3, "mask$iv$iv":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 932
    .local v5, "$i$f$headToTail$ui_release":I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_10

    .line 933
    move-object v6, v4

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 934
    .local v7, "$i$f$headToTail$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 935
    .local v8, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v8, :cond_f

    .line 936
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 937
    .local v10, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_e

    .line 938
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 939
    .local v12, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 940
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 941
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v30, v16

    move/from16 v16, v0

    move-object/from16 v0, v30

    .line 942
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    :goto_1
    if-eqz v0, :cond_d

    .line 943
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x3

    move/from16 v18, v2

    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v18, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 944
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 696
    .local v2, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    move/from16 v19, v2

    move-object/from16 v2, p2

    .end local v2    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    .local v19, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_0

    return-object v1

    .line 697
    :cond_0
    nop

    .line 944
    .end local v1    # "it":Ljava/lang/Object;
    .end local v19    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1":I
    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    goto/16 :goto_7

    .line 945
    :cond_1
    move-object/from16 v2, p2

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 946
    .local v19, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v20

    and-int v20, v20, p1

    move-object/from16 v21, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v20, :cond_2

    const/16 v19, 0x1

    goto :goto_2

    :cond_2
    const/16 v19, 0x0

    .line 945
    .end local v19    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v19, :cond_b

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 947
    const/4 v1, 0x0

    .line 948
    .local v1, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 949
    .local v21, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 950
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v22, :cond_a

    .line 951
    move-object/from16 v2, v22

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 952
    .local v23, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v24, v2

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 946
    .local v25, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, p1

    if-eqz v26, :cond_3

    const/16 v24, 0x1

    goto :goto_4

    :cond_3
    const/16 v24, 0x0

    .line 952
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v24, :cond_9

    .line 953
    add-int/lit8 v1, v1, 0x1

    .line 954
    move-object/from16 v24, v4

    const/4 v4, 0x1

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v24, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    if-ne v1, v4, :cond_4

    .line 955
    move-object v0, v2

    move/from16 v28, v5

    move-object/from16 v29, v6

    const/4 v6, 0x0

    goto :goto_6

    .line 959
    :cond_4
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    .line 960
    .local v4, "$i$f$mutableVectorOf":I
    nop

    .line 961
    move/from16 v25, v1

    .end local v1    # "count$iv$iv":I
    .local v25, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 962
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v4

    .end local v4    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v5

    .end local v5    # "$i$f$headToTail$ui_release":I
    .local v28, "$i$f$headToTail$ui_release":I
    new-array v5, v1, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v29, v6

    const/4 v6, 0x0

    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 960
    .end local v1    # "capacity$iv$iv$iv$iv":I
    .end local v26    # "$i$f$MutableVector":I
    nop

    .end local v27    # "$i$f$mutableVectorOf":I
    move-object v1, v4

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 959
    .end local v25    # "count$iv$iv":I
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv$iv":I
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_5
    move/from16 v25, v1

    move/from16 v28, v5

    move-object/from16 v29, v6

    const/4 v6, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "count$iv$iv":I
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_5
    move-object v15, v4

    .line 963
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 964
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 965
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_6
    const/4 v0, 0x0

    .line 968
    :cond_7
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v1, v25

    goto :goto_6

    .line 952
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "count$iv$iv":I
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv$iv":I
    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_9
    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    const/4 v6, 0x0

    .line 971
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_6
    nop

    .line 951
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 972
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v2, p2

    move-object/from16 v4, v24

    move/from16 v5, v28

    move-object/from16 v6, v29

    goto :goto_3

    .line 974
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    .line 975
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 977
    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v24

    move/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_1

    .line 945
    .end local v1    # "count$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    .line 980
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    :goto_7
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v24

    move/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_1

    .line 982
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    .line 983
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 938
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    goto :goto_8

    .line 937
    .end local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    .line 992
    .end local v0    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    .restart local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    .line 993
    nop

    .line 936
    .end local v9    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 994
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v24

    move/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_0

    .line 996
    .end local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v24, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    .line 997
    .end local v0    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui_release":I
    .end local v8    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$headToTail$ui_release":I
    goto :goto_9

    .line 932
    .end local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$headToTail$ui_release":I
    .restart local v0    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    :cond_10
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v24, v4

    move/from16 v28, v5

    .line 998
    .end local v0    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .restart local v16    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_11
    :goto_9
    nop

    .line 698
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHead$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final getInnerCoordinator$ui_release()Landroidx/compose/ui/node/InnerNodeCoordinator;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final getModifierInfo()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 323
    .local v1, "current":Landroidx/compose/runtime/collection/MutableVector;
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .local v2, "capacity$iv":I
    const/4 v3, 0x0

    .line 902
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/layout/ModifierInfo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 323
    .end local v2    # "capacity$iv":I
    .end local v3    # "$i$f$MutableVector":I
    move-object v2, v4

    .line 324
    .local v2, "infoList":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 325
    .local v3, "i":I
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 903
    .local v5, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 904
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-eq v7, v8, :cond_5

    .line 905
    move-object v8, v7

    .local v8, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 326
    .local v9, "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 337
    .local v10, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v11

    .line 338
    .local v11, "currentNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    iget-object v12, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v12}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v12

    move-object v13, v12

    .local v13, "it":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v14, 0x0

    .line 349
    .local v14, "$i$a$-takeIf-NodeChain$getModifierInfo$1$innerNodeLayer$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 350
    .local v15, "localChild":Landroidx/compose/ui/Modifier$Node;
    iget-object v6, v0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v15, v6, :cond_1

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 338
    .end local v13    # "it":Landroidx/compose/ui/node/OwnedLayer;
    .end local v14    # "$i$a$-takeIf-NodeChain$getModifierInfo$1$innerNodeLayer$1":I
    .end local v15    # "localChild":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    move-object v0, v12

    .line 352
    .local v0, "innerNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    if-nez v11, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v11

    .line 353
    .local v6, "layer":Landroidx/compose/ui/node/OwnedLayer;
    :goto_3
    new-instance v12, Landroidx/compose/ui/layout/ModifierInfo;

    add-int/lit8 v13, v3, 0x1

    .local v3, "index$iv":I
    .local v13, "i":I
    move-object v14, v1

    .local v14, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v15, 0x0

    .line 906
    .local v15, "$i$f$get":I
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v16

    aget-object v3, v16, v3

    .end local v3    # "index$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v15    # "$i$f$get":I
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 353
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-direct {v12, v3, v14, v6}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    move-object v3, v12

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v12, v2

    .local v12, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v14, 0x0

    .line 907
    .local v14, "$i$f$plusAssign":I
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 908
    nop

    .line 354
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v14    # "$i$f$plusAssign":I
    nop

    .line 905
    .end local v0    # "innerNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v6    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    .end local v10    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v11    # "currentNodeLayer":Landroidx/compose/ui/node/OwnedLayer;
    nop

    .line 909
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v13

    goto :goto_0

    .line 326
    .end local v13    # "i":I
    .local v3, "i":I
    .restart local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .restart local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    :cond_4
    const/4 v0, 0x0

    .line 327
    .local v0, "$i$a$-requireNotNull-NodeChain$getModifierInfo$1$coordinator$1":I
    nop

    .line 326
    .end local v0    # "$i$a$-requireNotNull-NodeChain$getModifierInfo$1$coordinator$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "getModifierInfo called on node with no coordinator"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    .end local v8    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-headToTailExclusive$ui_release-NodeChain$getModifierInfo$1":I
    :cond_5
    nop

    .line 355
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTailExclusive$ui_release":I
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getTail$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final has$ui_release(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 779
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final has-H91voCI$ui_release(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 777
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic head-H91voCI$ui_release(I)Ljava/lang/Object;
    .locals 30
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 771
    .local v0, "$i$f$head-H91voCI$ui_release":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1192
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v3, p1

    .local v3, "mask$iv$iv":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1198
    .local v5, "$i$f$headToTail$ui_release":I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_f

    .line 1199
    move-object v6, v4

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1200
    .local v7, "$i$f$headToTail$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1201
    .local v8, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v8, :cond_e

    .line 1202
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1203
    .local v10, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_d

    .line 1204
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1205
    .local v12, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1206
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1207
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 1208
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$head-H91voCI$ui_release":I
    :goto_1
    if-eqz v0, :cond_c

    .line 1209
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x3

    move/from16 v18, v2

    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v18, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1210
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 772
    .local v2, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1":I
    return-object v1

    .line 1211
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1":I
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1212
    .local v2, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, p1

    move-object/from16 v20, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v19, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1211
    .end local v2    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v2, :cond_a

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_a

    .line 1213
    const/4 v2, 0x0

    .line 1214
    .local v2, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1215
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1216
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v21, :cond_9

    .line 1217
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1218
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v1

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1212
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, p1

    if-eqz v25, :cond_2

    const/16 v23, 0x1

    goto :goto_4

    :cond_2
    const/16 v23, 0x0

    .line 1218
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v23, :cond_8

    .line 1219
    add-int/lit8 v2, v2, 0x1

    .line 1220
    move-object/from16 v23, v4

    const/4 v4, 0x1

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v23, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    if-ne v2, v4, :cond_3

    .line 1221
    move-object v0, v1

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    goto :goto_6

    .line 1225
    :cond_3
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 1226
    .local v4, "$i$f$mutableVectorOf":I
    nop

    .line 1227
    move/from16 v24, v2

    .end local v2    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1228
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v4

    .end local v4    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v5

    .end local v5    # "$i$f$headToTail$ui_release":I
    .local v27, "$i$f$headToTail$ui_release":I
    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1226
    .end local v2    # "capacity$iv$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v2, v4

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 1225
    .end local v24    # "count$iv$iv":I
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "count$iv$iv":I
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_4
    move/from16 v24, v2

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_5
    move-object v15, v4

    .line 1229
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1230
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_6

    .line 1231
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_5
    const/4 v0, 0x0

    .line 1234
    :cond_6
    move-object v4, v15

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move/from16 v2, v24

    goto :goto_6

    .line 1218
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "count$iv$iv":I
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "count$iv$iv":I
    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_8
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .line 1237
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_6
    nop

    .line 1217
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1238
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto :goto_3

    .line 1240
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_9
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1241
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_b

    .line 1243
    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_1

    .line 1211
    .end local v2    # "count$iv$iv":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1246
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_1

    .line 1248
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1249
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1204
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv":I
    goto :goto_7

    .line 1203
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1258
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_7
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 1259
    nop

    .line 1202
    .end local v9    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 1260
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v23

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_0

    .line 1262
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    .restart local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    .line 1263
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui_release":I
    .end local v8    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "$i$f$headToTail$ui_release":I
    goto :goto_8

    .line 1198
    .end local v16    # "$i$f$head-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v27    # "$i$f$headToTail$ui_release":I
    .restart local v0    # "$i$f$head-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$headToTail$ui_release":I
    :cond_f
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v23, v4

    move/from16 v27, v5

    .line 1264
    .end local v0    # "$i$f$head-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .restart local v16    # "$i$f$head-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_10
    :goto_8
    nop

    .line 774
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final headToTail$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 708
    .local v0, "$i$f$headToTail$ui_release":I
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    return-void

    .line 709
    :cond_0
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1055
    .local v2, "$i$f$headToTail$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 1056
    .local v3, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v3, :cond_3

    .line 1057
    move-object v4, v3

    .local v4, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x0

    .line 710
    .local v5, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    .line 711
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-nez v6, :cond_2

    return-void

    .line 714
    :cond_2
    nop

    .line 1057
    .end local v4    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2":I
    nop

    .line 1058
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_0

    .line 1060
    :cond_3
    nop

    .line 715
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$headToTail$ui_release":I
    .end local v3    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final headToTail$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 725
    .local v0, "$i$f$headToTail$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 726
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 727
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 730
    :cond_0
    return-void
.end method

.method public final synthetic headToTail-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 27
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 702
    .local v0, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move/from16 v1, p1

    .local v1, "mask$iv":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v3, 0x0

    .line 999
    .local v3, "$i$f$headToTail$ui_release":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 1000
    move-object v4, v2

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1001
    .local v5, "$i$f$headToTail$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1002
    .local v6, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_e

    .line 1003
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 1004
    .local v8, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv":I
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_d

    .line 1005
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 703
    .local v10, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1":I
    move-object v11, v9

    .local v11, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1006
    .local v12, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v13, 0x0

    .line 1007
    .local v13, "stack$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv":Ljava/lang/Object;
    move-object v14, v11

    .line 1008
    :goto_1
    if-eqz v14, :cond_c

    .line 1009
    const/4 v15, 0x3

    move/from16 v16, v0

    .end local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .local v16, "$i$f$headToTail-aLcG6gQ$ui_release":I
    const-string v0, "T"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v14, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1010
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    goto/16 :goto_7

    .line 1011
    :cond_0
    move-object/from16 v0, p2

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1012
    .local v17, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, p1

    if-eqz v18, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 1011
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-eqz v15, :cond_a

    instance-of v15, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_a

    .line 1013
    const/4 v15, 0x0

    .line 1014
    .local v15, "count$iv":I
    move-object/from16 v17, v14

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 1015
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1016
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v19, :cond_9

    .line 1017
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1018
    .local v20, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v21, v0

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1012
    .local v22, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v23

    and-int v23, v23, p1

    if-eqz v23, :cond_2

    const/16 v21, 0x1

    goto :goto_4

    :cond_2
    const/16 v21, 0x0

    .line 1018
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v21, :cond_7

    .line 1019
    add-int/lit8 v15, v15, 0x1

    .line 1020
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v21, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    if-ne v15, v2, :cond_3

    .line 1021
    move-object v14, v0

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v2, 0x0

    goto :goto_6

    .line 1025
    :cond_3
    move-object v2, v13

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 1026
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1027
    move/from16 v22, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 1028
    .local v23, "$i$f$MutableVector":I
    move/from16 v24, v3

    .end local v3    # "$i$f$headToTail$ui_release":I
    .local v24, "$i$f$headToTail$ui_release":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v25, v4

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v25, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv":I
    invoke-direct {v3, v4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1026
    .end local v23    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    nop

    .end local v22    # "$i$f$mutableVectorOf":I
    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 1025
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_4
    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object v3, v2

    const/4 v2, 0x0

    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_5
    move-object v13, v3

    .line 1029
    move-object v3, v14

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 1030
    .local v3, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_6

    .line 1031
    move-object v4, v13

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_5
    const/4 v4, 0x0

    move-object v14, v4

    .line 1034
    :cond_6
    move-object v4, v13

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1018
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v3, "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_7
    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v2, 0x0

    .line 1037
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_8
    :goto_6
    nop

    .line 1017
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1038
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move-object/from16 v2, v21

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto :goto_3

    .line 1040
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_9
    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 1041
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v0, 0x1

    if-ne v15, v0, :cond_b

    .line 1043
    move/from16 v0, v16

    move-object/from16 v2, v21

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_1

    .line 1011
    .end local v15    # "count$iv":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 1046
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    :goto_7
    move-object v0, v13

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move/from16 v0, v16

    move-object/from16 v2, v21

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_1

    .line 1048
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    move/from16 v16, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 704
    .end local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v11    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v13    # "stack$iv":Ljava/lang/Object;
    .end local v14    # "node$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1005
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1":I
    goto :goto_8

    .line 1004
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move/from16 v16, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 1049
    .end local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    .restart local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_8
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1050
    nop

    .line 1003
    .end local v7    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv":I
    nop

    .line 1051
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v16

    move-object/from16 v2, v21

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_0

    .line 1053
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move/from16 v16, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 1054
    .end local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$headToTail$ui_release":I
    .end local v6    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v24    # "$i$f$headToTail$ui_release":I
    goto :goto_9

    .line 999
    .end local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "$i$f$headToTail$ui_release":I
    .restart local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$headToTail$ui_release":I
    :cond_f
    move/from16 v16, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    .line 705
    .end local v0    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$headToTail$ui_release":I
    .restart local v16    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    :cond_10
    :goto_9
    return-void
.end method

.method public final headToTailExclusive$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 733
    .local v0, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 734
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 735
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method

.method public final markAsAttached()V
    .locals 5

    .line 289
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 890
    .local v1, "$i$f$headToTail$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 891
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_0

    .line 892
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 290
    .local v4, "$i$a$-headToTail$ui_release-NodeChain$markAsAttached$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    .line 291
    nop

    .line 892
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui_release-NodeChain$markAsAttached$1":I
    nop

    .line 893
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 895
    :cond_0
    nop

    .line 292
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final markAsDetached$ui_release()V
    .locals 6

    .line 359
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 912
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 913
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 914
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 360
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$markAsDetached$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 361
    :cond_0
    nop

    .line 914
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$markAsDetached$1":I
    nop

    .line 915
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 917
    :cond_1
    nop

    .line 362
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final resetState$ui_release()V
    .locals 12

    .line 219
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 873
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 874
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 875
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 220
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$resetState$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->reset$ui_release()V

    .line 221
    :cond_0
    nop

    .line 875
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$resetState$1":I
    nop

    .line 876
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 878
    :cond_1
    nop

    .line 222
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_5

    .local v0, "elements":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 223
    .local v1, "$i$a$-let-NodeChain$resetState$2":I
    move-object v2, v0

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 879
    .local v3, "$i$f$forEachIndexed":I
    nop

    .line 880
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 881
    .local v4, "size$iv":I
    if-lez v4, :cond_4

    .line 882
    const/4 v5, 0x0

    .line 883
    .local v5, "i$iv":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    .line 885
    .local v6, "content$iv":[Ljava/lang/Object;
    :cond_2
    aget-object v7, v6, v5

    check-cast v7, Landroidx/compose/ui/Modifier$Element;

    .local v7, "element":Landroidx/compose/ui/Modifier$Element;
    move v8, v5

    .local v8, "i":I
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$a$-forEachIndexed-NodeChain$resetState$2$1":I
    instance-of v10, v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    if-eqz v10, :cond_3

    .line 228
    new-instance v10, Landroidx/compose/ui/node/ForceUpdateElement;

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-direct {v10, v11}, Landroidx/compose/ui/node/ForceUpdateElement;-><init>(Landroidx/compose/ui/node/ModifierNodeElement;)V

    invoke-virtual {v0, v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_3
    nop

    .line 885
    .end local v7    # "element":Landroidx/compose/ui/Modifier$Element;
    .end local v8    # "i":I
    .end local v9    # "$i$a$-forEachIndexed-NodeChain$resetState$2$1":I
    nop

    .line 886
    add-int/lit8 v5, v5, 0x1

    .line 887
    if-lt v5, v4, :cond_2

    .line 889
    .end local v5    # "i$iv":I
    .end local v6    # "content$iv":[Ljava/lang/Object;
    :cond_4
    nop

    .line 231
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "size$iv":I
    nop

    .line 222
    .end local v0    # "elements":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$a$-let-NodeChain$resetState$2":I
    nop

    .line 232
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    .line 233
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->markAsDetached$ui_release()V

    .line 234
    return-void
.end method

.method public final runAttachLifecycle()V
    .locals 6

    .line 299
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 896
    .local v1, "$i$f$headToTail$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 897
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 898
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 300
    .local v4, "$i$a$-headToTail$ui_release-NodeChain$runAttachLifecycle$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui_release()V

    .line 301
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getInsertedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 304
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getUpdatedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 311
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 312
    invoke-virtual {v3, v5}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 313
    nop

    .line 898
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui_release-NodeChain$runAttachLifecycle$1":I
    nop

    .line 899
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 901
    :cond_2
    nop

    .line 314
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final runDetachLifecycle$ui_release()V
    .locals 6

    .line 365
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 918
    .local v1, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 919
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 920
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 366
    .local v4, "$i$a$-tailToHead$ui_release-NodeChain$runDetachLifecycle$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 367
    :cond_0
    nop

    .line 920
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-tailToHead$ui_release-NodeChain$runDetachLifecycle$1":I
    nop

    .line 921
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 923
    :cond_1
    nop

    .line 368
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$tailToHead$ui_release":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final syncCoordinators()V
    .locals 5

    .line 237
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 238
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 239
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 240
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v2

    .line 241
    .local v2, "layoutmod":Landroidx/compose/ui/node/LayoutModifierNode;
    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 244
    .local v3, "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getLayoutModifierNode()Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v4

    .line 245
    .local v4, "prevNode":Landroidx/compose/ui/node/LayoutModifierNode;
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui_release(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 246
    if-eq v4, v1, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->onLayoutModifierNodeChanged()V

    .line 247
    :cond_0
    nop

    .end local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    .end local v4    # "prevNode":Landroidx/compose/ui/node/LayoutModifierNode;
    goto :goto_1

    .line 249
    :cond_1
    new-instance v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 250
    .restart local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v1, v4}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 251
    nop

    .line 242
    .end local v3    # "c":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    :goto_1
    nop

    .line 253
    .local v3, "next":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 254
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setWrapped$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 255
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .end local v3    # "next":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 259
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .end local v2    # "layoutmod":Landroidx/compose/ui/node/LayoutModifierNode;
    goto :goto_0

    .line 261
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 262
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 263
    return-void
.end method

.method public final synthetic tail-H91voCI$ui_release(I)Ljava/lang/Object;
    .locals 30
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 764
    .local v0, "$i$f$tail-H91voCI$ui_release":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1126
    .local v2, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    move/from16 v3, p1

    .local v3, "mask$iv$iv":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1132
    .local v5, "$i$f$tailToHead$ui_release":I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_f

    .line 1133
    move-object v6, v4

    .local v6, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1141
    .local v7, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1142
    .local v8, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v8, :cond_e

    .line 1143
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1134
    .local v10, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_d

    .line 1135
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1127
    .local v12, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1144
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1145
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 1146
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$tail-H91voCI$ui_release":I
    :goto_1
    if-eqz v0, :cond_c

    .line 1147
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x3

    move/from16 v18, v2

    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v18, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1148
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 765
    .local v2, "$i$a$-tailToHead-aLcG6gQ$ui_release-NodeChain$tail$1":I
    return-object v1

    .line 1149
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-tailToHead-aLcG6gQ$ui_release-NodeChain$tail$1":I
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1150
    .local v2, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, p1

    move-object/from16 v20, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v19, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1149
    .end local v2    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v2, :cond_a

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_a

    .line 1151
    const/4 v2, 0x0

    .line 1152
    .local v2, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1153
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1154
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v21, :cond_9

    .line 1155
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1156
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v1

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1150
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, p1

    if-eqz v25, :cond_2

    const/16 v23, 0x1

    goto :goto_4

    :cond_2
    const/16 v23, 0x0

    .line 1156
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v23, :cond_8

    .line 1157
    add-int/lit8 v2, v2, 0x1

    .line 1158
    move/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "mask$iv$iv":I
    .local v23, "mask$iv$iv":I
    if-ne v2, v3, :cond_3

    .line 1159
    move-object v0, v1

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    goto :goto_6

    .line 1163
    :cond_3
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 1164
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1165
    move/from16 v24, v2

    .end local v2    # "count$iv$iv":I
    .local v24, "count$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1166
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v4

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v27, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$tailToHead$ui_release":I
    .local v28, "$i$f$tailToHead$ui_release":I
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1164
    .end local v2    # "capacity$iv$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 1163
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v2, "count$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_4
    move/from16 v24, v2

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v24    # "count$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_5
    move-object v15, v3

    .line 1167
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1168
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_6

    .line 1169
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_5
    const/4 v0, 0x0

    .line 1172
    :cond_6
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1175
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move/from16 v2, v24

    goto :goto_6

    .line 1156
    .end local v23    # "mask$iv$iv":I
    .end local v24    # "count$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v2, "count$iv$iv":I
    .local v3, "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_8
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    .line 1175
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_6
    nop

    .line 1155
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1176
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto :goto_3

    .line 1178
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_9
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1179
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    const/4 v1, 0x1

    if-ne v2, v1, :cond_b

    .line 1181
    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_1

    .line 1149
    .end local v2    # "count$iv$iv":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_a
    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1184
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :cond_b
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_1

    .line 1186
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_c
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1128
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    nop

    .line 1135
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1$iv":I
    goto :goto_7

    .line 1134
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .local v0, "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_d
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1137
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    :goto_7
    nop

    .line 1143
    .end local v9    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv$iv":I
    nop

    .line 1187
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v27

    move/from16 v5, v28

    goto/16 :goto_0

    .line 1189
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_e
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1190
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v6    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$tailToHead$ui_release":I
    .end local v8    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v23    # "mask$iv$iv":I
    .restart local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "$i$f$tailToHead$ui_release":I
    goto :goto_8

    .line 1132
    .end local v16    # "$i$f$tail-H91voCI$ui_release":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v23    # "mask$iv$iv":I
    .end local v27    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v28    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v3    # "mask$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v5    # "$i$f$tailToHead$ui_release":I
    :cond_f
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    .line 1191
    .end local v0    # "$i$f$tail-H91voCI$ui_release":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v3    # "mask$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tail-H91voCI$ui_release":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    :goto_8
    nop

    .line 767
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v18    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public final tailToHead$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 747
    .local v0, "$i$f$tailToHead$ui_release":I
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    return-void

    .line 748
    :cond_0
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x0

    .line 1120
    .local v2, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 1121
    .local v3, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v3, :cond_2

    .line 1122
    move-object v4, v3

    .local v4, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x0

    .line 749
    .local v5, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    .line 750
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_1
    nop

    .line 1122
    .end local v4    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2":I
    nop

    .line 1123
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_0

    .line 1125
    :cond_2
    nop

    .line 753
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$i$f$tailToHead$ui_release":I
    .end local v3    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public final tailToHead$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 756
    .local v0, "$i$f$tailToHead$ui_release":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 757
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 758
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 761
    :cond_0
    return-void
.end method

.method public final synthetic tailToHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 27
    .param p1, "type"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 741
    .local v0, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    move/from16 v1, p1

    .local v1, "mask$iv":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v3, 0x0

    .line 1061
    .local v3, "$i$f$tailToHead$ui_release":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 1062
    move-object v4, v2

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 1070
    .local v5, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1071
    .local v6, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_e

    .line 1072
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 1063
    .local v8, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv":I
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_d

    .line 1064
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 742
    .local v10, "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1":I
    move-object v11, v9

    .local v11, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1073
    .local v12, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v13, 0x0

    .line 1074
    .local v13, "stack$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv":Ljava/lang/Object;
    move-object v14, v11

    .line 1075
    :goto_1
    if-eqz v14, :cond_c

    .line 1076
    const/4 v15, 0x3

    move/from16 v16, v0

    .end local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .local v16, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    const-string v0, "T"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v14, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1077
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_7

    .line 1078
    :cond_0
    move-object/from16 v0, p2

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1079
    .local v17, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, p1

    if-eqz v18, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 1078
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-eqz v15, :cond_a

    instance-of v15, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_a

    .line 1080
    const/4 v15, 0x0

    .line 1081
    .local v15, "count$iv":I
    move-object/from16 v17, v14

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 1082
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1083
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v19, :cond_9

    .line 1084
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1085
    .local v20, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v21, v0

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1079
    .local v22, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v23

    and-int v23, v23, p1

    if-eqz v23, :cond_2

    const/16 v21, 0x1

    goto :goto_4

    :cond_2
    const/16 v21, 0x0

    .line 1085
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v21, :cond_7

    .line 1086
    add-int/lit8 v15, v15, 0x1

    .line 1087
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "mask$iv":I
    .local v21, "mask$iv":I
    if-ne v15, v1, :cond_3

    .line 1088
    move-object v14, v0

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    goto :goto_6

    .line 1092
    :cond_3
    move-object v1, v13

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 1093
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1094
    move/from16 v22, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 1095
    .local v23, "$i$f$MutableVector":I
    move-object/from16 v24, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v24, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v25, v3

    .end local v3    # "$i$f$tailToHead$ui_release":I
    .local v25, "$i$f$tailToHead$ui_release":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1093
    .end local v23    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    nop

    .end local v22    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 1092
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_4
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    :goto_5
    move-object v13, v2

    .line 1096
    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1097
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_6

    .line 1098
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_5
    const/4 v3, 0x0

    move-object v14, v3

    .line 1101
    :cond_6
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1085
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .local v1, "mask$iv":I
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_7
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    .line 1104
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    :cond_8
    :goto_6
    nop

    .line 1084
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1105
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto :goto_3

    .line 1107
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_9
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1108
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    const/4 v0, 0x1

    if-ne v15, v0, :cond_b

    .line 1110
    move/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1

    .line 1078
    .end local v15    # "count$iv":I
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_a
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1113
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    :cond_b
    :goto_7
    move-object v0, v13

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1

    .line 1115
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .local v0, "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_c
    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 743
    .end local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .end local v11    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v13    # "stack$iv":Ljava/lang/Object;
    .end local v14    # "node$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    nop

    .line 1064
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$1":I
    goto :goto_8

    .line 1063
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_d
    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1066
    .end local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    :goto_8
    nop

    .line 1072
    .end local v7    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-tailToHead$ui_release-NodeChain$tailToHead$2$iv":I
    nop

    .line 1116
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_0

    .line 1118
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_e
    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1119
    .end local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "$i$f$tailToHead$ui_release":I
    .end local v6    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v21    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v25    # "$i$f$tailToHead$ui_release":I
    goto :goto_9

    .line 1061
    .end local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v21    # "mask$iv":I
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "$i$f$tailToHead$ui_release":I
    .restart local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "$i$f$tailToHead$ui_release":I
    :cond_f
    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 744
    .end local v0    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    .end local v1    # "mask$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v3    # "$i$f$tailToHead$ui_release":I
    .restart local v16    # "$i$f$tailToHead-aLcG6gQ$ui_release":I
    :goto_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toString_u24lambda_u2432":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 782
    .local v2, "$i$a$-buildString-NodeChain$toString$1":I
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget-object v3, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    const-string v5, "]"

    if-ne v3, v4, :cond_0

    .line 784
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    goto :goto_1

    .line 787
    :cond_0
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 1265
    .local v4, "$i$f$headToTailExclusive$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1266
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 1267
    move-object v7, v6

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 788
    .local v8, "$i$a$-headToTailExclusive$ui_release-NodeChain$toString$1$1":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    iget-object v10, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v9, v10, :cond_1

    .line 790
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    goto :goto_1

    .line 793
    :cond_1
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    nop

    .line 1267
    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-headToTailExclusive$ui_release-NodeChain$toString$1$1":I
    nop

    .line 1268
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_0

    .line 1270
    :cond_2
    nop

    .line 795
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$headToTailExclusive$ui_release":I
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    nop

    .line 781
    .end local v1    # "$this$toString_u24lambda_u2432":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-NodeChain$toString$1":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    return-object v0
.end method

.method public final updateFrom$ui_release(Landroidx/compose/ui/Modifier;)V
    .locals 20
    .param p1, "m"    # Landroidx/compose/ui/Modifier;

    .line 102
    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 106
    .local v0, "coordinatorSyncNeeded":Z
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->padChain()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 112
    .local v7, "paddedHead":Landroidx/compose/ui/Modifier$Node;
    iget-object v8, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    .line 113
    .local v8, "before":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v9, v2

    .line 114
    .local v9, "beforeSize":I
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 864
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 865
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv":I
    const/4 v4, 0x0

    .line 866
    .local v4, "$i$f$MutableVector":I
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v3, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v5, v10, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 864
    .end local v3    # "capacity$iv$iv":I
    .end local v4    # "$i$f$MutableVector":I
    move-object v2, v5

    .line 114
    .end local v2    # "$i$f$mutableVectorOf":I
    :cond_1
    move-object/from16 v10, p1

    invoke-static {v10, v2}, Landroidx/compose/ui/node/NodeChainKt;->access$fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v11

    .line 115
    .local v11, "after":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 116
    .local v12, "i":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v13, 0x0

    const-string v3, "expected prior modifier list to be non-empty"

    if-ne v2, v9, :cond_8

    .line 122
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 123
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v1, :cond_5

    if-ge v12, v9, :cond_5

    .line 124
    if-eqz v8, :cond_4

    .line 125
    move-object v2, v8

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 867
    .local v4, "$i$f$get":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v2, v5, v12

    .line 125
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$get":I
    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    .line 126
    .local v2, "prev":Landroidx/compose/ui/Modifier$Element;
    move-object v4, v11

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 868
    .local v5, "$i$f$get":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v14

    aget-object v4, v14, v12

    .line 126
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$get":I
    check-cast v4, Landroidx/compose/ui/Modifier$Element;

    .line 127
    .local v4, "next":Landroidx/compose/ui/Modifier$Element;
    invoke-static {v2, v4}, Landroidx/compose/ui/node/NodeChainKt;->actionForModifiers(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 143
    :pswitch_0
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_3

    move v15, v12

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeReused(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_2

    .line 139
    :pswitch_1
    invoke-direct {v6, v2, v4, v1}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 140
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_3

    move v15, v12

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeUpdated(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_2

    .line 132
    :pswitch_2
    iget-object v5, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v5, :cond_2

    invoke-interface {v5, v12, v2, v4, v1}, Landroidx/compose/ui/node/NodeChain$Logger;->linearDiffAborted(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 133
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 134
    move-object v14, v1

    goto :goto_3

    .line 149
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 150
    nop

    .end local v2    # "prev":Landroidx/compose/ui/Modifier$Element;
    .end local v4    # "next":Landroidx/compose/ui/Modifier$Element;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 863
    :cond_4
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$a$-checkNotNull-NodeChain$updateFrom$1":I
    nop

    .end local v2    # "$i$a$-checkNotNull-NodeChain$updateFrom$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_5
    move-object v14, v1

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    .local v14, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-ge v12, v9, :cond_12

    .line 153
    const/4 v15, 0x1

    .line 154
    .end local v0    # "coordinatorSyncNeeded":Z
    .local v15, "coordinatorSyncNeeded":Z
    if-eqz v8, :cond_7

    .line 155
    if-eqz v14, :cond_6

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v5

    .line 159
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v8

    move-object v3, v11

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move v0, v15

    .end local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_8

    .line 863
    .restart local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    :cond_6
    const/4 v0, 0x0

    .line 155
    .local v0, "$i$a$-checkNotNull-NodeChain$updateFrom$3":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NodeChain$updateFrom$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "structuralUpdate requires a non-null tail"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_7
    const/4 v0, 0x0

    .line 154
    .local v0, "$i$a$-checkNotNull-NodeChain$updateFrom$2":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NodeChain$updateFrom$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    .end local v14    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "coordinatorSyncNeeded":Z
    .local v0, "coordinatorSyncNeeded":Z
    :cond_8
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v9, :cond_b

    .line 173
    const/4 v0, 0x1

    .line 174
    move-object v1, v7

    .line 175
    .restart local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-ge v12, v2, :cond_a

    .line 176
    move-object v2, v11

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 869
    .local v3, "$i$f$get":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v2, v4, v12

    .line 176
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$get":I
    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    .line 177
    .local v2, "next":Landroidx/compose/ui/Modifier$Element;
    move-object v3, v1

    .line 178
    .local v3, "parent":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 179
    iget-object v14, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v14, :cond_9

    const/4 v15, 0x0

    move/from16 v16, v12

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeInserted(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)V

    .line 180
    :cond_9
    nop

    .end local v2    # "next":Landroidx/compose/ui/Modifier$Element;
    .end local v3    # "parent":Landroidx/compose/ui/Modifier$Node;
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 182
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_8

    .line 183
    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-nez v2, :cond_10

    .line 184
    if-eqz v8, :cond_f

    .line 186
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 187
    .restart local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-ge v12, v2, :cond_d

    .line 188
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v2, :cond_c

    move-object v3, v8

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 870
    .local v4, "$i$f$get":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v3, v5, v12

    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$get":I
    check-cast v3, Landroidx/compose/ui/Modifier$Element;

    .line 188
    invoke-interface {v2, v12, v3, v1}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeRemoved(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 189
    :cond_c
    invoke-direct {v6, v1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 190
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 192
    :cond_d
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v3, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_6

    :cond_e
    move-object v3, v13

    :goto_6
    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 193
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v2, v6, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .end local v1    # "node":Landroidx/compose/ui/Modifier$Node;
    goto :goto_8

    .line 863
    :cond_f
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$a$-checkNotNull-NodeChain$updateFrom$4":I
    nop

    .end local v1    # "$i$a$-checkNotNull-NodeChain$updateFrom$4":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_10
    const/4 v14, 0x1

    .line 196
    .end local v0    # "coordinatorSyncNeeded":Z
    .local v14, "coordinatorSyncNeeded":Z
    if-nez v8, :cond_11

    .line 871
    const/16 v0, 0x10

    .local v0, "capacity$iv":I
    const/4 v2, 0x0

    .line 872
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v0, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v3, v4, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    move-object v2, v3

    goto :goto_7

    .line 196
    .end local v0    # "capacity$iv":I
    .end local v2    # "$i$f$MutableVector":I
    :cond_11
    move-object v2, v8

    :goto_7
    nop

    .line 197
    .end local v8    # "before":Landroidx/compose/runtime/collection/MutableVector;
    .local v2, "before":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 198
    const/4 v1, 0x0

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v5

    .line 197
    move-object/from16 v0, p0

    move-object v3, v11

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move-object v8, v2

    move v0, v14

    .line 205
    .end local v2    # "before":Landroidx/compose/runtime/collection/MutableVector;
    .end local v14    # "coordinatorSyncNeeded":Z
    .local v0, "coordinatorSyncNeeded":Z
    .restart local v8    # "before":Landroidx/compose/runtime/collection/MutableVector;
    :cond_12
    :goto_8
    iput-object v11, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    .line 207
    if-eqz v8, :cond_13

    .line 863
    move-object v1, v8

    .local v1, "it":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$a$-also-NodeChain$updateFrom$5":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    move-object v13, v8

    .end local v1    # "it":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$a$-also-NodeChain$updateFrom$5":I
    :cond_13
    iput-object v13, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    .line 208
    invoke-direct {v6, v7}, Landroidx/compose/ui/node/NodeChain;->trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iput-object v1, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 209
    if-eqz v0, :cond_14

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncCoordinators()V

    .line 212
    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final useLogger$ui_release(Landroidx/compose/ui/node/NodeChain$Logger;)V
    .locals 0
    .param p1, "logger"    # Landroidx/compose/ui/node/NodeChain$Logger;

    .line 50
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    .line 51
    return-void
.end method
