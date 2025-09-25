.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "NodeCoordinator.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeCoordinator$Companion;,
        Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n+ 2 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 3 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 4 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 8 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 9 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 10 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 11 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 12 Size.kt\nandroidx/compose/ui/geometry/Size\n*L\n1#1,1329:1\n95#1,5:1330\n100#1,4:1378\n95#1,9:1382\n106#1:1393\n95#1,13:1394\n108#1:1450\n100#1,10:1451\n106#1:1523\n95#1,13:1524\n108#1:1580\n100#1,10:1581\n106#1:1596\n95#1,13:1597\n108#1:1653\n100#1,10:1654\n385#2,6:1335\n395#2,2:1342\n397#2,8:1347\n405#2,9:1358\n414#2,8:1370\n385#2,6:1407\n395#2,2:1414\n397#2,8:1419\n405#2,9:1430\n414#2,8:1442\n385#2,6:1468\n395#2,2:1475\n397#2,8:1480\n405#2,9:1491\n414#2,8:1503\n385#2,6:1537\n395#2,2:1544\n397#2,8:1549\n405#2,9:1560\n414#2,8:1572\n385#2,6:1610\n395#2,2:1617\n397#2,8:1622\n405#2,9:1633\n414#2,8:1645\n206#2:1666\n207#2,8:1668\n219#2:1678\n190#2:1679\n191#2,6:1681\n220#2:1687\n385#2,6:1688\n395#2,2:1695\n397#2,8:1700\n405#2,9:1711\n414#2,8:1723\n221#2:1731\n198#2,3:1732\n261#3:1341\n261#3:1413\n261#3:1466\n261#3:1474\n261#3:1543\n261#3:1616\n261#3:1694\n234#4,3:1344\n237#4,3:1367\n234#4,3:1416\n237#4,3:1439\n234#4,3:1477\n237#4,3:1500\n234#4,3:1546\n237#4,3:1569\n234#4,3:1619\n237#4,3:1642\n234#4,3:1697\n237#4,3:1720\n1208#5:1355\n1187#5,2:1356\n1208#5:1427\n1187#5,2:1428\n1208#5:1488\n1187#5,2:1489\n1208#5:1557\n1187#5,2:1558\n1208#5:1630\n1187#5,2:1631\n1208#5:1708\n1187#5,2:1709\n1#6:1391\n1#6:1667\n1#6:1680\n74#7:1392\n82#7:1461\n82#7:1465\n82#7:1467\n84#7:1514\n84#7:1522\n74#7:1594\n84#7:1595\n72#7:1664\n72#7:1665\n78#7:1676\n78#7:1677\n756#8,3:1462\n759#8,3:1511\n495#9,4:1515\n500#9:1592\n129#10,3:1519\n133#10:1591\n86#11:1593\n66#12,5:1735\n*S KotlinDebug\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n*L\n106#1:1330,5\n106#1:1378,4\n116#1:1382,9\n214#1:1393\n214#1:1394,13\n214#1:1450\n214#1:1451,10\n293#1:1523\n293#1:1524,13\n293#1:1580\n293#1:1581,10\n373#1:1596\n373#1:1597,13\n373#1:1653\n373#1:1654,10\n107#1:1335,6\n107#1:1342,2\n107#1:1347,8\n107#1:1358,9\n107#1:1370,8\n214#1:1407,6\n214#1:1414,2\n214#1:1419,8\n214#1:1430,9\n214#1:1442,8\n238#1:1468,6\n238#1:1475,2\n238#1:1480,8\n238#1:1491,9\n238#1:1503,8\n293#1:1537,6\n293#1:1544,2\n293#1:1549,8\n293#1:1560,9\n293#1:1572,8\n373#1:1610,6\n373#1:1617,2\n373#1:1622,8\n373#1:1633,9\n373#1:1645,8\n1041#1:1666\n1041#1:1668,8\n1076#1:1678\n1076#1:1679\n1076#1:1681,6\n1076#1:1687\n1076#1:1688,6\n1076#1:1695,2\n1076#1:1700,8\n1076#1:1711,9\n1076#1:1723,8\n1076#1:1731\n1076#1:1732,3\n107#1:1341\n214#1:1413\n237#1:1466\n238#1:1474\n293#1:1543\n373#1:1616\n1076#1:1694\n107#1:1344,3\n107#1:1367,3\n214#1:1416,3\n214#1:1439,3\n238#1:1477,3\n238#1:1500,3\n293#1:1546,3\n293#1:1569,3\n373#1:1619,3\n373#1:1642,3\n1076#1:1697,3\n1076#1:1720,3\n107#1:1355\n107#1:1356,2\n214#1:1427\n214#1:1428,2\n238#1:1488\n238#1:1489,2\n293#1:1557\n293#1:1558,2\n373#1:1630\n373#1:1631,2\n1076#1:1708\n1076#1:1709,2\n1041#1:1667\n1076#1:1680\n214#1:1392\n230#1:1461\n237#1:1465\n238#1:1467\n291#1:1514\n293#1:1522\n359#1:1594\n373#1:1595\n652#1:1664\n1041#1:1665\n1073#1:1676\n1076#1:1677\n236#1:1462,3\n236#1:1511,3\n292#1:1515,4\n292#1:1592\n292#1:1519,3\n292#1:1591\n339#1:1593\n1120#1:1735,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008#\u0008 \u0018\u0000 \u0092\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u0092\u0002\u0093\u0002B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0089\u0001\u001a\u00020\u001d2\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020#H\u0002J)\u0010\u0089\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001d\u0010\u0091\u0001\u001a\u00020T2\u0006\u0010S\u001a\u00020TH\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\'\u0010\u0094\u0001\u001a\u00020\u00172\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0006\u0010S\u001a\u00020TH\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u0010\u0010\u0098\u0001\u001a\u00020\u001d2\u0007\u0010\u0099\u0001\u001a\u00020\u001cJ\u001c\u0010\u009a\u0001\u001a\u00020\u001d2\u0007\u0010\u0099\u0001\u001a\u00020\u001c2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0004J\u0012\u0010\u009d\u0001\u001a\u00020\u001d2\u0007\u0010\u0099\u0001\u001a\u00020\u001cH\u0002J\t\u0010\u009e\u0001\u001a\u00020\u001dH&J\u0018\u0010\u009f\u0001\u001a\u00020\u00002\u0007\u0010\u00a0\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0003\u0008\u00a1\u0001J\u001f\u0010\u00a2\u0001\u001a\u00030\u008d\u00012\u0007\u0010e\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u0093\u0001J\u001b\u0010\u00a4\u0001\u001a\u00020\u001d2\u0007\u0010\u00a5\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020#H\u0002J#\u0010\u00a6\u0001\u001a\u00020#2\u000c\u0010\u00a7\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00a8\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001J#\u0010\u00ab\u0001\u001a\u0004\u0018\u00010z2\u000c\u0010\u00a7\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00a8\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u0014\u0010\u00ae\u0001\u001a\u0004\u0018\u00010z2\u0007\u0010\u00af\u0001\u001a\u00020#H\u0002JC\u0010\u00b0\u0001\u001a\u00020\u001d2\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b5\u0001\u001a\u00020#2\u0007\u0010\u00b6\u0001\u001a\u00020#\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001JE\u0010\u00b9\u0001\u001a\u00020\u001d2\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b5\u0001\u001a\u00020#2\u0007\u0010\u00b6\u0001\u001a\u00020#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ba\u0001\u0010\u00b8\u0001J\t\u0010\u00bb\u0001\u001a\u00020\u001dH\u0016J\u001f\u0010\u00bc\u0001\u001a\u00020#2\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u0001H\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00bd\u0001\u0010\u00be\u0001J\u0007\u0010\u00bf\u0001\u001a\u00020#J\u001c\u0010\u00c0\u0001\u001a\u00030\u00c1\u00012\u0007\u0010\u00c2\u0001\u001a\u00020\u00032\u0007\u0010\u008c\u0001\u001a\u00020#H\u0016J)\u0010\u00c3\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u00c2\u0001\u001a\u00020\u00032\u0008\u0010\u00c4\u0001\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J \u0010\u00c7\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00c8\u0001\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c9\u0001\u0010\u0093\u0001J \u0010\u00ca\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00c8\u0001\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u0093\u0001J \u0010\u00cc\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00cd\u0001\u0010\u0093\u0001J\u000f\u0010\u00ce\u0001\u001a\u00020\u001dH\u0000\u00a2\u0006\u0003\u0008\u00cf\u0001J\t\u0010\u00d0\u0001\u001a\u00020\u001dH\u0016J\u0007\u0010\u00d1\u0001\u001a\u00020\u001dJ\u001b\u0010\u00d2\u0001\u001a\u00020\u001d2\u0007\u0010\u00d3\u0001\u001a\u00020Y2\u0007\u0010\u00d4\u0001\u001a\u00020YH\u0014J\u0007\u0010\u00d5\u0001\u001a\u00020\u001dJ\u0007\u0010\u00d6\u0001\u001a\u00020\u001dJ\u0007\u0010\u00d7\u0001\u001a\u00020\u001dJ\u0012\u0010\u00d8\u0001\u001a\u00020\u001d2\u0007\u0010\u0099\u0001\u001a\u00020\u001cH\u0016J2\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0007\u0010\u00db\u0001\u001a\u0002002\u0010\u0008\u0004\u0010\u00dc\u0001\u001a\t\u0012\u0005\u0012\u00030\u00da\u00010\'H\u0084\u0008\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00dd\u0001\u0010\u00de\u0001JA\u0010\u00df\u0001\u001a\u00020\u001d2\u0006\u0010e\u001a\u00020d2\u0007\u0010\u0085\u0001\u001a\u00020\u00172\u0019\u00109\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u00088H\u0014\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001JA\u0010\u00e2\u0001\u001a\u00020\u001d2\u0006\u0010e\u001a\u00020d2\u0007\u0010\u0085\u0001\u001a\u00020\u00172\u0019\u00109\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u00088H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00e3\u0001\u0010\u00e1\u0001J?\u0010\u00e4\u0001\u001a\u00020\u001d2\u0006\u0010e\u001a\u00020d2\u0007\u0010\u0085\u0001\u001a\u00020\u00172\u0019\u00109\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u00088\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00e5\u0001\u0010\u00e1\u0001J,\u0010\u00e6\u0001\u001a\u00020\u001d2\u0007\u0010\u00a5\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020#2\t\u0008\u0002\u0010\u00e7\u0001\u001a\u00020#H\u0000\u00a2\u0006\u0003\u0008\u00e8\u0001J\u000f\u0010\u00e9\u0001\u001a\u00020\u001dH\u0010\u00a2\u0006\u0003\u0008\u00ea\u0001J\u0007\u0010\u00eb\u0001\u001a\u00020#J\u001f\u0010\u00ec\u0001\u001a\u00030\u008d\u00012\u0007\u0010e\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ed\u0001\u0010\u0093\u0001J\u0008\u0010\u00ee\u0001\u001a\u00030\u00c1\u0001J(\u0010\u00ef\u0001\u001a\u00020\u001d2\u0007\u0010\u00c2\u0001\u001a\u00020\u00032\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001J(\u0010\u00f4\u0001\u001a\u00020\u001d2\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f5\u0001\u0010\u00f6\u0001J(\u0010\u00f7\u0001\u001a\u00020\u001d2\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f8\u0001\u0010\u00f6\u0001J-\u0010\u00f9\u0001\u001a\u00020\u001d2\u0019\u00109\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u000882\t\u0008\u0002\u0010\u00fa\u0001\u001a\u00020#J\u0014\u0010\u00fb\u0001\u001a\u00020\u001d2\t\u0008\u0002\u0010\u00fc\u0001\u001a\u00020#H\u0002JF\u0010\u00fd\u0001\u001a\u00020\u001d\"\u0007\u0008\u0000\u0010\u00fe\u0001\u0018\u00012\u000f\u0010\u00a7\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00fe\u00010\u00a8\u00012\u0014\u0010\u00dc\u0001\u001a\u000f\u0012\u0005\u0012\u0003H\u00fe\u0001\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ff\u0001\u0010\u0080\u0002J1\u0010\u00fd\u0001\u001a\u00020\u001d2\u0007\u0010\u0081\u0002\u001a\u00020Y2\u0007\u0010\u00af\u0001\u001a\u00020#2\u0013\u0010\u00dc\u0001\u001a\u000e\u0012\u0004\u0012\u00020z\u0012\u0004\u0012\u00020\u001d0\u001bH\u0086\u0008J \u0010\u0082\u0002\u001a\u00030\u008d\u00012\u0008\u0010\u0083\u0002\u001a\u00030\u008d\u0001H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0084\u0002\u0010\u0093\u0001J(\u0010\u0085\u0002\u001a\u00020\u001d2\u0007\u0010\u0099\u0001\u001a\u00020\u001c2\u0013\u0010\u00dc\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0084\u0008J\u001f\u0010\u0086\u0002\u001a\u00020#2\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u0001H\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0087\u0002\u0010\u00be\u0001JK\u0010\u0088\u0002\u001a\u00020\u001d*\u0004\u0018\u00010z2\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b5\u0001\u001a\u00020#2\u0007\u0010\u00b6\u0001\u001a\u00020#H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0089\u0002\u0010\u008a\u0002JT\u0010\u008b\u0002\u001a\u00020\u001d*\u0004\u0018\u00010z2\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b5\u0001\u001a\u00020#2\u0007\u0010\u00b6\u0001\u001a\u00020#2\u0007\u0010\u008c\u0002\u001a\u00020\u0017H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008d\u0002\u0010\u008e\u0002JT\u0010\u008f\u0002\u001a\u00020\u001d*\u0004\u0018\u00010z2\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u00b5\u0001\u001a\u00020#2\u0007\u0010\u00b6\u0001\u001a\u00020#2\u0007\u0010\u008c\u0002\u001a\u00020\u0017H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0090\u0002\u0010\u008e\u0002J\r\u0010\u0091\u0002\u001a\u00020\u0000*\u00020\u0003H\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0019R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010%R\u000e\u0010)\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010%R\u000e\u0010+\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010-\u001a\u00020#2\u0006\u0010,\u001a\u00020#@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010%R\u001a\u0010/\u001a\u0002008@X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\"\u00104\u001a\u0004\u0018\u0001032\u0008\u0010,\u001a\u0004\u0018\u000103@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106RD\u00109\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u000882\u0019\u0010,\u001a\u0015\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001b\u00a2\u0006\u0002\u00088@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u000e\u0010<\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020?8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR&\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010,\u001a\u0004\u0018\u00010G@dX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR$\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020\t8P@PX\u0090\u000e\u00a2\u0006\u000c\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u0017\u0010S\u001a\u00020T8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008U\u00102R\u001c\u0010V\u001a\u0010\u0012\u0004\u0012\u00020X\u0012\u0004\u0012\u00020Y\u0018\u00010WX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010Z\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u0012R\u0013\u0010\\\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010\u0015R\u0016\u0010^\u001a\u0004\u0018\u00010_8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u0013\u0010b\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u0015R,\u0010e\u001a\u00020d2\u0006\u0010,\u001a\u00020d@TX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010i\u001a\u0004\u0008f\u00102\"\u0004\u0008g\u0010hR\u001a\u0010j\u001a\u0008\u0012\u0004\u0012\u00020X0k8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010mR\u0014\u0010n\u001a\u00020\u000b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR\u000e\u0010q\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010r\u001a\u00020s8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008t\u00102R\u0014\u0010u\u001a\u00020v8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010xR\u0012\u0010y\u001a\u00020zX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010|R\u001e\u0010}\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R \u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010\u007f\"\u0006\u0008\u0084\u0001\u0010\u0081\u0001R(\u0010\u0085\u0001\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u0017@DX\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u0086\u0001\u0010\u0019\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0094\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "_measureResult",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "_rectCache",
        "Landroidx/compose/ui/geometry/MutableRect;",
        "alignmentLinesOwner",
        "Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "getAlignmentLinesOwner",
        "()Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "child",
        "getChild",
        "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "coordinates",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "density",
        "",
        "getDensity",
        "()F",
        "drawBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "getDrawBlock$annotations",
        "()V",
        "fontScale",
        "getFontScale",
        "hasMeasureResult",
        "",
        "getHasMeasureResult",
        "()Z",
        "invalidateParentLayer",
        "Lkotlin/Function0;",
        "isAttached",
        "isClipping",
        "isValidOwnerScope",
        "lastLayerAlpha",
        "<set-?>",
        "lastLayerDrawingWasSkipped",
        "getLastLayerDrawingWasSkipped$ui_release",
        "lastMeasurementConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getLastMeasurementConstraints-msEJaDk$ui_release",
        "()J",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "layer",
        "getLayer",
        "()Landroidx/compose/ui/node/OwnedLayer;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "layerBlock",
        "getLayerBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "layerDensity",
        "Landroidx/compose/ui/unit/Density;",
        "layerLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layerPositionalProperties",
        "Landroidx/compose/ui/node/LayerPositionalProperties;",
        "layoutDirection",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "Landroidx/compose/ui/node/LookaheadDelegate;",
        "lookaheadDelegate",
        "getLookaheadDelegate",
        "()Landroidx/compose/ui/node/LookaheadDelegate;",
        "setLookaheadDelegate",
        "(Landroidx/compose/ui/node/LookaheadDelegate;)V",
        "value",
        "measureResult",
        "getMeasureResult$ui_release",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "setMeasureResult$ui_release",
        "(Landroidx/compose/ui/layout/MeasureResult;)V",
        "minimumTouchTargetSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getMinimumTouchTargetSize-NH-jbRc",
        "oldAlignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "",
        "parent",
        "getParent",
        "parentCoordinates",
        "getParentCoordinates",
        "parentData",
        "",
        "getParentData",
        "()Ljava/lang/Object;",
        "parentLayoutCoordinates",
        "getParentLayoutCoordinates",
        "Landroidx/compose/ui/unit/IntOffset;",
        "position",
        "getPosition-nOcc-ac",
        "setPosition--gyyYBs",
        "(J)V",
        "J",
        "providedAlignmentLines",
        "",
        "getProvidedAlignmentLines",
        "()Ljava/util/Set;",
        "rectCache",
        "getRectCache",
        "()Landroidx/compose/ui/geometry/MutableRect;",
        "released",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "snapshotObserver",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "tail",
        "Landroidx/compose/ui/Modifier$Node;",
        "getTail",
        "()Landroidx/compose/ui/Modifier$Node;",
        "wrapped",
        "getWrapped$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "setWrapped$ui_release",
        "(Landroidx/compose/ui/node/NodeCoordinator;)V",
        "wrappedBy",
        "getWrappedBy$ui_release",
        "setWrappedBy$ui_release",
        "zIndex",
        "getZIndex",
        "setZIndex",
        "(F)V",
        "ancestorToLocal",
        "ancestor",
        "rect",
        "clipBounds",
        "Landroidx/compose/ui/geometry/Offset;",
        "offset",
        "ancestorToLocal-R5De75A",
        "(Landroidx/compose/ui/node/NodeCoordinator;J)J",
        "calculateMinimumTouchTargetPadding",
        "calculateMinimumTouchTargetPadding-E7KxVPU",
        "(J)J",
        "distanceInMinimumTouchTarget",
        "pointerPosition",
        "distanceInMinimumTouchTarget-tz77jQw",
        "(JJ)F",
        "draw",
        "canvas",
        "drawBorder",
        "paint",
        "Landroidx/compose/ui/graphics/Paint;",
        "drawContainedDrawModifiers",
        "ensureLookaheadDelegateCreated",
        "findCommonAncestor",
        "other",
        "findCommonAncestor$ui_release",
        "fromParentPosition",
        "fromParentPosition-MK-Hz9U",
        "fromParentRect",
        "bounds",
        "hasNode",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "hasNode-H91voCI",
        "(I)Z",
        "head",
        "head-H91voCI",
        "(I)Landroidx/compose/ui/Modifier$Node;",
        "headNode",
        "includeTail",
        "hitTest",
        "hitTestSource",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "isTouchEvent",
        "isInLayer",
        "hitTest-YqVAtuI",
        "(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
        "hitTestChild",
        "hitTestChild-YqVAtuI",
        "invalidateLayer",
        "isPointerInBounds",
        "isPointerInBounds-k-4lQ0M",
        "(J)Z",
        "isTransparent",
        "localBoundingBoxOf",
        "Landroidx/compose/ui/geometry/Rect;",
        "sourceCoordinates",
        "localPositionOf",
        "relativeToSource",
        "localPositionOf-R5De75A",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J",
        "localToRoot",
        "relativeToLocal",
        "localToRoot-MK-Hz9U",
        "localToWindow",
        "localToWindow-MK-Hz9U",
        "offsetFromEdge",
        "offsetFromEdge-MK-Hz9U",
        "onCoordinatesUsed",
        "onCoordinatesUsed$ui_release",
        "onLayoutModifierNodeChanged",
        "onLayoutNodeAttach",
        "onMeasureResultChanged",
        "width",
        "height",
        "onMeasured",
        "onPlaced",
        "onRelease",
        "performDraw",
        "performingMeasure",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "block",
        "performingMeasure-K40F9xA",
        "(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;",
        "placeAt",
        "placeAt-f8xVGno",
        "(JFLkotlin/jvm/functions/Function1;)V",
        "placeSelf",
        "placeSelf-f8xVGno",
        "placeSelfApparentToRealOffset",
        "placeSelfApparentToRealOffset-f8xVGno",
        "rectInParent",
        "clipToMinimumTouchTargetSize",
        "rectInParent$ui_release",
        "replace",
        "replace$ui_release",
        "shouldSharePointerInputWithSiblings",
        "toParentPosition",
        "toParentPosition-MK-Hz9U",
        "touchBoundsInRoot",
        "transformFrom",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "transformFrom-EL8BTi8",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V",
        "transformFromAncestor",
        "transformFromAncestor-EL8BTi8",
        "(Landroidx/compose/ui/node/NodeCoordinator;[F)V",
        "transformToAncestor",
        "transformToAncestor-EL8BTi8",
        "updateLayerBlock",
        "forceUpdateLayerParameters",
        "updateLayerParameters",
        "invokeOnLayoutChange",
        "visitNodes",
        "T",
        "visitNodes-aLcG6gQ",
        "(ILkotlin/jvm/functions/Function1;)V",
        "mask",
        "windowToLocal",
        "relativeToWindow",
        "windowToLocal-MK-Hz9U",
        "withPositionTranslation",
        "withinLayerBounds",
        "withinLayerBounds-k-4lQ0M",
        "hit",
        "hit-1hIXUjU",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
        "hitNear",
        "distanceFromEdge",
        "hitNear-JHbHoSQ",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V",
        "speculativeHit",
        "speculativeHit-JHbHoSQ",
        "toCoordinator",
        "Companion",
        "HitTestSource",
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
.field public static final $stable:I = 0x0

.field public static final Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

.field public static final ExpectAttachedLayoutCoordinates:Ljava/lang/String; = "LayoutCoordinate operations are only valid when isAttached is true"

.field private static final PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field private static final SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field public static final UnmeasuredError:Ljava/lang/String; = "Asking for measurement result of unmeasured layout modifier"

.field private static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

.field private static final onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private static final tmpMatrix:[F


# instance fields
.field private _measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private _rectCache:Landroidx/compose/ui/geometry/MutableRect;

.field private final drawBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isClipping:Z

.field private lastLayerAlpha:F

.field private lastLayerDrawingWasSkipped:Z

.field private layer:Landroidx/compose/ui/node/OwnedLayer;

.field private layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private layerDensity:Landroidx/compose/ui/unit/Density;

.field private layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private oldAlignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:J

.field private released:Z

.field private wrapped:Landroidx/compose/ui/node/NodeCoordinator;

.field private wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    .line 1171
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .line 1197
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    .line 1200
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1201
    new-instance v0, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 1205
    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    .line 1211
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    .line 1236
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 57
    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 127
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 130
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    .line 220
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 380
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 464
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 54
    return-void
.end method

.method public static final synthetic access$drawContainedDrawModifiers(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    return-void
.end method

.method public static final synthetic access$getGraphicsLayerScope$cp()Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .locals 1

    .line 54
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    return-object v0
.end method

.method public static final synthetic access$getLayerPositionalProperties$p(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/LayerPositionalProperties;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    return-object v0
.end method

.method public static final synthetic access$getOnCommitAffectingLayer$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 54
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getPointerInputSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    .line 54
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getSemanticsSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    .line 54
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getSnapshotObserver(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 54
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTmpLayerPositionalProperties$cp()Landroidx/compose/ui/node/LayerPositionalProperties;
    .locals 1

    .line 54
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    return-object v0
.end method

.method public static final synthetic access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "includeTail"    # Z

    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hit-1hIXUjU(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "$receiver"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z

    .line 54
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    return-void
.end method

.method public static final synthetic access$hitNear-JHbHoSQ(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "$receiver"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 54
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    return-void
.end method

.method public static final synthetic access$setLastLayerDrawingWasSkipped$p(Landroidx/compose/ui/node/NodeCoordinator;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "<set-?>"    # Z

    .line 54
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return-void
.end method

.method public static final synthetic access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "value"    # J

    .line 54
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasurementConstraints-BRTryo0(J)V

    return-void
.end method

.method public static final synthetic access$speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "$receiver"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 54
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    return-void
.end method

.method private final ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "rect"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p3, "clipBounds"    # Z

    .line 846
    if-ne p1, p0, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 850
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V

    return-void
.end method

.method private final ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 3
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "offset"    # J

    .line 831
    if-ne p1, p0, :cond_0

    .line 832
    return-wide p2

    .line 834
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 835
    .local v0, "wrappedBy":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 838
    :cond_1
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide v1

    return-wide v1

    .line 836
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private final drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 359
    const/4 v0, 0x0

    .line 1594
    .local v0, "$i$f$getDraw-OLwlOKw":I
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 359
    .end local v0    # "$i$f$getDraw-OLwlOKw":I
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 360
    .local v0, "head":Landroidx/compose/ui/Modifier$Node;
    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v7

    .line 364
    .local v7, "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p1

    move-object v5, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->draw-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;)V

    .line 366
    .end local v7    # "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    :goto_0
    return-void
.end method

.method private final fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 6
    .param p1, "bounds"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p2, "clipBounds"    # Z

    .line 977
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    .line 978
    .local v0, "x":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 979
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 981
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .line 982
    .local v1, "y":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 983
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 985
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 986
    .local v2, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v2, :cond_0

    .line 987
    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 988
    iget-boolean v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 989
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 990
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    .line 991
    return-void

    .line 995
    :cond_0
    return-void
.end method

.method private static synthetic getDrawBlock$annotations()V
    .locals 0

    return-void
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method private final hasNode-H91voCI(I)Z
    .locals 3
    .param p1, "type"    # I

    .line 112
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->has-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private final headNode(Z)Landroidx/compose/ui/Modifier$Node;
    .locals 2
    .param p1, "includeTail"    # Z

    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 88
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 85
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 11
    .param p1, "$this$hit_u2d1hIXUjU"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z

    .line 577
    move-object v9, p1

    if-nez v9, :cond_0

    .line 578
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    move-object/from16 v0, p5

    move/from16 v1, p7

    goto :goto_0

    .line 580
    :cond_0
    new-instance v10, Landroidx/compose/ui/node/NodeCoordinator$hit$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator$hit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, p1, v1, v10}, Landroidx/compose/ui/node/HitTestResult;->hit(Landroidx/compose/ui/Modifier$Node;ZLkotlin/jvm/functions/Function0;)V

    .line 585
    :goto_0
    return-void
.end method

.method private final hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12
    .param p1, "$this$hitNear_u2dJHbHoSQ"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 599
    move-object v10, p1

    if-nez v10, :cond_0

    .line 600
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p8

    goto :goto_0

    .line 603
    :cond_0
    nop

    .line 604
    nop

    .line 605
    nop

    .line 606
    nop

    .line 603
    new-instance v11, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, p1, v2, v1, v11}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    .line 618
    :goto_0
    return-void
.end method

.method private final offsetFromEdge-MK-Hz9U(J)J
    .locals 6
    .param p1, "pointerPosition"    # J

    .line 1085
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 1086
    .local v0, "x":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    neg-float v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1087
    .local v2, "horizontal":F
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    .line 1088
    .local v3, "y":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_1

    neg-float v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    :goto_1
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1090
    .local v1, "vertical":F
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    return-wide v4
.end method

.method private final placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 317
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p4, v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setPosition--gyyYBs(J)V

    .line 320
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    .line 322
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 323
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 328
    :cond_1
    :goto_0
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 329
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 331
    .end local v0    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    :cond_2
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    .line 332
    return-void
.end method

.method public static synthetic rectInParent$ui_release$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V
    .locals 0

    .line 938
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 941
    const/4 p3, 0x0

    .line 938
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 15
    .param p1, "$this$speculativeHit_u2dJHbHoSQ"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "pointerPosition"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "isTouchEvent"    # Z
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 632
    move-object/from16 v10, p1

    if-nez v10, :cond_0

    .line 633
    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    move-object/from16 v11, p2

    move-object/from16 v0, p5

    move/from16 v13, p7

    move/from16 v14, p8

    goto :goto_0

    .line 634
    :cond_0
    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    nop

    .line 638
    nop

    .line 639
    nop

    .line 640
    nop

    .line 637
    new-instance v12, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-virtual {v0, v10, v14, v13, v12}, Landroidx/compose/ui/node/HitTestResult;->speculativeHit(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 652
    :cond_1
    move-object/from16 v0, p5

    move/from16 v13, p7

    move/from16 v14, p8

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v2

    const/4 v3, 0x0

    .line 1664
    .local v3, "$i$f$getLayout-OLwlOKw":I
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 652
    .end local v3    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 653
    nop

    .line 654
    nop

    .line 655
    nop

    .line 656
    nop

    .line 657
    nop

    .line 658
    nop

    .line 652
    move-object v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 661
    :goto_0
    return-void
.end method

.method private final toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1
    .param p1, "$this$toCoordinator"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 736
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_2
    return-object v0
.end method

.method private final transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 7
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "matrix"    # [F

    .line 787
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 789
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 791
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v2, v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 792
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 794
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Landroidx/compose/ui/node/OwnedLayer;->inverseTransform-58bKbWc([F)V

    .line 796
    :cond_1
    return-void
.end method

.method private final transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 10
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "matrix"    # [F

    .line 773
    move-object v0, p0

    .line 774
    .local v0, "wrapper":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 775
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Landroidx/compose/ui/node/OwnedLayer;->transform-58bKbWc([F)V

    .line 776
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    .line 777
    .local v1, "position":J
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 778
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 779
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    int-to-float v5, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    int-to-float v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 780
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {p2, v3}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 782
    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v3

    .end local v1    # "position":J
    goto :goto_0

    .line 784
    :cond_2
    return-void
.end method

.method public static synthetic updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 0

    .line 394
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 396
    const/4 p2, 0x0

    .line 394
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerBlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateLayerParameters(Z)V
    .locals 6
    .param p1, "invokeOnLayoutChange"    # Z

    .line 435
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 436
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_2

    .line 437
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    .line 440
    .local v1, "layerBlock":Lkotlin/jvm/functions/Function1;
    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->reset()V

    .line 441
    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setGraphicsDensity$ui_release(Landroidx/compose/ui/unit/Density;)V

    .line 442
    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSize-uvyYCjk(J)V

    .line 443
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/node/OwnerScope;

    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    new-instance v5, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;

    invoke-direct {v5, v1}, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 446
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    if-nez v2, :cond_0

    .line 447
    new-instance v2, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v2}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    move-object v3, v2

    .line 1391
    .local v3, "it":Landroidx/compose/ui/node/LayerPositionalProperties;
    const/4 v4, 0x0

    .line 447
    .local v4, "$i$a$-also-NodeCoordinator$updateLayerParameters$layerPositionalProperties$1":I
    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 446
    .end local v3    # "it":Landroidx/compose/ui/node/LayerPositionalProperties;
    .end local v4    # "$i$a$-also-NodeCoordinator$updateLayerParameters$layerPositionalProperties$1":I
    :cond_0
    nop

    .line 448
    .local v2, "layerPositionalProperties":Landroidx/compose/ui/node/LayerPositionalProperties;
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    check-cast v3, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/LayerPositionalProperties;->copyFrom(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 449
    nop

    .line 450
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 451
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    .line 452
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v5

    .line 449
    invoke-interface {v0, v3, v4, v5}, Landroidx/compose/ui/node/OwnedLayer;->updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V

    .line 454
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    .line 455
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v3

    iput v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    .line 456
    if-eqz p1, :cond_4

    .line 457
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_1

    .line 437
    .end local v1    # "layerBlock":Lkotlin/jvm/functions/Function1;
    .end local v2    # "layerPositionalProperties":Landroidx/compose/ui/node/LayerPositionalProperties;
    :cond_1
    const/4 v1, 0x0

    .line 438
    .local v1, "$i$a$-checkNotNull-NodeCoordinator$updateLayerParameters$layerBlock$1":I
    nop

    .line 437
    .end local v1    # "$i$a$-checkNotNull-NodeCoordinator$updateLayerParameters$layerBlock$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateLayerParameters requires a non-null layerBlock"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 462
    :cond_4
    :goto_1
    return-void

    .line 1391
    :cond_5
    const/4 v1, 0x0

    .line 460
    .local v1, "$i$a$-check-NodeCoordinator$updateLayerParameters$2":I
    nop

    .end local v1    # "$i$a$-check-NodeCoordinator$updateLayerParameters$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "null layer with a non-null layerBlock"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V
    .locals 0

    .line 434
    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerParameters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final calculateMinimumTouchTargetPadding-E7KxVPU(J)J
    .locals 5
    .param p1, "minimumTouchTargetSize"    # J

    .line 1099
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1100
    .local v0, "widthDiff":F
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1101
    .local v1, "heightDiff":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v2, v1, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    return-wide v2
.end method

.method protected final distanceInMinimumTouchTarget-tz77jQw(JJ)F
    .locals 7
    .param p1, "pointerPosition"    # J
    .param p3, "minimumTouchTargetSize"    # J

    .line 1113
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 1117
    return v1

    .line 1120
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v2

    const/4 v0, 0x0

    .line 1735
    .local v0, "$i$f$component1-impl":I
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    .line 1120
    .end local v0    # "$i$f$component1-impl":I
    nop

    .local v0, "width":F
    const/4 v4, 0x0

    .line 1739
    .local v4, "$i$f$component2-impl":I
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    .line 1120
    .end local v4    # "$i$f$component2-impl":I
    nop

    .line 1121
    .local v2, "height":F
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->offsetFromEdge-MK-Hz9U(J)J

    move-result-wide v3

    .line 1123
    .local v3, "offsetFromEdge":J
    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-gtz v6, :cond_1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 1124
    :cond_1
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_2

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_2

    .line 1126
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v1

    goto :goto_0

    .line 1128
    :cond_2
    nop

    .line 1123
    :goto_0
    return v1
.end method

.method public final draw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 346
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 347
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/OwnedLayer;->drawLayer(Landroidx/compose/ui/graphics/Canvas;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 351
    .local v1, "x":F
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 352
    .local v2, "y":F
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 353
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    .line 354
    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 356
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_0
    return-void
.end method

.method protected final drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "paint"    # Landroidx/compose/ui/graphics/Paint;

    .line 895
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 896
    nop

    .line 897
    nop

    .line 898
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    .line 899
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    .line 895
    invoke-direct {v0, v2, v2, v1, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 901
    .local v0, "rect":Landroidx/compose/ui/geometry/Rect;
    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/Canvas;->drawRect(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 902
    return-void
.end method

.method public abstract ensureLookaheadDelegateCreated()V
.end method

.method public final findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 9
    .param p1, "other"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 1036
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 1037
    .local v0, "ancestor1":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 1038
    .local v1, "ancestor2":Landroidx/compose/ui/node/LayoutNode;
    if-ne v0, v1, :cond_4

    .line 1039
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1041
    .local v2, "otherNode":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v4, 0x0

    .line 1665
    .local v4, "$i$f$getLayout-OLwlOKw":I
    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 1041
    .end local v4    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v3, "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "mask$iv":I
    const/4 v5, 0x0

    .line 1666
    .local v5, "$i$f$visitLocalAncestors":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1668
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1669
    .local v6, "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_2

    .line 1670
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_1

    .line 1671
    move-object v7, v6

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 1042
    .local v8, "$i$a$-visitLocalAncestors-NodeCoordinator$findCommonAncestor$1":I
    if-ne v7, v2, :cond_0

    return-object p1

    .line 1043
    :cond_0
    nop

    .line 1671
    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-visitLocalAncestors-NodeCoordinator$findCommonAncestor$1":I
    nop

    .line 1673
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_0

    .line 1675
    :cond_2
    nop

    .line 1044
    .end local v3    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "mask$iv":I
    .end local v5    # "$i$f$visitLocalAncestors":I
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    return-object p0

    .line 1667
    .restart local v3    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "mask$iv":I
    .restart local v5    # "$i$f$visitLocalAncestors":I
    :cond_3
    const/4 v6, 0x0

    .line 1666
    .local v6, "$i$a$-check-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    nop

    .end local v6    # "$i$a$-check-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "visitLocalAncestors called on an unattached node"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1047
    .end local v2    # "otherNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "mask$iv":I
    .end local v5    # "$i$f$visitLocalAncestors":I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 1048
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    .line 1051
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 1052
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    .line 1055
    :cond_6
    :goto_3
    if-eq v0, v1, :cond_8

    .line 1056
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 1057
    .local v2, "parent1":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    .line 1058
    .local v3, "parent2":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1061
    move-object v0, v2

    .line 1062
    move-object v1, v3

    .end local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    goto :goto_3

    .line 1059
    .restart local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .restart local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "layouts are not part of the same hierarchy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1065
    .end local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    :cond_8
    nop

    .line 1066
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v1, v2, :cond_9

    move-object v2, p0

    goto :goto_4

    .line 1067
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v0, v2, :cond_a

    move-object v2, p1

    goto :goto_4

    .line 1068
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1065
    :goto_4
    return-object v2
.end method

.method public fromParentPosition-MK-Hz9U(J)J
    .locals 5
    .param p1, "position"    # J

    .line 888
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->minus-Nv-tHpc(JJ)J

    move-result-wide v0

    .line 889
    .local v0, "relativeToPosition":J
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 890
    .local v2, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide v3

    goto :goto_0

    .line 891
    :cond_0
    move-wide v3, v0

    .line 890
    :goto_0
    return-wide v3
.end method

.method public getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getAlignmentLinesOwner$ui_release()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    return-object v0
.end method

.method public getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object v0
.end method

.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 80
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public getFontScale()F
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    return v0
.end method

.method public getHasMeasureResult()Z
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLastLayerDrawingWasSkipped$ui_release()Z
    .locals 1

    .line 472
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return v0
.end method

.method public final getLastMeasurementConstraints-msEJaDk$ui_release()J
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasurementConstraints-msEJaDk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayer()Landroidx/compose/ui/node/OwnedLayer;
    .locals 1

    .line 475
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    return-object v0
.end method

.method protected final getLayerBlock()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public abstract getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
.end method

.method public getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    .line 154
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMinimumTouchTargetSize-NH-jbRc()J
    .locals 4

    .line 482
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 1391
    .local v0, "$this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u2418":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 482
    .local v1, "$i$a$-with-NodeCoordinator$minimumTouchTargetSize$1":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    .end local v0    # "$this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u2418":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-NodeCoordinator$minimumTouchTargetSize$1":I
    return-wide v0
.end method

.method public getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object v0
.end method

.method public final getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 264
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0

    .line 1391
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "$i$a$-check-NodeCoordinator$parentCoordinates$1":I
    nop

    .end local v0    # "$i$a$-check-NodeCoordinator$parentCoordinates$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 25

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/4 v1, 0x0

    .line 1461
    .local v1, "$i$f$getParentData-OLwlOKw":I
    const/16 v2, 0x40

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 230
    .end local v1    # "$i$f$getParentData-OLwlOKw":I
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 235
    .local v0, "thisNode":Landroidx/compose/ui/Modifier$Node;
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 236
    .local v1, "data":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 1462
    .local v4, "$i$f$tailToHead$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1463
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v5, :cond_f

    .line 1464
    move-object v6, v5

    .local v6, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 237
    .local v7, "$i$a$-tailToHead$ui_release-NodeCoordinator$parentData$1":I
    const/4 v8, 0x0

    .line 1465
    .local v8, "$i$f$getParentData-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 237
    .end local v8    # "$i$f$getParentData-OLwlOKw":I
    nop

    .local v8, "kind$iv":I
    move-object v9, v6

    .local v9, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1466
    .local v10, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v8

    if-eqz v11, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 237
    .end local v8    # "kind$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_1
    if-eqz v8, :cond_e

    .line 238
    const/4 v8, 0x0

    .line 1467
    .local v8, "$i$f$getParentData-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 238
    .end local v8    # "$i$f$getParentData-OLwlOKw":I
    move-object v9, v6

    .local v8, "kind$iv":I
    .local v9, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1468
    .local v10, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v11, 0x0

    .line 1469
    .local v11, "stack$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv":Ljava/lang/Object;
    move-object v14, v9

    .line 1470
    :goto_2
    if-eqz v14, :cond_d

    .line 1471
    instance-of v15, v14, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v15, :cond_1

    .line 1472
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/node/ParentDataModifierNode;

    .local v15, "it":Landroidx/compose/ui/node/ParentDataModifierNode;
    const/16 v16, 0x0

    .line 239
    .local v16, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$parentData$1$1":I
    nop

    .line 1391
    move-object/from16 v17, v15

    .local v17, "$this$_get_parentData__u24lambda_u246_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/node/ParentDataModifierNode;
    const/16 v18, 0x0

    .line 239
    .local v18, "$i$a$-with-NodeCoordinator$parentData$1$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    iget-object v12, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v13, v17

    .end local v17    # "$this$_get_parentData__u24lambda_u246_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/node/ParentDataModifierNode;
    .local v13, "$this$_get_parentData__u24lambda_u246_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/node/ParentDataModifierNode;
    invoke-interface {v13, v2, v12}, Landroidx/compose/ui/node/ParentDataModifierNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v13    # "$this$_get_parentData__u24lambda_u246_u24lambda_u245_u24lambda_u244":Landroidx/compose/ui/node/ParentDataModifierNode;
    .end local v18    # "$i$a$-with-NodeCoordinator$parentData$1$1$1":I
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    nop

    .line 1472
    .end local v15    # "it":Landroidx/compose/ui/node/ParentDataModifierNode;
    .end local v16    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$parentData$1$1":I
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_9

    .line 1473
    :cond_1
    move-object v2, v14

    .local v2, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1474
    .local v12, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 1473
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v2, :cond_b

    instance-of v2, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_b

    .line 1475
    const/4 v2, 0x0

    .line 1476
    .local v2, "count$iv":I
    move-object v12, v14

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 1477
    .local v13, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 1478
    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v15, :cond_a

    .line 1479
    move-object/from16 v16, v15

    .local v16, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1480
    .local v17, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v18, v16

    .local v18, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1474
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v8

    if-eqz v21, :cond_3

    const/16 v18, 0x1

    goto :goto_5

    :cond_3
    const/16 v18, 0x0

    .line 1480
    .end local v18    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v18, :cond_9

    .line 1481
    add-int/lit8 v2, v2, 0x1

    .line 1482
    move-object/from16 v18, v0

    const/4 v0, 0x1

    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .local v18, "thisNode":Landroidx/compose/ui/Modifier$Node;
    if-ne v2, v0, :cond_4

    .line 1483
    move-object/from16 v14, v16

    move-object/from16 v23, v3

    move-object/from16 v3, v16

    const/4 v0, 0x0

    goto :goto_8

    .line 1487
    :cond_4
    if-nez v11, :cond_5

    const/4 v0, 0x0

    .line 1488
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1489
    move/from16 v20, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v20, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v21, 0x0

    .line 1490
    .local v21, "$i$f$MutableVector":I
    move/from16 v22, v2

    .end local v2    # "count$iv":I
    .local v22, "count$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v23, v3

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v23, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv":I
    .local v24, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1488
    .end local v21    # "$i$f$MutableVector":I
    .end local v24    # "capacity$iv$iv$iv":I
    goto :goto_6

    .line 1487
    .end local v20    # "$i$f$mutableVectorOf":I
    .end local v22    # "count$iv":I
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "count$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_5
    move/from16 v22, v2

    move-object/from16 v23, v3

    const/4 v0, 0x0

    .end local v2    # "count$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v22    # "count$iv":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move-object v2, v11

    :goto_6
    move-object v11, v2

    .line 1491
    move-object v2, v14

    .line 1492
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 1493
    if-eqz v11, :cond_6

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_6
    const/4 v3, 0x0

    move-object v14, v3

    .line 1496
    :cond_7
    if-eqz v11, :cond_8

    move-object/from16 v3, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v3, v16

    .line 1499
    .end local v2    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move/from16 v2, v22

    goto :goto_8

    .line 1480
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "count$iv":I
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "thisNode":Landroidx/compose/ui/Modifier$Node;
    .local v2, "count$iv":I
    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    move-object/from16 v3, v16

    const/4 v0, 0x0

    .line 1499
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_8
    nop

    .line 1479
    .end local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1500
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v0, v18

    move-object/from16 v3, v23

    goto :goto_4

    .line 1502
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    const/4 v0, 0x0

    .line 1503
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v13    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1505
    move-object/from16 v0, v18

    move-object/from16 v3, v23

    const/16 v2, 0x40

    goto/16 :goto_2

    .line 1473
    .end local v2    # "count$iv":I
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1508
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    :goto_9
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v0, v18

    move-object/from16 v3, v23

    const/16 v2, 0x40

    goto/16 :goto_2

    .line 1510
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_a

    .line 237
    .end local v8    # "kind$iv":I
    .end local v9    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v11    # "stack$iv":Ljava/lang/Object;
    .end local v14    # "node$iv":Ljava/lang/Object;
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move-object/from16 v18, v0

    move-object/from16 v23, v3

    .line 242
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_a
    nop

    .line 243
    nop

    .line 1464
    .end local v6    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$a$-tailToHead$ui_release-NodeCoordinator$parentData$1":I
    nop

    .line 1511
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v3, v23

    const/16 v2, 0x40

    goto/16 :goto_0

    .line 1513
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move-object/from16 v18, v0

    .line 244
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui_release":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 246
    .end local v1    # "data":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v18    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 255
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 257
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0

    .line 1391
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "$i$a$-check-NodeCoordinator$parentLayoutCoordinates$1":I
    nop

    .end local v0    # "$i$a$-check-NodeCoordinator$parentLayoutCoordinates$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition-nOcc-ac()J
    .locals 2

    .line 220
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-wide v0
.end method

.method public getProvidedAlignmentLines()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            ">;"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "set":Ljava/util/Set;
    move-object v1, p0

    .line 188
    .local v1, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eqz v1, :cond_4

    .line 189
    iget-object v2, v1, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 190
    .local v2, "alignmentLines":Ljava/util/Map;
    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v3, v5

    :cond_1
    if-eqz v3, :cond_3

    .line 191
    if-nez v0, :cond_2

    .line 192
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Set;

    .line 194
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_3
    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .end local v2    # "alignmentLines":Ljava/util/Map;
    goto :goto_0

    .line 198
    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method protected final getRectCache()Landroidx/compose/ui/geometry/MutableRect;
    .locals 3

    .line 269
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/geometry/MutableRect;
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$a$-also-NodeCoordinator$rectCache$1":I
    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .line 271
    nop

    .line 269
    .end local v1    # "it":Landroidx/compose/ui/geometry/MutableRect;
    .end local v2    # "$i$a$-also-NodeCoordinator$rectCache$1":I
    nop

    .line 271
    :cond_0
    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 121
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getTail()Landroidx/compose/ui/Modifier$Node;
.end method

.method public final getWrapped$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 223
    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return v0
.end method

.method public final head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;
    .locals 8
    .param p1, "type"    # I

    .line 116
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    .local v0, "includeTail$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v2, p1

    .local v2, "mask$iv":I
    const/4 v3, 0x0

    .line 1382
    .local v3, "$i$f$visitNodes":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 1383
    .local v4, "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1384
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v5, :cond_3

    .line 1385
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_4

    .line 1386
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    .local v6, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 116
    .local v7, "$i$a$-visitNodes-NodeCoordinator$head$1":I
    return-object v6

    .line 1387
    .end local v6    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$a$-visitNodes-NodeCoordinator$head$1":I
    :cond_2
    if-eq v5, v4, :cond_3

    .line 1388
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1

    .line 1390
    :cond_3
    nop

    .line 117
    .end local v0    # "includeTail$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "mask$iv":I
    .end local v3    # "$i$f$visitNodes":I
    .end local v4    # "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hitTest-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 16
    .param p1, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p2, "pointerPosition"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "isTouchEvent"    # Z
    .param p6, "isInLayer"    # Z

    .line 505
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 506
    .local v13, "head":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9, v10, v11}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 509
    if-eqz p5, :cond_3

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v9, v10, v11, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v0

    .line 510
    move v14, v0

    .line 512
    .local v14, "distanceFromEdge":F
    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {v12, v14, v2}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    nop

    .line 516
    nop

    .line 517
    nop

    .line 518
    nop

    .line 519
    nop

    .line 520
    const/4 v7, 0x0

    .line 521
    nop

    .line 515
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v14

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    move/from16 v15, p6

    .end local v14    # "distanceFromEdge":F
    goto/16 :goto_3

    .line 513
    .restart local v14    # "distanceFromEdge":F
    :cond_1
    move/from16 v15, p6

    goto/16 :goto_3

    .line 512
    :cond_2
    move/from16 v15, p6

    goto/16 :goto_3

    .line 509
    .end local v14    # "distanceFromEdge":F
    :cond_3
    move/from16 v15, p6

    goto/16 :goto_3

    .line 525
    :cond_4
    if-nez v13, :cond_5

    .line 526
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    move/from16 v15, p6

    goto/16 :goto_3

    .line 527
    :cond_5
    invoke-virtual {v9, v10, v11}, Landroidx/compose/ui/node/NodeCoordinator;->isPointerInBounds-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 529
    nop

    .line 530
    nop

    .line 531
    nop

    .line 532
    nop

    .line 533
    nop

    .line 534
    nop

    .line 529
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    move/from16 v15, p6

    goto/16 :goto_3

    .line 537
    :cond_6
    if-nez p5, :cond_7

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    .line 538
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v9, v10, v11, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v0

    .line 537
    :goto_1
    move v14, v0

    .line 541
    .restart local v14    # "distanceFromEdge":F
    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    if-eqz v1, :cond_9

    .line 542
    move/from16 v15, p6

    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 545
    nop

    .line 546
    nop

    .line 547
    nop

    .line 548
    nop

    .line 549
    nop

    .line 550
    nop

    .line 551
    nop

    .line 545
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, v14

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    goto :goto_3

    .line 541
    :cond_9
    move/from16 v15, p6

    .line 554
    :cond_a
    nop

    .line 555
    nop

    .line 556
    nop

    .line 557
    nop

    .line 558
    nop

    .line 559
    nop

    .line 560
    nop

    .line 554
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, v14

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    .line 564
    .end local v14    # "distanceFromEdge":F
    :goto_3
    return-void
.end method

.method public hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 13
    .param p1, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p2, "pointerPosition"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "isTouchEvent"    # Z
    .param p6, "isInLayer"    # Z

    .line 675
    move-object v0, p0

    iget-object v8, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 676
    .local v8, "wrapped":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v8, :cond_0

    .line 677
    move-wide v9, p2

    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide v11

    .line 678
    .local v11, "positionInWrapped":J
    nop

    .line 679
    nop

    .line 680
    nop

    .line 681
    nop

    .line 682
    nop

    .line 683
    nop

    .line 678
    move-object v1, v8

    move-object v2, p1

    move-wide v3, v11

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_0

    .line 676
    .end local v11    # "positionInWrapped":J
    :cond_0
    move-wide v9, p2

    .line 686
    :goto_0
    return-void
.end method

.method public invalidateLayer()V
    .locals 2

    .line 1019
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1020
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 1025
    :cond_1
    :goto_0
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    return v0
.end method

.method protected final isPointerInBounds-k-4lQ0M(J)Z
    .locals 4
    .param p1, "pointerPosition"    # J

    .line 1010
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 1011
    .local v0, "x":F
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    .line 1012
    .local v1, "y":F
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isTransparent()Z
    .locals 2

    .line 132
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 10
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "clipBounds"    # Z

    .line 802
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 807
    .local v0, "srcCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 808
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 810
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v8

    .line 811
    .local v8, "bounds":Landroidx/compose/ui/geometry/MutableRect;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 812
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 813
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 814
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 816
    move-object v2, v0

    move-object v9, v2

    .line 817
    .local v9, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v9, v1, :cond_1

    .line 818
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    move v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V

    .line 819
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    sget-object v2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    return-object v2

    .line 823
    :cond_0
    iget-object v2, v9, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v2

    goto :goto_0

    .line 826
    :cond_1
    invoke-direct {p0, v1, v8, p2}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 827
    invoke-static {v8}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    return-object v2

    .line 803
    .end local v0    # "srcCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v8    # "bounds":Landroidx/compose/ui/geometry/MutableRect;
    .end local v9    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_2
    const/4 v0, 0x0

    .line 804
    .local v0, "$i$a$-check-NodeCoordinator$localBoundingBoxOf$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutCoordinates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not attached!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    .end local v0    # "$i$a$-check-NodeCoordinator$localBoundingBoxOf$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1391
    :cond_3
    const/4 v0, 0x0

    .line 802
    .local v0, "$i$a$-check-NodeCoordinator$localBoundingBoxOf$1":I
    nop

    .end local v0    # "$i$a$-check-NodeCoordinator$localBoundingBoxOf$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 7
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "relativeToSource"    # J

    .line 742
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_0

    .line 743
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->unaryMinus-F1C5BW0(J)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->unaryMinus-F1C5BW0(J)J

    move-result-wide v0

    return-wide v0

    .line 746
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 747
    .local v0, "nodeCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 748
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 750
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    move-wide v2, p2

    .line 751
    .local v2, "position":J
    move-object v4, v0

    .line 752
    .local v4, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v4, v1, :cond_1

    .line 753
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-MK-Hz9U(J)J

    move-result-wide v2

    .line 754
    iget-object v5, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_0

    .line 757
    :cond_1
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide v5

    return-wide v5
.end method

.method public localToRoot-MK-Hz9U(J)J
    .locals 3
    .param p1, "relativeToLocal"    # J

    .line 854
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 856
    move-object v0, p0

    .line 857
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    move-wide v1, p1

    .line 858
    .local v1, "position":J
    :goto_0
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-MK-Hz9U(J)J

    move-result-wide v1

    .line 860
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    .line 862
    :cond_0
    return-wide v1

    .line 1391
    .end local v0    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "position":J
    :cond_1
    const/4 v0, 0x0

    .line 854
    .local v0, "$i$a$-check-NodeCoordinator$localToRoot$1":I
    nop

    .end local v0    # "$i$a$-check-NodeCoordinator$localToRoot$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localToWindow-MK-Hz9U(J)J
    .locals 5
    .param p1, "relativeToLocal"    # J

    .line 730
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    .line 731
    .local v0, "positionInRoot":J
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    .line 732
    .local v2, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/node/Owner;->calculatePositionInWindow-MK-Hz9U(J)J

    move-result-wide v3

    return-wide v3
.end method

.method public final onCoordinatesUsed$ui_release()V
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onCoordinatesUsed()V

    .line 251
    return-void
.end method

.method public onLayoutModifierNodeChanged()V
    .locals 1

    .line 1032
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 1033
    :cond_0
    return-void
.end method

.method public final onLayoutNodeAttach()V
    .locals 2

    .line 910
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    .line 912
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 913
    :cond_0
    return-void
.end method

.method protected onMeasureResultChanged(II)V
    .locals 30
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 207
    .local v1, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v1, :cond_0

    .line 208
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 212
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasuredSize-ozmzZPI(J)V

    .line 213
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    .line 214
    const/4 v3, 0x0

    .line 1392
    .local v3, "$i$f$getDraw-OLwlOKw":I
    const/4 v4, 0x4

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 214
    .end local v3    # "$i$f$getDraw-OLwlOKw":I
    move-object/from16 v4, p0

    .local v3, "type$iv":I
    .local v4, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v5, 0x0

    .line 1393
    .local v5, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v6

    .local v6, "includeTail$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v9, 0x0

    .line 1394
    .local v9, "$i$f$visitNodes":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-nez v10, :cond_3

    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    goto/16 :goto_c

    .line 1395
    .local v10, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3
    :goto_1
    invoke-static {v8, v6}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1396
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v11, :cond_13

    .line 1397
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_12

    .line 1398
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_11

    move-object v12, v11

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1406
    .local v13, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move-object v14, v12

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1407
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 1408
    .local v16, "stack$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    .line 1409
    .end local v17    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v2, :cond_10

    .line 1410
    instance-of v0, v2, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v0, :cond_4

    .line 1411
    move-object v0, v2

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/DrawModifierNode;
    const/16 v18, 0x0

    .line 215
    .local v18, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasureResultChanged$1":I
    invoke-interface {v0}, Landroidx/compose/ui/node/DrawModifierNode;->onMeasureResultChanged()V

    .line 216
    nop

    .line 1411
    .end local v0    # "it":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v18    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasureResultChanged$1":I
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1412
    :cond_4
    move-object v0, v2

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1413
    .local v18, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, v3

    move-object/from16 v20, v0

    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v19, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    .line 1412
    .end local v18    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v18, :cond_e

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_e

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, "count$iv$iv":I
    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1416
    .local v20, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1417
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v21, :cond_d

    .line 1418
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1419
    .local v23, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v24, v22

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1413
    .local v25, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v3

    if-eqz v26, :cond_6

    const/16 v24, 0x1

    goto :goto_6

    :cond_6
    const/16 v24, 0x0

    .line 1419
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_6
    if-eqz v24, :cond_c

    .line 1420
    add-int/lit8 v0, v0, 0x1

    .line 1421
    move-object/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v24, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-ne v0, v1, :cond_7

    .line 1422
    move-object/from16 v2, v22

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v3, v22

    const/4 v4, 0x0

    goto :goto_9

    .line 1426
    :cond_7
    if-nez v16, :cond_8

    const/4 v1, 0x0

    .line 1427
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1428
    move/from16 v25, v0

    .end local v0    # "count$iv$iv":I
    .local v25, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1429
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v3

    .end local v3    # "type$iv":I
    .local v28, "type$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v29, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1427
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v26    # "$i$f$MutableVector":I
    goto :goto_7

    .line 1426
    .end local v25    # "count$iv$iv":I
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v0, "count$iv$iv":I
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_8
    move/from16 v25, v0

    move/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "count$iv$iv":I
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move-object/from16 v1, v16

    :goto_7
    move-object v0, v1

    .line 1430
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object v1, v2

    .line 1431
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_a

    .line 1432
    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_9
    const/4 v2, 0x0

    .line 1435
    :cond_a
    if-eqz v0, :cond_b

    move-object/from16 v3, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v3, v22

    .line 1438
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v16, v0

    move/from16 v0, v25

    goto :goto_9

    .line 1419
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v25    # "count$iv$iv":I
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v0, "count$iv$iv":I
    .local v1, "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v3, "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v3, v22

    const/4 v4, 0x0

    .line 1438
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_9
    nop

    .line 1418
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1439
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v1, v24

    move/from16 v3, v28

    move-object/from16 v4, v29

    goto :goto_5

    .line 1441
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v3, "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_d
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .line 1442
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v3, v28

    move-object/from16 v4, v29

    goto/16 :goto_3

    .line 1412
    .end local v0    # "count$iv$iv":I
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_e
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .line 1447
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_f
    :goto_a
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v3, v28

    move-object/from16 v4, v29

    goto/16 :goto_3

    .line 1449
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_10
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .line 1450
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    nop

    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_b

    .line 1398
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_11
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    move v4, v2

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_b
    nop

    .line 1451
    if-eq v11, v10, :cond_14

    .line 1452
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move v2, v4

    move-object/from16 v1, v24

    move/from16 v3, v28

    move-object/from16 v4, v29

    goto/16 :goto_2

    .line 1397
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_12
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    goto :goto_c

    .line 1396
    .end local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v3    # "type$iv":I
    .restart local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_13
    move-object/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v29, v4

    .line 1454
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "type$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v28    # "type$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_14
    nop

    .line 1460
    .end local v6    # "includeTail$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes":I
    .end local v10    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    nop

    .line 217
    .end local v5    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v28    # "type$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 218
    :cond_15
    return-void
.end method

.method public final onMeasured()V
    .locals 35

    .line 291
    const/4 v0, 0x0

    .line 1514
    .local v0, "$i$f$getLayoutAware-OLwlOKw":I
    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 291
    .end local v0    # "$i$f$getLayoutAware-OLwlOKw":I
    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->hasNode-H91voCI(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v4, 0x0

    .line 1515
    .local v4, "$i$f$withoutReadObservation":I
    nop

    .line 1516
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    .line 1517
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1518
    move-object v6, v5

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1519
    .local v7, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v8, v0

    .line 1520
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1521
    const/4 v0, 0x0

    .line 293
    .local v0, "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    const/4 v9, 0x0

    .line 1522
    .local v9, "$i$f$getLayoutAware-OLwlOKw":I
    :try_start_1
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 293
    .end local v9    # "$i$f$getLayoutAware-OLwlOKw":I
    move-object/from16 v9, p0

    .local v1, "type$iv":I
    .local v9, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v10, 0x0

    .line 1523
    .local v10, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v11, "includeTail$iv$iv":Z
    move v12, v1

    .local v12, "mask$iv$iv":I
    move-object v13, v9

    .local v13, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v14, 0x0

    .line 1524
    .local v14, "$i$f$visitNodes":I
    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1591
    .end local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v1    # "type$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v11    # "includeTail$iv$iv":Z
    .end local v12    # "mask$iv$iv":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v14    # "$i$f$visitNodes":I
    :catchall_0
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v33, v4

    goto/16 :goto_c

    .line 1524
    .restart local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v1    # "type$iv":I
    .restart local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v11    # "includeTail$iv$iv":Z
    .restart local v12    # "mask$iv$iv":I
    .restart local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v14    # "$i$f$visitNodes":I
    :cond_0
    :try_start_3
    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    if-nez v15, :cond_1

    move/from16 v17, v0

    move/from16 v32, v1

    move-object/from16 v22, v3

    move/from16 v33, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    goto/16 :goto_b

    .line 1525
    .local v15, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v13, v11}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    .line 1526
    .local v0, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v17, "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    :goto_1
    if-eqz v0, :cond_11

    .line 1527
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v12

    if-eqz v16, :cond_10

    .line 1528
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    and-int v16, v16, v12

    if-eqz v16, :cond_f

    move-object/from16 v16, v0

    .local v16, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1536
    .local v18, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move-object/from16 v19, v16

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1537
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 1538
    .local v21, "stack$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v2, v22

    .line 1539
    .end local v22    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_e

    .line 1540
    move-object/from16 v22, v3

    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v22, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    :try_start_4
    instance-of v3, v2, Landroidx/compose/ui/node/LayoutAwareModifierNode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_2

    .line 1541
    :try_start_5
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .local v3, "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    const/16 v23, 0x0

    .line 294
    .local v23, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasured$1$1":I
    move-object/from16 v24, v9

    move/from16 v25, v10

    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .local v24, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v25, "$i$f$visitNodes-aLcG6gQ":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v9

    invoke-interface {v3, v9, v10}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onRemeasured-ozmzZPI(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 295
    nop

    .line 1541
    .end local v3    # "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    .end local v23    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasured$1$1":I
    move/from16 v32, v1

    move/from16 v33, v4

    goto/16 :goto_9

    .line 1591
    .end local v0    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v11    # "includeTail$iv$iv":Z
    .end local v12    # "mask$iv$iv":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v14    # "$i$f$visitNodes":I
    .end local v15    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v18    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    :catchall_1
    move-exception v0

    move/from16 v33, v4

    goto/16 :goto_c

    .line 1542
    .restart local v0    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v11    # "includeTail$iv$iv":Z
    .restart local v12    # "mask$iv$iv":I
    .restart local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v14    # "$i$f$visitNodes":I
    .restart local v15    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v18    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    :cond_2
    move-object/from16 v24, v9

    move/from16 v25, v10

    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "$i$f$visitNodes-aLcG6gQ":I
    move-object v3, v2

    .local v3, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1543
    .local v9, "$i$f$isKind-H91voCI$ui_release":I
    :try_start_6
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v1

    move-object/from16 v23, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x1

    if-eqz v10, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 1542
    .end local v9    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v9, :cond_c

    instance-of v9, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_c

    .line 1544
    const/4 v9, 0x0

    .line 1545
    .local v9, "count$iv$iv":I
    move-object v10, v2

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 1546
    .local v23, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v26

    .line 1547
    .local v26, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v26, :cond_b

    .line 1548
    move-object/from16 v27, v26

    .local v27, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1549
    .local v28, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v29, v27

    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 1543
    .local v30, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v31

    and-int v31, v31, v1

    if-eqz v31, :cond_4

    move/from16 v29, v3

    goto :goto_5

    :cond_4
    const/16 v29, 0x0

    .line 1549
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v29, :cond_a

    .line 1550
    add-int/lit8 v9, v9, 0x1

    .line 1551
    if-ne v9, v3, :cond_5

    .line 1552
    move-object/from16 v2, v27

    move/from16 v32, v1

    move/from16 v33, v4

    move-object/from16 v3, v27

    goto :goto_8

    .line 1556
    :cond_5
    if-nez v21, :cond_6

    const/16 v29, 0x0

    .line 1557
    .local v29, "$i$f$mutableVectorOf":I
    nop

    .line 1558
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv$iv$iv":I
    const/16 v31, 0x0

    .line 1559
    .local v31, "$i$f$MutableVector":I
    move/from16 v32, v1

    .end local v1    # "type$iv":I
    .local v32, "type$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v33, v4

    .end local v4    # "$i$f$withoutReadObservation":I
    .local v33, "$i$f$withoutReadObservation":I
    :try_start_7
    new-array v4, v3, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v34, v3

    const/4 v3, 0x0

    .end local v3    # "capacity$iv$iv$iv$iv":I
    .local v34, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v4, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1557
    .end local v31    # "$i$f$MutableVector":I
    .end local v34    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 1556
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v4    # "$i$f$withoutReadObservation":I
    :cond_6
    move/from16 v32, v1

    move/from16 v33, v4

    const/4 v3, 0x0

    .end local v1    # "type$iv":I
    .end local v4    # "$i$f$withoutReadObservation":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    move-object/from16 v1, v21

    :goto_6
    nop

    .line 1560
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v4, v2

    .line 1561
    .local v4, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v4, :cond_8

    .line 1562
    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1563
    :cond_7
    const/4 v2, 0x0

    .line 1565
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v3, v27

    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v3, v27

    .line 1568
    .end local v4    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v21, v1

    goto :goto_8

    .line 1549
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .local v1, "type$iv":I
    .local v4, "$i$f$withoutReadObservation":I
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v32, v1

    move/from16 v33, v4

    move-object/from16 v3, v27

    .line 1568
    .end local v1    # "type$iv":I
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v27    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    :goto_8
    nop

    .line 1548
    .end local v3    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1569
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v26, v1

    move/from16 v1, v32

    move/from16 v4, v33

    const/4 v3, 0x1

    goto :goto_4

    .line 1571
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v4    # "$i$f$withoutReadObservation":I
    :cond_b
    move/from16 v32, v1

    move/from16 v33, v4

    .line 1572
    .end local v1    # "type$iv":I
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v26    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_d

    .line 1574
    move-object/from16 v3, v22

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v1, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1542
    .end local v9    # "count$iv$iv":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v4    # "$i$f$withoutReadObservation":I
    :cond_c
    move/from16 v32, v1

    move/from16 v33, v4

    .line 1577
    .end local v1    # "type$iv":I
    .end local v4    # "$i$f$withoutReadObservation":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    :cond_d
    :goto_9
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v3, v22

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v1, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1591
    .end local v0    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v11    # "includeTail$iv$iv":Z
    .end local v12    # "mask$iv$iv":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v14    # "$i$f$visitNodes":I
    .end local v15    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v18    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v4    # "$i$f$withoutReadObservation":I
    :catchall_2
    move-exception v0

    move/from16 v33, v4

    .end local v4    # "$i$f$withoutReadObservation":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    goto/16 :goto_c

    .line 1579
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v0    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .local v9, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v10, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v11    # "includeTail$iv$iv":Z
    .restart local v12    # "mask$iv$iv":I
    .restart local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v14    # "$i$f$visitNodes":I
    .restart local v15    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v18    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    :cond_e
    move/from16 v32, v1

    move-object/from16 v22, v3

    move/from16 v33, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 1580
    .end local v1    # "type$iv":I
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    nop

    .end local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_a

    .line 1528
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .restart local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v10    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_f
    move/from16 v32, v1

    move-object/from16 v22, v3

    move/from16 v33, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    :goto_a
    nop

    .line 1581
    if-eq v0, v15, :cond_12

    .line 1582
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v1, v32

    move/from16 v4, v33

    goto/16 :goto_1

    .line 1527
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .restart local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v10    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_10
    move/from16 v32, v1

    move-object/from16 v22, v3

    move/from16 v33, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    goto :goto_b

    .line 1526
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v32    # "type$iv":I
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v1    # "type$iv":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    .restart local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v10    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_11
    move/from16 v32, v1

    move-object/from16 v22, v3

    move/from16 v33, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 1584
    .end local v1    # "type$iv":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v10    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v32    # "type$iv":I
    .restart local v33    # "$i$f$withoutReadObservation":I
    :cond_12
    nop

    .line 1590
    .end local v0    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "includeTail$iv$iv":Z
    .end local v12    # "mask$iv$iv":I
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v14    # "$i$f$visitNodes":I
    .end local v15    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    nop

    .line 296
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v32    # "type$iv":I
    nop

    .end local v17    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1521
    nop

    .line 1591
    :try_start_8
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1521
    nop

    .line 1592
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1518
    goto :goto_e

    .line 1591
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_3
    move-exception v0

    goto :goto_c

    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    :catchall_4
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v33, v4

    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v33    # "$i$f$withoutReadObservation":I
    :goto_c
    :try_start_9
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v33    # "$i$f$withoutReadObservation":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1592
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v33    # "$i$f$withoutReadObservation":I
    :catchall_5
    move-exception v0

    goto :goto_d

    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v33    # "$i$f$withoutReadObservation":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v4    # "$i$f$withoutReadObservation":I
    :catchall_6
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v33, v4

    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v33    # "$i$f$withoutReadObservation":I
    :goto_d
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 298
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v22    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v33    # "$i$f$withoutReadObservation":I
    :cond_13
    :goto_e
    return-void
.end method

.method public final onPlaced()V
    .locals 28

    .line 373
    const/4 v0, 0x0

    .line 1595
    .local v0, "$i$f$getLayoutAware-OLwlOKw":I
    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 373
    .end local v0    # "$i$f$getLayoutAware-OLwlOKw":I
    nop

    .local v0, "type$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v2, 0x0

    .line 1596
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v3

    .local v3, "includeTail$iv$iv":Z
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v5, v0

    .local v5, "mask$iv$iv":I
    const/4 v6, 0x0

    .line 1597
    .local v6, "$i$f$visitNodes":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-nez v7, :cond_1

    move/from16 v25, v0

    move-object/from16 v17, v1

    move/from16 v26, v2

    goto/16 :goto_a

    .line 1598
    .local v7, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v4, v3}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1599
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v8, :cond_11

    .line 1600
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_10

    .line 1601
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_f

    move-object v9, v8

    .local v9, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1609
    .local v10, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move-object v11, v9

    .local v11, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1610
    .local v12, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v13, 0x0

    .line 1611
    .local v13, "stack$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv$iv":Ljava/lang/Object;
    move-object v14, v11

    .line 1612
    :goto_2
    if-eqz v14, :cond_e

    .line 1613
    instance-of v15, v14, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v15, :cond_2

    .line 1614
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .local v15, "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    const/16 v16, 0x0

    .line 374
    .local v16, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onPlaced$1":I
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {v15, v1}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 375
    nop

    .line 1614
    .end local v15    # "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    .end local v16    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onPlaced$1":I
    move/from16 v25, v0

    move/from16 v26, v2

    goto/16 :goto_8

    .line 1615
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_2
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move-object v1, v14

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1616
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, v0

    move-object/from16 v18, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x1

    if-eqz v16, :cond_3

    move v15, v1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 1615
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v15, :cond_c

    instance-of v15, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_c

    .line 1617
    const/4 v15, 0x0

    .line 1618
    .local v15, "count$iv$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/node/DelegatingNode;

    .local v16, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 1619
    .local v18, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1620
    .local v19, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v19, :cond_b

    .line 1621
    move-object/from16 v20, v19

    .local v20, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1622
    .local v21, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v22, v20

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1616
    .local v23, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v24

    and-int v24, v24, v0

    if-eqz v24, :cond_4

    move/from16 v22, v1

    goto :goto_5

    :cond_4
    const/16 v22, 0x0

    .line 1622
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v22, :cond_a

    .line 1623
    add-int/lit8 v15, v15, 0x1

    .line 1624
    if-ne v15, v1, :cond_5

    .line 1625
    move-object/from16 v14, v20

    move/from16 v25, v0

    move/from16 v26, v2

    move-object/from16 v2, v20

    const/4 v1, 0x0

    goto :goto_7

    .line 1629
    :cond_5
    if-nez v13, :cond_6

    const/16 v22, 0x0

    .line 1630
    .local v22, "$i$f$mutableVectorOf":I
    nop

    .line 1631
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v24, 0x0

    .line 1632
    .local v24, "$i$f$MutableVector":I
    move/from16 v25, v0

    .end local v0    # "type$iv":I
    .local v25, "type$iv":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v26, v2

    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .local v26, "$i$f$visitNodes-aLcG6gQ":I
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v27, "capacity$iv$iv$iv$iv":I
    invoke-direct {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1630
    .end local v24    # "$i$f$MutableVector":I
    .end local v27    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 1629
    .end local v22    # "$i$f$mutableVectorOf":I
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_6
    move/from16 v25, v0

    move/from16 v26, v2

    const/4 v1, 0x0

    .end local v0    # "type$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    move-object v0, v13

    :goto_6
    move-object v13, v0

    .line 1633
    move-object v0, v14

    .line 1634
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 1635
    if-eqz v13, :cond_7

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_7
    const/4 v2, 0x0

    move-object v14, v2

    .line 1638
    :cond_8
    if-eqz v13, :cond_9

    move-object/from16 v2, v20

    .end local v20    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v20

    .end local v20    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_7

    .line 1622
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .local v0, "type$iv":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v20    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v25, v0

    move/from16 v26, v2

    move-object/from16 v2, v20

    const/4 v1, 0x0

    .line 1641
    .end local v0    # "type$iv":I
    .end local v20    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_7
    nop

    .line 1621
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1642
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move/from16 v0, v25

    move/from16 v2, v26

    const/4 v1, 0x1

    goto :goto_4

    .line 1644
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    :cond_b
    move/from16 v25, v0

    move/from16 v26, v2

    .line 1645
    .end local v0    # "type$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v16    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v19    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    const/4 v0, 0x1

    if-ne v15, v0, :cond_d

    .line 1647
    move-object/from16 v1, v17

    move/from16 v0, v25

    move/from16 v2, v26

    goto/16 :goto_2

    .line 1615
    .end local v15    # "count$iv$iv":I
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_c
    move/from16 v25, v0

    move/from16 v26, v2

    .line 1650
    .end local v0    # "type$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_d
    :goto_8
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v1, v17

    move/from16 v0, v25

    move/from16 v2, v26

    goto/16 :goto_2

    .line 1652
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_e
    move/from16 v25, v0

    move-object/from16 v17, v1

    move/from16 v26, v2

    .line 1653
    .end local v0    # "type$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v11    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v13    # "stack$iv$iv":Ljava/lang/Object;
    .end local v14    # "node$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    nop

    .end local v9    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_9

    .line 1601
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_f
    move/from16 v25, v0

    move-object/from16 v17, v1

    move/from16 v26, v2

    .end local v0    # "type$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_9
    nop

    .line 1654
    if-eq v8, v7, :cond_12

    .line 1655
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v1, v17

    move/from16 v0, v25

    move/from16 v2, v26

    goto/16 :goto_1

    .line 1600
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_10
    move/from16 v25, v0

    move-object/from16 v17, v1

    move/from16 v26, v2

    .end local v0    # "type$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    goto :goto_a

    .line 1599
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "type$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_11
    move/from16 v25, v0

    move-object/from16 v17, v1

    move/from16 v26, v2

    .line 1657
    .end local v0    # "type$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "type$iv":I
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_12
    nop

    .line 1663
    .end local v3    # "includeTail$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$i$f$visitNodes":I
    .end local v7    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    nop

    .line 376
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "type$iv":I
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    return-void
.end method

.method public final onRelease()V
    .locals 3

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    .line 927
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 931
    :cond_0
    return-void
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    .line 369
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 370
    :cond_0
    return-void
.end method

.method protected final performingMeasure-K40F9xA(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;
    .locals 2
    .param p1, "constraints"    # J
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/ui/layout/Placeable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    .local v0, "$i$f$performingMeasure-K40F9xA":I
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 287
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    return-object v1
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "position"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 310
    return-void
.end method

.method public final placeSelfApparentToRealOffset-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "position"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getApparentToRealOffset-nOcc-ac()J

    move-result-wide v0

    .local v0, "other$iv":J
    const/4 v2, 0x0

    .line 1593
    .local v2, "$i$f$plus-qkQi6aY":I
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 339
    .end local v0    # "other$iv":J
    .end local v2    # "$i$f$plus-qkQi6aY":I
    invoke-direct {p0, v0, v1, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 340
    return-void
.end method

.method public final rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 10
    .param p1, "bounds"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p2, "clipBounds"    # Z
    .param p3, "clipToMinimumTouchTargetSize"    # Z

    .line 943
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 944
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_3

    .line 945
    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v1, :cond_2

    .line 946
    if-eqz p3, :cond_0

    .line 947
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v1

    .line 948
    .local v1, "minTouch":J
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 949
    .local v3, "horz":F
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v5

    div-float/2addr v5, v4

    .line 950
    .local v5, "vert":F
    nop

    .line 951
    neg-float v4, v3

    neg-float v6, v5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 950
    invoke-virtual {p1, v4, v6, v7, v8}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .end local v1    # "minTouch":J
    .end local v3    # "horz":F
    .end local v5    # "vert":F
    goto :goto_0

    .line 953
    :cond_0
    if-eqz p2, :cond_1

    .line 954
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 956
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 957
    return-void

    .line 960
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 963
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    .line 964
    .local v1, "x":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v2

    int-to-float v3, v1

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 965
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v2

    int-to-float v3, v1

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 967
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    .line 968
    .local v2, "y":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v3

    int-to-float v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 969
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v3

    int-to-float v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 970
    return-void
.end method

.method public replace$ui_release()V
    .locals 4

    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    iget v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 144
    return-void
.end method

.method protected abstract setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V
.end method

.method public setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 4
    .param p1, "value"    # Landroidx/compose/ui/layout/MeasureResult;

    .line 156
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 157
    .local v0, "old":Landroidx/compose/ui/layout/MeasureResult;
    if-eq p1, v0, :cond_6

    .line 158
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 159
    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 160
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->onMeasureResultChanged(II)V

    .line 164
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 165
    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    .line 169
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 170
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    move-object v2, v1

    .line 1391
    .local v2, "it":Ljava/util/Map;
    const/4 v3, 0x0

    .line 170
    .local v3, "$i$a$-also-NodeCoordinator$measureResult$oldLines$1":I
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    .line 169
    .end local v2    # "it":Ljava/util/Map;
    .end local v3    # "$i$a$-also-NodeCoordinator$measureResult$oldLines$1":I
    :cond_5
    nop

    .line 171
    .local v1, "oldLines":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 172
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 175
    .end local v1    # "oldLines":Ljava/util/Map;
    :cond_6
    return-void
.end method

.method protected setPosition--gyyYBs(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 221
    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-void
.end method

.method public final setWrapped$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 64
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 65
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method protected final setZIndex(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 224
    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return-void
.end method

.method public final shouldSharePointerInputWithSiblings()Z
    .locals 29

    .line 1073
    const/4 v0, 0x0

    .line 1676
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1073
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 1075
    .local v0, "start":Landroidx/compose/ui/Modifier$Node;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1076
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v5, 0x0

    .line 1677
    .local v5, "$i$f$getPointerInput-OLwlOKw":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1076
    .end local v5    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v1, "type$iv":I
    .local v4, "$this$visitLocalDescendants_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1678
    .local v5, "$i$f$visitLocalDescendants-6rFNWt0":I
    move v6, v1

    .local v6, "mask$iv$iv":I
    move-object v7, v4

    .local v7, "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v8, 0x0

    .line 1679
    .local v8, "$i$f$visitLocalDescendants":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1681
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 1682
    .local v9, "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_11

    .line 1683
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1684
    .local v10, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_10

    .line 1685
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v6

    if-eqz v11, :cond_f

    .line 1686
    move-object v11, v10

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1687
    .local v12, "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitLocalDescendants$2$iv":I
    move-object v13, v11

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1688
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1689
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v3, v16

    .line 1690
    .end local v16    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_e

    .line 1691
    move-object/from16 v17, v0

    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .local v17, "start":Landroidx/compose/ui/Modifier$Node;
    instance-of v0, v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1692
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/16 v18, 0x0

    .line 1077
    .local v18, "$i$a$-visitLocalDescendants-6rFNWt0-NodeCoordinator$shouldSharePointerInputWithSiblings$1":I
    invoke-interface {v0}, Landroidx/compose/ui/node/PointerInputModifierNode;->sharePointerInputWithSiblings()Z

    move-result v19

    if-eqz v19, :cond_1

    return v2

    .line 1078
    :cond_1
    nop

    .line 1692
    .end local v0    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v18    # "$i$a$-visitLocalDescendants-6rFNWt0-NodeCoordinator$shouldSharePointerInputWithSiblings$1":I
    move/from16 v27, v1

    goto/16 :goto_8

    .line 1693
    :cond_2
    move-object v0, v3

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1694
    .local v18, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v19

    and-int v19, v19, v1

    if-eqz v19, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1693
    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_2
    if-eqz v0, :cond_c

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_c

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, "count$iv$iv":I
    move-object/from16 v18, v3

    check-cast v18, Landroidx/compose/ui/node/DelegatingNode;

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 1697
    .local v19, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1698
    .local v20, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v20, :cond_b

    .line 1699
    move-object/from16 v21, v20

    .local v21, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1700
    .local v22, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move-object/from16 v23, v21

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1694
    .local v24, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v25

    and-int v25, v25, v1

    if-eqz v25, :cond_4

    move/from16 v23, v2

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    .line 1700
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_4
    if-eqz v23, :cond_a

    .line 1701
    add-int/lit8 v0, v0, 0x1

    .line 1702
    if-ne v0, v2, :cond_5

    .line 1703
    move-object/from16 v3, v21

    move/from16 v27, v1

    move-object/from16 v1, v21

    goto :goto_7

    .line 1707
    :cond_5
    if-nez v15, :cond_6

    const/16 v23, 0x0

    .line 1708
    .local v23, "$i$f$mutableVectorOf":I
    nop

    .line 1709
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1710
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v0

    .end local v0    # "count$iv$iv":I
    .local v26, "count$iv$iv":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v1

    .end local v1    # "type$iv":I
    .local v27, "type$iv":I
    new-array v1, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1708
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 1707
    .end local v23    # "$i$f$mutableVectorOf":I
    .end local v26    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .restart local v0    # "count$iv$iv":I
    .restart local v1    # "type$iv":I
    :cond_6
    move/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "count$iv$iv":I
    .end local v1    # "type$iv":I
    .restart local v26    # "count$iv$iv":I
    .restart local v27    # "type$iv":I
    move-object v0, v15

    :goto_5
    move-object v15, v0

    .line 1711
    move-object v0, v3

    .line 1712
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 1713
    if-eqz v15, :cond_7

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_7
    const/4 v1, 0x0

    move-object v3, v1

    .line 1716
    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v1, v21

    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v1, v21

    .line 1719
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move/from16 v0, v26

    goto :goto_7

    .line 1700
    .end local v26    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "type$iv":I
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v27, v1

    move-object/from16 v1, v21

    .line 1719
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    :goto_7
    nop

    .line 1699
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1720
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move/from16 v1, v27

    const/4 v2, 0x1

    goto :goto_3

    .line 1722
    .end local v27    # "type$iv":I
    .local v1, "type$iv":I
    :cond_b
    move/from16 v27, v1

    .line 1723
    .end local v1    # "type$iv":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v20    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1725
    move-object/from16 v2, p0

    move-object/from16 v0, v17

    move/from16 v1, v27

    goto/16 :goto_1

    .line 1693
    .end local v0    # "count$iv$iv":I
    .end local v27    # "type$iv":I
    .restart local v1    # "type$iv":I
    :cond_c
    move/from16 v27, v1

    .line 1728
    .end local v1    # "type$iv":I
    .restart local v27    # "type$iv":I
    :cond_d
    :goto_8
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v0, v17

    move/from16 v1, v27

    goto/16 :goto_1

    .line 1730
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .local v0, "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    :cond_e
    move-object/from16 v17, v0

    move/from16 v27, v1

    .line 1731
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    nop

    .line 1686
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitLocalDescendants$2$iv":I
    goto :goto_9

    .line 1685
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    :cond_f
    move-object/from16 v17, v0

    move/from16 v27, v1

    .line 1732
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v2, p0

    move-object/from16 v0, v17

    move/from16 v1, v27

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1734
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    :cond_10
    move-object/from16 v17, v0

    move/from16 v27, v1

    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    goto :goto_a

    .line 1682
    .end local v10    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    :cond_11
    move-object/from16 v17, v0

    move/from16 v27, v1

    .line 1731
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "$i$f$visitLocalDescendants":I
    .end local v9    # "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    :goto_a
    goto :goto_b

    .line 1680
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "type$iv":I
    .restart local v6    # "mask$iv$iv":I
    .restart local v7    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v8    # "$i$f$visitLocalDescendants":I
    :cond_12
    move-object/from16 v17, v0

    move/from16 v27, v1

    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "type$iv":I
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    const/4 v0, 0x0

    .line 1679
    .local v0, "$i$a$-check-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    nop

    .end local v0    # "$i$a$-check-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitLocalDescendants called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    .end local v4    # "$this$visitLocalDescendants_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "$i$f$visitLocalDescendants":I
    .end local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "type$iv":I
    .local v0, "start":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v17, v0

    .line 1081
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "start":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public toParentPosition-MK-Hz9U(J)J
    .locals 5
    .param p1, "position"    # J

    .line 878
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 879
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    .line 880
    .local v1, "targetPosition":J
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v3

    return-wide v3
.end method

.method public final touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 7

    .line 692
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 696
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 698
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v1

    .line 699
    .local v1, "bounds":Landroidx/compose/ui/geometry/MutableRect;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v2

    .line 700
    .local v2, "padding":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 701
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 702
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 703
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 705
    move-object v4, p0

    .line 706
    .local v4, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v4, v0, :cond_2

    .line 707
    nop

    .line 708
    nop

    .line 709
    nop

    .line 710
    nop

    .line 707
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 712
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    sget-object v5, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    return-object v5

    .line 716
    :cond_1
    iget-object v5, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_0

    .line 718
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    return-object v5
.end method

.method public transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 2
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "matrix"    # [F

    .line 761
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 762
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 763
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 765
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-static {p2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 767
    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 769
    invoke-direct {p0, v1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 770
    return-void
.end method

.method public final updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V
    .locals 10
    .param p1, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .param p2, "forceUpdateLayerParameters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 399
    .local v0, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-ne v3, p1, :cond_1

    .line 400
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 399
    :goto_1
    nop

    .line 401
    .local v3, "updateParameters":Z
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 402
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 403
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 405
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 406
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez v4, :cond_2

    .line 407
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    .line 408
    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 409
    iget-object v7, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 407
    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/node/Owner;->createLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v4

    .line 410
    move-object v6, v4

    .local v6, "$this$updateLayerBlock_u24lambda_u2413":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v7, 0x0

    .line 411
    .local v7, "$i$a$-apply-NodeCoordinator$updateLayerBlock$1":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 412
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    .line 413
    nop

    .line 410
    .end local v6    # "$this$updateLayerBlock_u24lambda_u2413":Landroidx/compose/ui/node/OwnedLayer;
    .end local v7    # "$i$a$-apply-NodeCoordinator$updateLayerBlock$1":I
    nop

    .line 407
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 414
    invoke-static {p0, v1, v2, v5}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    .line 415
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui_release(Z)V

    .line 416
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 417
    :cond_2
    if-eqz v3, :cond_6

    .line 418
    invoke-static {p0, v1, v2, v5}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    goto :goto_2

    .line 421
    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v4, :cond_5

    .local v4, "it":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v6, 0x0

    .line 422
    .local v6, "$i$a$-let-NodeCoordinator$updateLayerBlock$2":I
    invoke-interface {v4}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    .line 423
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui_release(Z)V

    .line 424
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 425
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 428
    :cond_4
    nop

    .line 421
    .end local v4    # "it":Landroidx/compose/ui/node/OwnedLayer;
    .end local v6    # "$i$a$-let-NodeCoordinator$updateLayerBlock$2":I
    nop

    .line 429
    :cond_5
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 430
    iput-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    .line 432
    :cond_6
    :goto_2
    return-void
.end method

.method public final visitNodes(IZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "mask"    # I
    .param p2, "includeTail"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$visitNodes":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 96
    .local v1, "stopNode":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 97
    .local v2, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_2

    return-void

    .line 99
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_3
    if-eq v2, v1, :cond_4

    .line 101
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 103
    :cond_4
    return-void
.end method

.method public final synthetic visitNodes-aLcG6gQ(ILkotlin/jvm/functions/Function1;)V
    .locals 26
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

    .line 106
    .local v0, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    .local v1, "includeTail$iv":Z
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move/from16 v3, p1

    .local v3, "mask$iv":I
    const/4 v4, 0x0

    .line 1330
    .local v4, "$i$f$visitNodes":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v13, p2

    move/from16 v17, v0

    goto/16 :goto_a

    .line 1331
    .local v5, "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1332
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v6, :cond_11

    .line 1333
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_10

    .line 1334
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_f

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 107
    .local v8, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1":I
    move-object v9, v7

    .local v9, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1335
    .local v10, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v11, 0x0

    .line 1336
    .local v11, "stack$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "node$iv":Ljava/lang/Object;
    move-object v12, v9

    .line 1337
    :goto_2
    if-eqz v12, :cond_e

    .line 1338
    const/4 v13, 0x3

    const-string v14, "T"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v13, v12, Ljava/lang/Object;

    if-eqz v13, :cond_2

    .line 1339
    move-object/from16 v13, p2

    invoke-interface {v13, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v0

    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_8

    .line 1340
    :cond_2
    move-object/from16 v13, p2

    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/Modifier$Node;

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1341
    .local v15, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v16

    and-int v16, v16, p1

    move/from16 v17, v0

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .local v17, "$i$f$visitNodes-aLcG6gQ":I
    if-eqz v16, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 1340
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_3
    if-eqz v14, :cond_c

    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_c

    .line 1342
    const/4 v14, 0x0

    .line 1343
    .local v14, "count$iv":I
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/node/DelegatingNode;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v16, 0x0

    .line 1344
    .local v16, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual {v15}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 1345
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v18, :cond_b

    .line 1346
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 1347
    .local v19, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    move-object/from16 v20, v0

    .local v20, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1341
    .local v21, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v22

    and-int v22, v22, p1

    if-eqz v22, :cond_4

    const/16 v20, 0x1

    goto :goto_5

    :cond_4
    const/16 v20, 0x0

    .line 1347
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_5
    if-eqz v20, :cond_9

    .line 1348
    add-int/lit8 v14, v14, 0x1

    .line 1349
    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "includeTail$iv":Z
    .local v20, "includeTail$iv":Z
    if-ne v14, v1, :cond_5

    .line 1350
    move-object v12, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    const/4 v1, 0x0

    goto :goto_7

    .line 1354
    :cond_5
    move-object v1, v11

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 1355
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1356
    move/from16 v21, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v21, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v22, 0x0

    .line 1357
    .local v22, "$i$f$MutableVector":I
    move-object/from16 v23, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v23, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v24, v3

    .end local v3    # "mask$iv":I
    .local v24, "mask$iv":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v25, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v25, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1355
    .end local v22    # "$i$f$MutableVector":I
    .end local v25    # "capacity$iv$iv$iv":I
    nop

    .end local v21    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_6

    .line 1354
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_6
    move-object/from16 v23, v2

    move/from16 v24, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    :goto_6
    move-object v11, v2

    .line 1358
    move-object v2, v12

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1359
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1360
    move-object v3, v11

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_7
    const/4 v3, 0x0

    move-object v12, v3

    .line 1363
    :cond_8
    move-object v3, v11

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1347
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .local v1, "includeTail$iv":Z
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_9
    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    const/4 v1, 0x0

    .line 1366
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    :cond_a
    :goto_7
    nop

    .line 1346
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1367
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move/from16 v1, v20

    move-object/from16 v2, v23

    move/from16 v3, v24

    goto :goto_4

    .line 1369
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_b
    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 1370
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v16    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_d

    .line 1372
    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_2

    .line 1340
    .end local v14    # "count$iv":I
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_c
    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 1375
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    :cond_d
    :goto_8
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_2

    .line 1377
    .end local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .local v0, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_e
    move-object/from16 v13, p2

    move/from16 v17, v0

    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 108
    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .end local v9    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v11    # "stack$iv":Ljava/lang/Object;
    .end local v12    # "node$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    nop

    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1":I
    goto :goto_9

    .line 1334
    .end local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_f
    move-object/from16 v13, p2

    move/from16 v17, v0

    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    :goto_9
    nop

    .line 1378
    if-eq v6, v5, :cond_12

    .line 1379
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_1

    .line 1333
    .end local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_10
    move-object/from16 v13, p2

    move/from16 v17, v0

    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    goto :goto_a

    .line 1332
    .end local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_11
    move-object/from16 v13, p2

    move/from16 v17, v0

    move/from16 v20, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 1381
    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v17    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v20    # "includeTail$iv":Z
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v24    # "mask$iv":I
    :cond_12
    nop

    .line 109
    .end local v4    # "$i$f$visitNodes":I
    .end local v5    # "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "includeTail$iv":Z
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v24    # "mask$iv":I
    :goto_a
    return-void
.end method

.method public windowToLocal-MK-Hz9U(J)J
    .locals 5
    .param p1, "relativeToWindow"    # J

    .line 722
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 724
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    .line 725
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/node/Owner;->calculateLocalPosition-MK-Hz9U(J)J

    move-result-wide v1

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    .line 724
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 726
    .local v1, "positionInRoot":J
    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    return-wide v3

    .line 1391
    .end local v0    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v1    # "positionInRoot":J
    :cond_0
    const/4 v0, 0x0

    .line 722
    .local v0, "$i$a$-check-NodeCoordinator$windowToLocal$1":I
    nop

    .end local v0    # "$i$a$-check-NodeCoordinator$windowToLocal$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final withPositionTranslation(Landroidx/compose/ui/graphics/Canvas;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 866
    .local v0, "$i$f$withPositionTranslation":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 867
    .local v1, "x":F
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 868
    .local v2, "y":F
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 869
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 871
    return-void
.end method

.method protected final withinLayerBounds-k-4lQ0M(J)Z
    .locals 3
    .param p1, "pointerPosition"    # J

    .line 998
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->isFinite-k-4lQ0M(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 999
    return v1

    .line 1001
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1002
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v2, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->isInLayer-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
