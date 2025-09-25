.class public final Landroidx/compose/runtime/Recomposer;
.super Landroidx/compose/runtime/CompositionContext;
.source "Recomposer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Recomposer$Companion;,
        Landroidx/compose/runtime/Recomposer$HotReloadable;,
        Landroidx/compose/runtime/Recomposer$RecomposerErrorState;,
        Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;,
        Landroidx/compose/runtime/Recomposer$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1564:1\n1220#1,5:1613\n1226#1:1623\n1220#1,5:1636\n1226#1:1646\n1220#1,5:1667\n1226#1:1688\n82#2:1565\n82#2:1566\n82#2:1569\n82#2:1571\n82#2:1578\n82#2:1579\n82#2:1592\n82#2:1593\n82#2:1594\n82#2:1595\n82#2:1596\n82#2:1597\n82#2:1598\n82#2:1608\n82#2:1611\n82#2:1612\n82#2:1624\n82#2:1625\n82#2:1675\n82#2:1689\n82#2:1712\n82#2:1713\n82#2:1714\n82#2:1715\n82#2:1716\n82#2:1717\n82#2:1718\n82#2:1719\n82#2:1720\n82#2:1721\n82#2:1722\n82#2:1723\n1229#3,2:1567\n1#4:1570\n33#5,6:1572\n33#5,6:1580\n33#5,6:1586\n93#5,2:1626\n33#5,4:1628\n95#5,2:1632\n38#5:1634\n97#5:1635\n120#5,3:1647\n33#5,4:1650\n123#5,2:1654\n125#5,2:1663\n38#5:1665\n127#5:1666\n82#5,3:1676\n33#5,4:1679\n85#5,2:1683\n38#5:1685\n87#5:1686\n82#5,3:1690\n33#5,4:1693\n85#5,2:1697\n38#5:1699\n87#5:1700\n33#5,6:1701\n314#6,9:1599\n323#6,2:1609\n129#7,5:1618\n129#7,5:1641\n129#7,3:1672\n133#7:1687\n129#7,5:1707\n361#8,7:1656\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n*L\n1070#1:1613,5\n1070#1:1623\n1147#1:1636,5\n1147#1:1646\n1167#1:1667,5\n1167#1:1688\n292#1:1565\n342#1:1566\n436#1:1569\n440#1:1571\n461#1:1578\n466#1:1579\n492#1:1592\n705#1:1593\n743#1:1594\n774#1:1595\n786#1:1596\n803#1:1597\n939#1:1598\n951#1:1608\n1035#1:1611\n1051#1:1612\n1083#1:1624\n1114#1:1625\n1170#1:1675\n1183#1:1689\n1250#1:1712\n1287#1:1713\n1302#1:1714\n1331#1:1715\n1339#1:1716\n1348#1:1717\n1355#1:1718\n1362#1:1719\n1371#1:1720\n1377#1:1721\n1389#1:1722\n1120#1:1723\n343#1:1567,2\n446#1:1572,6\n479#1:1580,6\n484#1:1586,6\n1115#1:1626,2\n1115#1:1628,4\n1115#1:1632,2\n1115#1:1634\n1115#1:1635\n1164#1:1647,3\n1164#1:1650,4\n1164#1:1654,2\n1164#1:1663,2\n1164#1:1665\n1164#1:1666\n1171#1:1676,3\n1171#1:1679,4\n1171#1:1683,2\n1171#1:1685\n1171#1:1686\n1187#1:1690,3\n1187#1:1693,4\n1187#1:1697,2\n1187#1:1699\n1187#1:1700\n1194#1:1701,6\n950#1:1599,9\n950#1:1609,2\n1070#1:1618,5\n1147#1:1641,5\n1167#1:1672,3\n1167#1:1687\n1224#1:1707,5\n1164#1:1656,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u00b9\u00012\u00020\u0001:\n\u00b9\u0001\u00ba\u0001\u00bb\u0001\u00bc\u0001\u00bd\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010]\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0002J\u0010\u0010_\u001a\u00020\\2\u0006\u0010`\u001a\u00020aH\u0002J\u0006\u0010b\u001a\u00020cJ\u000e\u0010d\u001a\u00020\\H\u0086@\u00a2\u0006\u0002\u0010eJ\u000e\u0010f\u001a\u00020\\H\u0082@\u00a2\u0006\u0002\u0010eJ\u0006\u0010g\u001a\u00020\\J\u0008\u0010h\u001a\u00020\\H\u0002J\u0006\u0010i\u001a\u00020\\J*\u0010j\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u00072\u0011\u0010k\u001a\r\u0012\u0004\u0012\u00020\\0l\u00a2\u0006\u0002\u0008mH\u0010\u00a2\u0006\u0004\u0008n\u0010oJ:\u0010p\u001a\u0002Hq\"\u0004\u0008\u0000\u0010q2\u0006\u0010^\u001a\u00020\u00072\u000e\u0010r\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010R2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u0002Hq0lH\u0082\u0008\u00a2\u0006\u0002\u0010tJ\u0015\u0010u\u001a\u00020\\2\u0006\u0010v\u001a\u00020\u001fH\u0010\u00a2\u0006\u0002\u0008wJ\u0010\u0010x\u001a\n\u0012\u0004\u0012\u00020\\\u0018\u00010[H\u0002J\u0008\u0010y\u001a\u00020\\H\u0002J\u0015\u0010z\u001a\u00020\\2\u0006\u0010v\u001a\u00020\u001fH\u0010\u00a2\u0006\u0002\u0008{J\u0015\u0010|\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0010\u00a2\u0006\u0002\u0008}J\u0017\u0010~\u001a\u00020\\2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0010\u00a2\u0006\u0003\u0008\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\\H\u0086@\u00a2\u0006\u0002\u0010eJ \u0010\u0083\u0001\u001a\u00020\\2\u0006\u0010v\u001a\u00020\u001f2\u0007\u0010\u0084\u0001\u001a\u00020 H\u0010\u00a2\u0006\u0003\u0008\u0085\u0001J\u0019\u0010\u0086\u0001\u001a\u0004\u0018\u00010 2\u0006\u0010v\u001a\u00020\u001fH\u0010\u00a2\u0006\u0003\u0008\u0087\u0001J\u0007\u0010\u0088\u0001\u001a\u00020\\J\u0011\u0010\u0089\u0001\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0002J.\u0010\u008a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\r\u0010\u008b\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\t2\u000e\u0010r\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010RH\u0002J#\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00072\u0006\u0010^\u001a\u00020\u00072\u000e\u0010r\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010RH\u0002J0\u0010\u008d\u0001\u001a\u00020\\2\r\u0010\u008e\u0001\u001a\u00080\u008f\u0001j\u0003`\u0090\u00012\u000b\u0008\u0002\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00072\t\u0008\u0002\u0010\u0092\u0001\u001a\u00020\u0017H\u0002J\u001e\u0010\u0093\u0001\u001a\u000f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\\0\u0094\u00012\u0006\u0010^\u001a\u00020\u0007H\u0002JV\u0010\u0095\u0001\u001a\u00020\\2D\u0010s\u001a@\u0008\u0001\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0017\u0012\u00150\u0098\u0001\u00a2\u0006\u000f\u0008\u0099\u0001\u0012\n\u0008\u009a\u0001\u0012\u0005\u0008\u0008(\u009b\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\\0\u009c\u0001\u0012\u0006\u0012\u0004\u0018\u00010$0\u0096\u0001\u00a2\u0006\u0003\u0008\u009d\u0001H\u0082@\u00a2\u0006\u0003\u0010\u009e\u0001J\t\u0010\u009f\u0001\u001a\u00020\u0017H\u0002J \u0010\u009f\u0001\u001a\u00020\\2\u0014\u0010\u00a0\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\\0\u0094\u0001H\u0082\u0008J\u001f\u0010\u00a1\u0001\u001a\u00020\\2\u000e\u0010\u00a2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a3\u00010\'H\u0010\u00a2\u0006\u0003\u0008\u00a4\u0001J\u0017\u0010\u00a5\u0001\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00a6\u0001J\u0012\u0010\u00a7\u0001\u001a\u00020\\2\u0007\u0010\u00a8\u0001\u001a\u00020NH\u0002J\u0011\u0010\u00a9\u0001\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0002J\u0017\u0010\u00aa\u0001\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00ab\u0001J\u000b\u0010\u00ac\u0001\u001a\u0004\u0018\u000106H\u0002J\u0007\u0010\u00ad\u0001\u001a\u00020\\J\t\u0010\u00ae\u0001\u001a\u00020\\H\u0002J$\u0010\u00af\u0001\u001a\u00020\\2\u0008\u0010\u009b\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00b2\u0001J\u000f\u0010\u00b3\u0001\u001a\u00020\\H\u0086@\u00a2\u0006\u0002\u0010eJ\u0018\u0010\u00b4\u0001\u001a\u00020\\2\u0006\u0010I\u001a\u00020\u0003H\u0087@\u00a2\u0006\u0003\u0010\u00b5\u0001J\u0017\u0010\u00b6\u0001\u001a\u00020\\2\u0006\u0010^\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00b7\u0001J.\u0010\u00b8\u0001\u001a\u000f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\\0\u0094\u00012\u0006\u0010^\u001a\u00020\u00072\u000e\u0010r\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010RH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00178PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00178PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\"\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010$0#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00060\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020)8PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u000e\u0010,\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000c0.8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00107\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0019R\u0014\u0010;\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0019R\u0014\u0010=\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010\u0019R\u0014\u0010?\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010\u0019R\u0011\u0010A\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u0019R\u0014\u0010C\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010\u0019R\u000e\u0010E\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0014\u0010I\u001a\u00020\u00038PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u00102R\u0012\u0010K\u001a\u00060LR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010O\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010\u0019R\u0014\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020$0RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u000c0T8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR\u000e\u0010Y\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010Z\u001a\n\u0012\u0004\u0012\u00020\\\u0018\u00010[X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00be\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/Recomposer;",
        "Landroidx/compose/runtime/CompositionContext;",
        "effectCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "_knownCompositions",
        "",
        "Landroidx/compose/runtime/ControlledComposition;",
        "_knownCompositionsCache",
        "",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Landroidx/compose/runtime/Recomposer$State;",
        "broadcastFrameClock",
        "Landroidx/compose/runtime/BroadcastFrameClock;",
        "<set-?>",
        "",
        "changeCount",
        "getChangeCount",
        "()J",
        "closeCause",
        "",
        "collectingParameterInformation",
        "",
        "getCollectingParameterInformation$runtime_release",
        "()Z",
        "collectingSourceInformation",
        "getCollectingSourceInformation$runtime_release",
        "compositionInvalidations",
        "compositionValueStatesAvailable",
        "",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "Landroidx/compose/runtime/MovableContentState;",
        "compositionValuesAwaitingInsert",
        "compositionValuesRemoved",
        "Landroidx/compose/runtime/MovableContent;",
        "",
        "compositionsAwaitingApply",
        "compositionsRemoved",
        "",
        "compoundHashKey",
        "",
        "getCompoundHashKey$runtime_release",
        "()I",
        "concurrentCompositionsOutstanding",
        "currentState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "getEffectCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "effectJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "errorState",
        "Landroidx/compose/runtime/Recomposer$RecomposerErrorState;",
        "failedCompositions",
        "frameClockPaused",
        "hasBroadcastFrameClockAwaiters",
        "getHasBroadcastFrameClockAwaiters",
        "hasBroadcastFrameClockAwaitersLocked",
        "getHasBroadcastFrameClockAwaitersLocked",
        "hasConcurrentFrameWorkLocked",
        "getHasConcurrentFrameWorkLocked",
        "hasFrameWorkLocked",
        "getHasFrameWorkLocked",
        "hasPendingWork",
        "getHasPendingWork",
        "hasSchedulingWork",
        "getHasSchedulingWork",
        "isClosed",
        "knownCompositions",
        "getKnownCompositions",
        "()Ljava/util/List;",
        "recomposeCoroutineContext",
        "getRecomposeCoroutineContext$runtime_release",
        "recomposerInfo",
        "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
        "runnerJob",
        "Lkotlinx/coroutines/Job;",
        "shouldKeepRecomposing",
        "getShouldKeepRecomposing",
        "snapshotInvalidations",
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "state",
        "Lkotlinx/coroutines/flow/Flow;",
        "getState$annotations",
        "()V",
        "getState",
        "()Lkotlinx/coroutines/flow/Flow;",
        "stateLock",
        "workContinuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "addKnownCompositionLocked",
        "composition",
        "applyAndCheck",
        "snapshot",
        "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
        "asRecomposerInfo",
        "Landroidx/compose/runtime/RecomposerInfo;",
        "awaitIdle",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitWorkAvailable",
        "cancel",
        "clearKnownCompositionsLocked",
        "close",
        "composeInitial",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "composeInitial$runtime_release",
        "(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V",
        "composing",
        "T",
        "modifiedValues",
        "block",
        "(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "deletedMovableContent",
        "reference",
        "deletedMovableContent$runtime_release",
        "deriveStateLocked",
        "discardUnusedValues",
        "insertMovableContent",
        "insertMovableContent$runtime_release",
        "invalidate",
        "invalidate$runtime_release",
        "invalidateScope",
        "scope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "invalidateScope$runtime_release",
        "join",
        "movableContentStateReleased",
        "data",
        "movableContentStateReleased$runtime_release",
        "movableContentStateResolve",
        "movableContentStateResolve$runtime_release",
        "pauseCompositionFrameClock",
        "performInitialMovableContentInserts",
        "performInsertValues",
        "references",
        "performRecompose",
        "processCompositionError",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "failedInitialComposition",
        "recoverable",
        "readObserverOf",
        "Lkotlin/Function1;",
        "recompositionRunner",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/ParameterName;",
        "name",
        "parentFrameClock",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordComposerModifications",
        "onEachInvalidComposition",
        "recordInspectionTable",
        "table",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "recordInspectionTable$runtime_release",
        "registerComposition",
        "registerComposition$runtime_release",
        "registerRunnerJob",
        "callingJob",
        "removeKnownCompositionLocked",
        "reportRemovedComposition",
        "reportRemovedComposition$runtime_release",
        "resetErrorState",
        "resumeCompositionFrameClock",
        "retryFailedCompositions",
        "runFrameLoop",
        "frameSignal",
        "Landroidx/compose/runtime/ProduceFrameSignal;",
        "(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runRecomposeAndApplyChanges",
        "runRecomposeConcurrentlyAndApplyChanges",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregisterComposition",
        "unregisterComposition$runtime_release",
        "writeObserverOf",
        "Companion",
        "HotReloadable",
        "RecomposerErrorState",
        "RecomposerInfoImpl",
        "State",
        "runtime_release"
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

.field public static final Companion:Landroidx/compose/runtime/Recomposer$Companion;

.field private static final _hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final _runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _knownCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private _knownCompositionsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

.field private changeCount:J

.field private closeCause:Ljava/lang/Throwable;

.field private final compositionInvalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValueStatesAvailable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValuesAwaitingInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionValuesRemoved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private final compositionsAwaitingApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private compositionsRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private concurrentCompositionsOutstanding:I

.field private final effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final effectJob:Lkotlinx/coroutines/CompletableJob;

.field private errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

.field private failedCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field private frameClockPaused:Z

.field private isClosed:Z

.field private final recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

.field private runnerJob:Lkotlinx/coroutines/Job;

.field private snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;

.field private workContinuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/Recomposer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/Recomposer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/Recomposer;->$stable:I

    .line 1404
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentSetOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 1406
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 4
    .param p1, "effectCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;

    .line 131
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    .line 140
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock;

    new-instance v1, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 212
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    .line 219
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    .line 229
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 239
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$effectJob_u24lambda_u241":Lkotlinx/coroutines/CompletableJob;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$a$-apply-Recomposer$effectJob$1":I
    new-instance v3, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-direct {v3, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/CompletableJob;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 277
    nop

    .line 239
    .end local v1    # "$this$effectJob_u24lambda_u241":Lkotlinx/coroutines/CompletableJob;
    .end local v2    # "$i$a$-apply-Recomposer$effectJob$1":I
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    .line 283
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 422
    new-instance v0, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;-><init>(Landroidx/compose/runtime/Recomposer;)V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 129
    return-void
.end method

.method public static final synthetic access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 127
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->awaitWorkAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$discardUnusedValues(Landroidx/compose/runtime/Recomposer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->discardUnusedValues()V

    return-void
.end method

.method public static final synthetic access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    return-object v0
.end method

.method public static final synthetic access$getCloseCause$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final synthetic access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCompositionValuesAwaitingInsert$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCompositionsAwaitingApply$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    return v0
.end method

.method public static final synthetic access$getErrorState$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    return-object v0
.end method

.method public static final synthetic access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasConcurrentFrameWorkLocked()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    return-object v0
.end method

.method public static final synthetic access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public static final synthetic access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getShouldKeepRecomposing()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    return-object v0
.end method

.method public static final synthetic access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getWorkContinuation$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-object v0
.end method

.method public static final synthetic access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 127
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$get_runningRecomposers$cp()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    .line 127
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$isClosed$p(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    return v0
.end method

.method public static final synthetic access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "references"    # Ljava/util/List;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 127
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 127
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recompositionRunner(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 127
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$registerRunnerJob(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "callingJob"    # Lkotlinx/coroutines/Job;

    .line 127
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->registerRunnerJob(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic access$resetErrorState(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$retryFailedCompositions(Landroidx/compose/runtime/Recomposer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;

    .line 127
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->retryFailedCompositions()V

    return-void
.end method

.method public static final synthetic access$runFrameLoop(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "parentFrameClock"    # Landroidx/compose/runtime/MonotonicFrameClock;
    .param p2, "frameSignal"    # Landroidx/compose/runtime/ProduceFrameSignal;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # J

    .line 127
    iput-wide p1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    return-void
.end method

.method public static final synthetic access$setCloseCause$p(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Ljava/lang/Throwable;

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    return-void
.end method

.method public static final synthetic access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Ljava/util/Set;

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # I

    .line 127
    iput p1, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    return-void
.end method

.method public static final synthetic access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method

.method public static final synthetic access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/Recomposer;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method

.method private final addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 769
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 771
    return-void
.end method

.method private final applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1231
    nop

    .line 1232
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v0

    .line 1233
    .local v0, "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1241
    .end local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 1242
    nop

    .line 1243
    return-void

    .line 1234
    .restart local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1235
    const-string/jumbo v2, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    .end local v0    # "applyResult":Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .restart local p1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    throw v0
.end method

.method private final awaitWorkAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 946
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    move-result v0

    if-nez v0, :cond_4

    .line 950
    const/4 v0, 0x0

    .line 1599
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 1600
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1606
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1607
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "co":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 958
    .local v5, "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    nop

    .line 951
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1608
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v8, 0x0

    .line 952
    .local v8, "$i$a$-synchronized-Recomposer$awaitWorkAvailable$2$1":I
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 953
    move-object v9, v4

    goto :goto_0

    .line 955
    :cond_0
    invoke-static {p0, v4}, Landroidx/compose/runtime/Recomposer;->access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    const/4 v9, 0x0

    .line 952
    :goto_0
    nop

    .line 1608
    .end local v8    # "$i$a$-synchronized-Recomposer$awaitWorkAvailable$2$1":I
    monitor-exit v6

    .line 951
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    nop

    .line 958
    if-eqz v9, :cond_1

    .line 951
    check-cast v9, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 958
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 959
    :cond_1
    nop

    .line 1607
    .end local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    nop

    .line 1609
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 1599
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    .line 1610
    :cond_3
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 961
    return-object v0

    .line 1608
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    .restart local v6    # "lock$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    :catchall_0
    move-exception v8

    monitor-exit v6

    throw v8

    .line 961
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "co":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-Recomposer$awaitWorkAvailable$2":I
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final clearKnownCompositionsLocked()V
    .locals 1

    .line 759
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 760
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 761
    return-void
.end method

.method private final composing(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1220
    .local v0, "$i$f$composing":I
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1221
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 1220
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v1

    .line 1223
    .local v1, "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1224
    const/4 v2, 0x1

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v4, 0x0

    .line 1707
    .local v4, "$i$f$enter":I
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1708
    .local v5, "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1709
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 1711
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1709
    nop

    .line 1711
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 1226
    invoke-direct {p0, v1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1224
    return-object v6

    .line 1711
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "$i$f$enter":I
    .restart local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v0    # "$i$f$composing":I
    .end local v1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1226
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "$i$f$composing":I
    .restart local v1    # "snapshot":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-direct {p0, v1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private final deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Recomposer$State;

    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 299
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->clearKnownCompositionsLocked()V

    .line 300
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 301
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 305
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CancellableContinuation$DefaultImpls;->cancel$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 306
    :cond_0
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 307
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 308
    return-object v2

    .line 311
    :cond_1
    nop

    .line 312
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    if-eqz v0, :cond_2

    .line 313
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_4

    .line 316
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 317
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 319
    :cond_3
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 321
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 322
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 323
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 324
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 325
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    if-gtz v0, :cond_6

    .line 326
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 327
    :cond_5
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    goto :goto_1

    .line 326
    :cond_6
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 311
    :goto_1
    nop

    .line 330
    .local v0, "newState":Landroidx/compose/runtime/Recomposer$State;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 331
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    if-ne v0, v1, :cond_7

    .line 332
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    move-object v3, v1

    .local v3, "it":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 333
    .local v4, "$i$a$-also-Recomposer$deriveStateLocked$1":I
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 334
    nop

    .line 332
    .end local v3    # "it":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-also-Recomposer$deriveStateLocked$1":I
    move-object v2, v1

    goto :goto_2

    .line 335
    :cond_7
    nop

    .line 331
    :goto_2
    return-object v2
.end method

.method private final discardUnusedValues()V
    .locals 20

    .line 1183
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1689
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 1184
    .local v0, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1185
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 1186
    .local v4, "references":Ljava/util/List;
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1187
    move-object v5, v4

    .local v5, "$this$fastMap$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1690
    .local v6, "$i$f$fastMap":I
    nop

    .line 1691
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1692
    .local v7, "target$iv":Ljava/util/ArrayList;
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1693
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1694
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_0

    .line 1695
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1696
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1697
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v15, v7

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 v17, v16

    .local v17, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/16 v16, 0x0

    .line 1188
    .local v16, "$i$a$-fastMap-Recomposer$discardUnusedValues$unusedValues$1$unusedValues$1":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .local v18, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .local v3, "it":Landroidx/compose/runtime/MovableContentStateReference;
    .local v19, "$i$f$synchronized":I
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1697
    .end local v3    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v16    # "$i$a$-fastMap-Recomposer$discardUnusedValues$unusedValues$1$unusedValues$1":I
    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1698
    nop

    .line 1696
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1694
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v18

    move/from16 v3, v19

    goto :goto_0

    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v19    # "$i$f$synchronized":I
    .restart local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .local v3, "$i$f$synchronized":I
    :cond_0
    move/from16 v18, v0

    move/from16 v19, v3

    .line 1699
    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v3    # "$i$f$synchronized":I
    .end local v10    # "index$iv$iv":I
    .restart local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v19    # "$i$f$synchronized":I
    nop

    .line 1700
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 1187
    .end local v5    # "$this$fastMap$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastMap":I
    .end local v7    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 1190
    .local v0, "unusedValues":Ljava/util/List;
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1191
    nop

    .end local v0    # "unusedValues":Ljava/util/List;
    .end local v4    # "references":Ljava/util/List;
    goto :goto_1

    .line 1192
    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v19    # "$i$f$synchronized":I
    .local v0, "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v3    # "$i$f$synchronized":I
    :cond_1
    move/from16 v18, v0

    move/from16 v19, v3

    .end local v0    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .end local v3    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    .restart local v19    # "$i$f$synchronized":I
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    :goto_1
    nop

    .line 1689
    .end local v18    # "$i$a$-synchronized-Recomposer$discardUnusedValues$unusedValues$1":I
    monitor-exit v2

    .line 1183
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 1194
    .local v0, "unusedValues":Ljava/util/List;
    move-object v2, v0

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1701
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1702
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_3

    .line 1703
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1704
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    const/4 v8, 0x0

    .line 1194
    .local v8, "$i$a$-fastForEach-Recomposer$discardUnusedValues$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/MovableContentStateReference;

    .local v9, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/MovableContentState;

    .line 1195
    .local v7, "state":Landroidx/compose/runtime/MovableContentState;
    if-eqz v7, :cond_2

    .line 1196
    invoke-virtual {v9}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v10

    invoke-interface {v10, v7}, Landroidx/compose/runtime/ControlledComposition;->disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V

    .line 1198
    :cond_2
    nop

    .line 1704
    .end local v7    # "state":Landroidx/compose/runtime/MovableContentState;
    .end local v8    # "$i$a$-fastForEach-Recomposer$discardUnusedValues$1":I
    .end local v9    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    nop

    .line 1702
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1706
    .end local v4    # "index$iv":I
    :cond_3
    nop

    .line 1199
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    return-void

    .line 1689
    .end local v0    # "unusedValues":Ljava/util/List;
    .local v2, "lock$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v19    # "$i$f$synchronized":I
    .local v3, "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$synchronized":I
    :goto_3
    monitor-exit v2

    throw v0
.end method

.method private final getHasBroadcastFrameClockAwaiters()Z
    .locals 4

    .line 292
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1565
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 292
    .local v2, "$i$a$-synchronized-Recomposer$hasBroadcastFrameClockAwaiters$1":I
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    .end local v2    # "$i$a$-synchronized-Recomposer$hasBroadcastFrameClockAwaiters$1":I
    monitor-exit v0

    .line 292
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1565
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final getHasBroadcastFrameClockAwaitersLocked()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->getHasAwaiters()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getHasConcurrentFrameWorkLocked()Z
    .locals 2

    .line 1262
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final getHasFrameWorkLocked()Z
    .locals 2

    .line 1259
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final getHasSchedulingWork()Z
    .locals 5

    .line 939
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1598
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 940
    .local v2, "$i$a$-synchronized-Recomposer$hasSchedulingWork$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 941
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 942
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 940
    :goto_1
    nop

    .line 1598
    .end local v2    # "$i$a$-synchronized-Recomposer$hasSchedulingWork$1":I
    monitor-exit v0

    .line 943
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v4

    .line 1598
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final getKnownCompositions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .local v0, "$this$_get_knownCompositions__u24lambda_u240":Landroidx/compose/runtime/Recomposer;
    const/4 v1, 0x0

    .line 207
    .local v1, "$i$a$-run-Recomposer$knownCompositions$1":I
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 208
    .local v2, "compositions":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    .line 209
    .local v3, "newCache":Ljava/util/List;
    :goto_0
    iput-object v3, v0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 210
    nop

    .line 206
    .end local v0    # "$this$_get_knownCompositions__u24lambda_u240":Landroidx/compose/runtime/Recomposer;
    .end local v1    # "$i$a$-run-Recomposer$knownCompositions$1":I
    .end local v2    # "compositions":Ljava/util/List;
    .end local v3    # "newCache":Ljava/util/List;
    move-object v0, v3

    .line 211
    :cond_1
    return-object v0
.end method

.method private final getShouldKeepRecomposing()Z
    .locals 8

    .line 342
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1566
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 342
    .local v2, "$i$a$-synchronized-Recomposer$shouldKeepRecomposing$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    .end local v2    # "$i$a$-synchronized-Recomposer$shouldKeepRecomposing$1":I
    const/4 v2, 0x1

    xor-int/2addr v3, v2

    monitor-exit v0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    if-nez v3, :cond_3

    .line 343
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v0

    .local v0, "$this$any$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 1567
    .local v1, "$i$f$any":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Job;

    .local v6, "it":Lkotlinx/coroutines/Job;
    const/4 v7, 0x0

    .line 343
    .local v7, "$i$a$-any-Recomposer$shouldKeepRecomposing$2":I
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v6

    .line 1567
    .end local v6    # "it":Lkotlinx/coroutines/Job;
    .end local v7    # "$i$a$-any-Recomposer$shouldKeepRecomposing$2":I
    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_0

    .line 1568
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    move v0, v5

    .end local v0    # "$this$any$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$any":I
    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 343
    :goto_2
    return v2

    .line 1566
    .local v0, "lock$iv":Ljava/lang/Object;
    .local v1, "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by currentState as a StateFlow"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "currentState"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private final performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 17
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1625
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 1115
    .local v0, "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    .local v5, "$this$fastAny$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1626
    .local v6, "$i$f$fastAny":I
    nop

    .line 1627
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1628
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1629
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_1

    .line 1630
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1631
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1632
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/MovableContentStateReference;

    .local v15, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/16 v16, 0x0

    .line 1115
    .local v16, "$i$a$-fastAny-Recomposer$performInitialMovableContentInserts$1$1":I
    invoke-virtual {v15}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    .end local v15    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v16    # "$i$a$-fastAny-Recomposer$performInitialMovableContentInserts$1$1":I
    if-eqz v11, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    .line 1633
    :cond_0
    nop

    .line 1631
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    nop

    .line 1629
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1634
    .end local v9    # "index$iv$iv":I
    :cond_1
    nop

    .line 1635
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v7, 0x0

    .line 1115
    .end local v5    # "$this$fastAny$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastAny":I
    :goto_1
    if-nez v7, :cond_2

    .end local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    monitor-exit v3

    return-void

    .line 1116
    .restart local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :cond_2
    nop

    .end local v0    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$1":I
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1625
    monitor-exit v3

    .line 1117
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1131
    .local v0, "toInsert":Ljava/util/List;
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 1132
    :goto_2
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 1133
    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    .line 1134
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_2

    .line 1136
    :cond_3
    return-void

    .line 1625
    .end local v0    # "toInsert":Ljava/util/List;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static final performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 6
    .param p0, "toInsert"    # Ljava/util/List;
    .param p1, "this$0"    # Landroidx/compose/runtime/Recomposer;
    .param p2, "$composition"    # Landroidx/compose/runtime/ControlledComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1119
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1120
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1723
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1121
    .local v2, "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$fillToInsert$1":I
    :try_start_0
    iget-object v3, p1, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1122
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 1124
    .local v4, "value":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1125
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .end local v4    # "value":Landroidx/compose/runtime/MovableContentStateReference;
    goto :goto_0

    .line 1129
    :cond_1
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$performInitialMovableContentInserts$fillToInsert$1":I
    .end local v3    # "iterator":Ljava/util/Iterator;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    monitor-exit v0

    .line 1130
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1723
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final performInsertValues(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;
    .locals 29
    .param p1, "references"    # Ljava/util/List;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1164
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .local v0, "$this$fastGroupBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1647
    .local v2, "$i$f$fastGroupBy":I
    nop

    .line 1648
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1649
    .local v3, "destination$iv":Ljava/util/HashMap;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1650
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1651
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1652
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1653
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1654
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastGroupBy$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/runtime/MovableContentStateReference;

    .local v11, "it":Landroidx/compose/runtime/MovableContentStateReference;
    const/4 v12, 0x0

    .line 1164
    .local v12, "$i$a$-fastGroupBy-Recomposer$performInsertValues$tasks$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v11

    .line 1654
    .end local v11    # "it":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v12    # "$i$a$-fastGroupBy-Recomposer$performInsertValues$tasks$1":I
    nop

    .line 1655
    .local v11, "key$iv":Ljava/lang/Object;
    move-object v12, v3

    check-cast v12, Ljava/util/Map;

    .local v12, "$this$getOrPut$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 1656
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1657
    .local v14, "value$iv$iv":Ljava/lang/Object;
    if-nez v14, :cond_0

    .line 1658
    const/4 v15, 0x0

    .line 1655
    .local v15, "$i$a$-getOrPut-ListUtilsKt$fastGroupBy$2$list$1$iv":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    .end local v15    # "$i$a$-getOrPut-ListUtilsKt$fastGroupBy$2$list$1$iv":I
    move-object/from16 v15, v16

    .line 1659
    .local v15, "answer$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    nop

    .end local v15    # "answer$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1662
    :cond_0
    move-object v15, v14

    .line 1657
    :goto_1
    nop

    .line 1655
    .end local v12    # "$this$getOrPut$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv$iv":Ljava/lang/Object;
    move-object v12, v15

    check-cast v12, Ljava/util/ArrayList;

    .line 1663
    .local v12, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    nop

    .line 1653
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastGroupBy$2$iv":I
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "list$iv":Ljava/util/ArrayList;
    nop

    .line 1651
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1665
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1666
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    .line 1164
    .end local v0    # "$this$fastGroupBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastGroupBy":I
    .end local v3    # "destination$iv":Ljava/util/HashMap;
    move-object v2, v0

    .line 1165
    .local v2, "tasks":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .local v4, "composition":Landroidx/compose/runtime/ControlledComposition;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1166
    .local v3, "refs":Ljava/util/List;
    invoke-interface {v4}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 1167
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v6, 0x0

    .line 1667
    .local v6, "$i$f$composing":I
    sget-object v7, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1668
    invoke-direct {v5, v4}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-direct {v5, v4, v9}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Lkotlin/jvm/functions/Function1;

    move-result-object v10

    .line 1667
    invoke-virtual {v7, v8, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v7

    .line 1670
    .local v7, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1671
    :try_start_0
    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v10, 0x0

    .line 1672
    .local v10, "$i$f$enter":I
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1673
    .local v11, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1674
    const/4 v12, 0x0

    .line 1170
    .local v12, "$i$a$-composing-Recomposer$performInsertValues$1":I
    :try_start_1
    iget-object v13, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v13, "lock$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1675
    .local v14, "$i$f$synchronized":I
    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v15, 0x0

    .line 1171
    .local v15, "$i$a$-synchronized-Recomposer$performInsertValues$1$pairs$1":I
    move-object/from16 v16, v3

    .local v16, "$this$fastMap$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 1676
    .local v17, "$i$f$fastMap":I
    nop

    .line 1677
    move-object/from16 v18, v0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v19, v3

    .end local v3    # "refs":Ljava/util/List;
    .local v19, "refs":Ljava/util/List;
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1678
    .local v0, "target$iv":Ljava/util/ArrayList;
    move-object/from16 v3, v16

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 1679
    .local v20, "$i$f$fastForEach":I
    nop

    .line 1680
    const/16 v21, 0x0

    move/from16 v22, v6

    .end local v6    # "$i$f$composing":I
    .local v21, "index$iv$iv":I
    .local v22, "$i$f$composing":I
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v9, v21

    .end local v21    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    :goto_3
    if-ge v9, v6, :cond_2

    .line 1681
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1682
    .local v21, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v21

    .local v23, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1683
    .local v24, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v25, v3

    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v25, "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v26, v23

    check-cast v26, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 v27, v26

    .local v27, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    const/16 v26, 0x0

    .line 1172
    .local v26, "$i$a$-fastMap-Recomposer$performInsertValues$1$pairs$1$1":I
    nop

    .line 1173
    move/from16 v28, v6

    iget-object v6, v1, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v1

    invoke-static {v6, v1}, Landroidx/compose/runtime/RecomposerKt;->removeLastMultiValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1172
    move-object/from16 v6, v27

    .end local v27    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .local v6, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1683
    .end local v6    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v26    # "$i$a$-fastMap-Recomposer$performInsertValues$1$pairs$1$1":I
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1684
    nop

    .line 1682
    .end local v23    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1680
    .end local v21    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v25

    move/from16 v6, v28

    goto :goto_3

    .end local v25    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_2
    move-object/from16 v25, v3

    .line 1685
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "index$iv$iv":I
    .restart local v25    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 1686
    .end local v20    # "$i$f$fastForEach":I
    .end local v25    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1171
    .end local v0    # "target$iv":Ljava/util/ArrayList;
    .end local v16    # "$this$fastMap$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastMap":I
    nop

    .line 1675
    .end local v15    # "$i$a$-synchronized-Recomposer$performInsertValues$1$pairs$1":I
    :try_start_5
    monitor-exit v13

    .line 1170
    .end local v13    # "lock$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$synchronized":I
    move-object v0, v1

    .line 1176
    .local v0, "pairs":Ljava/util/List;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/ControlledComposition;->insertMovableContent(Ljava/util/List;)V

    .line 1177
    nop

    .end local v0    # "pairs":Ljava/util/List;
    .end local v12    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1674
    nop

    .line 1687
    :try_start_6
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1674
    nop

    .line 1688
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "$i$f$enter":I
    .end local v11    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-direct {v5, v7}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 1671
    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto/16 :goto_2

    .line 1675
    .restart local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "$i$f$enter":I
    .restart local v11    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v12    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    .restart local v13    # "lock$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v22    # "$i$f$composing":I
    .local v6, "$i$f$composing":I
    :catchall_1
    move-exception v0

    move/from16 v22, v6

    .end local v6    # "$i$f$composing":I
    .restart local v22    # "$i$f$composing":I
    goto :goto_4

    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    .local v3, "refs":Ljava/util/List;
    .restart local v6    # "$i$f$composing":I
    :catchall_2
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v22, v6

    .end local v3    # "refs":Ljava/util/List;
    .end local v6    # "$i$f$composing":I
    .restart local v19    # "refs":Ljava/util/List;
    .restart local v22    # "$i$f$composing":I
    :goto_4
    :try_start_7
    monitor-exit v13

    .end local v2    # "tasks":Ljava/util/Map;
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v7    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "$i$f$enter":I
    .end local v11    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    .end local p1    # "references":Ljava/util/List;
    .end local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1687
    .end local v12    # "$i$a$-composing-Recomposer$performInsertValues$1":I
    .end local v13    # "lock$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$synchronized":I
    .restart local v2    # "tasks":Ljava/util/Map;
    .restart local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v7    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "$i$f$enter":I
    .restart local v11    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v19    # "refs":Ljava/util/List;
    .restart local v22    # "$i$f$composing":I
    .restart local p1    # "references":Ljava/util/List;
    .restart local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    .restart local v3    # "refs":Ljava/util/List;
    .restart local v6    # "$i$f$composing":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v22, v6

    .end local v3    # "refs":Ljava/util/List;
    .end local v6    # "$i$f$composing":I
    .restart local v19    # "refs":Ljava/util/List;
    .restart local v22    # "$i$f$composing":I
    :goto_5
    :try_start_8
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "tasks":Ljava/util/Map;
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v7    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    .end local p1    # "references":Ljava/util/List;
    .end local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1688
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "$i$f$enter":I
    .end local v11    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "tasks":Ljava/util/Map;
    .restart local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v7    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v19    # "refs":Ljava/util/List;
    .restart local v22    # "$i$f$composing":I
    .restart local p1    # "references":Ljava/util/List;
    .restart local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catchall_5
    move-exception v0

    goto :goto_6

    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    .restart local v3    # "refs":Ljava/util/List;
    .restart local v6    # "$i$f$composing":I
    :catchall_6
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v22, v6

    .end local v3    # "refs":Ljava/util/List;
    .end local v6    # "$i$f$composing":I
    .restart local v19    # "refs":Ljava/util/List;
    .restart local v22    # "$i$f$composing":I
    :goto_6
    invoke-direct {v5, v7}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    throw v0

    .line 1179
    .end local v4    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v7    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local v19    # "refs":Ljava/util/List;
    .end local v22    # "$i$f$composing":I
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 11
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/ControlledComposition;"
        }
    .end annotation

    .line 1142
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1143
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1144
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_4

    .line 1146
    :cond_1
    nop

    .line 1147
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v4, 0x0

    .line 1636
    .local v4, "$i$f$composing":I
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1637
    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 1636
    invoke-virtual {v5, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5

    .line 1639
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1640
    :try_start_0
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1641
    .local v7, "$i$f$enter":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1642
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1643
    const/4 v9, 0x0

    .line 1148
    .local v9, "$i$a$-composing-Recomposer$performRecompose$1":I
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v10

    if-ne v10, v2, :cond_2

    goto :goto_1

    .line 1645
    .end local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1148
    .restart local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 1151
    new-instance v2, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;

    invoke-direct {v2, p2, p1}, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;-><init>(Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/ControlledComposition;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/ControlledComposition;->prepareCompose(Lkotlin/jvm/functions/Function0;)V

    .line 1155
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->recompose()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1643
    .end local v9    # "$i$a$-composing-Recomposer$performRecompose$1":I
    nop

    .line 1645
    :try_start_2
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1643
    nop

    .line 1646
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-direct {v0, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 1640
    nop

    .line 1147
    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    if-eqz v2, :cond_4

    .line 1157
    move-object v1, p1

    goto :goto_2

    :cond_4
    nop

    .line 1146
    :goto_2
    return-object v1

    .line 1645
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v4    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :goto_3
    :try_start_3
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1646
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v4    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catchall_1
    move-exception v1

    invoke-direct {v0, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    throw v1

    .line 1144
    .end local v0    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :cond_5
    :goto_4
    return-object v1
.end method

.method private final processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "failedInitialComposition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p3, "recoverable"    # Z

    .line 704
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroidx/compose/runtime/ComposeRuntimeError;

    if-nez v0, :cond_3

    .line 705
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1593
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 706
    .local v2, "$i$a$-synchronized-Recomposer$processCompositionError$1":I
    :try_start_0
    const-string v3, "Error was captured in composition while live edit was enabled."

    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Landroidx/compose/runtime/ActualAndroid_androidKt;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 709
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 710
    new-instance v3, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 712
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 713
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 714
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 716
    new-instance v3, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 717
    nop

    .line 718
    nop

    .line 716
    invoke-direct {v3, p3, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Exception;)V

    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 721
    if-eqz p2, :cond_2

    .line 722
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    if-nez v3, :cond_0

    .line 723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    move-object v4, v3

    .local v4, "it":Ljava/util/List;
    const/4 v5, 0x0

    .line 724
    .local v5, "$i$a$-also-Recomposer$processCompositionError$1$failedCompositions$1":I
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 725
    nop

    .line 723
    .end local v4    # "it":Ljava/util/List;
    .end local v5    # "$i$a$-also-Recomposer$processCompositionError$1$failedCompositions$1":I
    nop

    .line 722
    :cond_0
    nop

    .line 727
    .local v3, "failedCompositions":Ljava/util/List;
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 728
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_1
    invoke-direct {p0, p2}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 733
    .end local v3    # "failedCompositions":Ljava/util/List;
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1593
    .end local v2    # "$i$a$-synchronized-Recomposer$processCompositionError$1":I
    monitor-exit v0

    .line 756
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1593
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 743
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .restart local v0    # "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1594
    .restart local v1    # "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 744
    .local v2, "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    :try_start_1
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 745
    .local v3, "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    if-nez v3, :cond_4

    .line 747
    new-instance v4, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Exception;)V

    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 752
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .end local v3    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1594
    monitor-exit v0

    .line 754
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw p1

    .line 750
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .restart local v3    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->getCause()Ljava/lang/Exception;

    move-result-object v4

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "e":Ljava/lang/Exception;
    .end local p2    # "failedInitialComposition":Landroidx/compose/runtime/ControlledComposition;
    .end local p3    # "recoverable":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1594
    .end local v2    # "$i$a$-synchronized-Recomposer$processCompositionError$2":I
    .end local v3    # "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "e":Ljava/lang/Exception;
    .restart local p2    # "failedInitialComposition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p3    # "recoverable":Z
    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method static synthetic processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V
    .locals 0

    .line 699
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 701
    const/4 p2, 0x0

    .line 699
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 702
    const/4 p3, 0x0

    .line 699
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    return-void
.end method

.method private final readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1202
    new-instance v0, Landroidx/compose/runtime/Recomposer$readObserverOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer$readObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 967
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v0

    .line 968
    .local v0, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1017
    return-object v1
.end method

.method private final recordComposerModifications(Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "onEachInvalidComposition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 477
    .local v0, "$i$f$recordComposerModifications":I
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v1

    .line 478
    .local v1, "changes":Landroidx/compose/runtime/collection/IdentityArraySet;
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1580
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1581
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 1582
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1583
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .local v7, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v8, 0x0

    .line 480
    .local v8, "$i$a$-fastForEach-Recomposer$recordComposerModifications$4":I
    move-object v9, v1

    check-cast v9, Ljava/util/Set;

    invoke-interface {v7, v9}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 481
    nop

    .line 1583
    .end local v7    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v8    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$4":I
    nop

    .line 1581
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1585
    .end local v4    # "index$iv":I
    :cond_0
    nop

    .line 482
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    new-instance v2, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    invoke-static {p0, v2}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 484
    :cond_1
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1586
    .restart local v3    # "$i$f$fastForEach":I
    nop

    .line 1587
    const/4 v4, 0x0

    .restart local v4    # "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    .line 1588
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1589
    .restart local v6    # "item$iv":Ljava/lang/Object;
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1591
    .end local v4    # "index$iv":I
    :cond_2
    nop

    .line 485
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 486
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v2

    if-nez v2, :cond_3

    .line 489
    return-void

    .line 486
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 487
    const-string/jumbo v3, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final recordComposerModifications()Z
    .locals 14

    .line 436
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1569
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 437
    .local v2, "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    monitor-exit v0

    return v3

    .line 438
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    move-object v4, v3

    .line 1570
    .local v4, "it":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v5, 0x0

    .line 438
    .local v5, "$i$a$-also-Recomposer$recordComposerModifications$changes$1$1":I
    new-instance v6, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v6}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1569
    .end local v2    # "$i$a$-synchronized-Recomposer$recordComposerModifications$changes$1":I
    .end local v4    # "it":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v5    # "$i$a$-also-Recomposer$recordComposerModifications$changes$1$1":I
    monitor-exit v0

    .line 436
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    move-object v0, v3

    .line 440
    .local v0, "changes":Landroidx/compose/runtime/collection/IdentityArraySet;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1571
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 441
    .local v3, "$i$a$-synchronized-Recomposer$recordComposerModifications$compositions$1":I
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1571
    .end local v3    # "$i$a$-synchronized-Recomposer$recordComposerModifications$compositions$1":I
    monitor-exit v1

    .line 440
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    move-object v1, v4

    .line 443
    .local v1, "compositions":Ljava/util/List;
    const/4 v2, 0x0

    .line 444
    .local v2, "complete":Z
    nop

    .line 445
    :try_start_3
    move-object v3, p0

    check-cast v3, Landroidx/compose/runtime/Recomposer;

    .local v3, "$this$recordComposerModifications_u24lambda_u2410":Landroidx/compose/runtime/Recomposer;
    const/4 v4, 0x0

    .line 446
    .local v4, "$i$a$-run-Recomposer$recordComposerModifications$1":I
    move-object v5, v1

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1572
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1573
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 1574
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1575
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    .local v10, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v11, 0x0

    .line 447
    .local v11, "$i$a$-fastForEach-Recomposer$recordComposerModifications$1$1":I
    move-object v12, v0

    check-cast v12, Ljava/util/Set;

    invoke-interface {v10, v12}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 451
    iget-object v12, v3, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/Recomposer$State;

    sget-object v13, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v13, Ljava/lang/Enum;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v12

    if-lez v12, :cond_2

    .line 452
    nop

    .line 1575
    .end local v10    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v11    # "$i$a$-fastForEach-Recomposer$recordComposerModifications$1$1":I
    nop

    .line 1573
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1577
    .end local v7    # "index$iv":I
    :cond_1
    nop

    .line 453
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .line 445
    .end local v3    # "$this$recordComposerModifications_u24lambda_u2410":Landroidx/compose/runtime/Recomposer;
    .end local v4    # "$i$a$-run-Recomposer$recordComposerModifications$1":I
    :cond_2
    nop

    .line 454
    new-instance v3, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 455
    const/4 v2, 0x1

    .line 457
    nop

    .line 465
    nop

    .line 466
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1579
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v5, 0x0

    .line 467
    .local v5, "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    :try_start_4
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v6

    if-nez v6, :cond_3

    .line 470
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1579
    .end local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    monitor-exit v3

    .line 466
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    return v6

    .line 467
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    :cond_3
    :try_start_5
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 468
    const-string/jumbo v7, "called outside of runRecomposeAndApplyChanges"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "changes":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v1    # "compositions":Ljava/util/List;
    .end local v2    # "complete":Z
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1579
    .end local v5    # "$i$a$-synchronized-Recomposer$recordComposerModifications$3":I
    .restart local v0    # "changes":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v1    # "compositions":Ljava/util/List;
    .restart local v2    # "complete":Z
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 457
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    :catchall_1
    move-exception v3

    .line 461
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v4, "lock$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1578
    .local v5, "$i$f$synchronized":I
    monitor-enter v4

    const/4 v6, 0x0

    .line 462
    .local v6, "$i$a$-synchronized-Recomposer$recordComposerModifications$2":I
    :try_start_6
    iget-object v7, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/IdentityArraySet;->addAll(Ljava/util/Collection;)V

    .line 463
    nop

    .end local v6    # "$i$a$-synchronized-Recomposer$recordComposerModifications$2":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1578
    monitor-exit v4

    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    throw v3

    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1571
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    :catchall_3
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1569
    .end local v2    # "$i$f$synchronized":I
    .local v0, "lock$iv":Ljava/lang/Object;
    .local v1, "$i$f$synchronized":I
    :catchall_4
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final registerRunnerJob(Lkotlinx/coroutines/Job;)V
    .locals 5
    .param p1, "callingJob"    # Lkotlinx/coroutines/Job;

    .line 492
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1592
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 493
    .local v2, "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 494
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_1

    .line 495
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-nez v3, :cond_0

    .line 496
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 497
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .end local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    monitor-exit v0

    .line 499
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 495
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Recomposer already running"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3

    .line 494
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Recomposer shut down"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3

    .line 1570
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .local v3, "it":Ljava/lang/Throwable;
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :cond_2
    const/4 v4, 0x0

    .line 493
    .local v4, "$i$a$-let-Recomposer$registerRunnerJob$1$1":I
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p1    # "callingJob":Lkotlinx/coroutines/Job;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    .end local v2    # "$i$a$-synchronized-Recomposer$registerRunnerJob$1":I
    .end local v3    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-let-Recomposer$registerRunnerJob$1$1":I
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p1    # "callingJob":Lkotlinx/coroutines/Job;
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 764
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 766
    return-void
.end method

.method private final resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 5

    .line 774
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1595
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 775
    .local v2, "$i$a$-synchronized-Recomposer$resetErrorState$errorState$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 776
    .local v3, "error":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    if-eqz v3, :cond_0

    .line 777
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 778
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_0
    nop

    .line 1595
    .end local v2    # "$i$a$-synchronized-Recomposer$resetErrorState$errorState$1":I
    .end local v3    # "error":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    monitor-exit v0

    .line 774
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    move-object v0, v3

    .line 782
    .local v0, "errorState":Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    return-object v0

    .line 1595
    .local v0, "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final retryFailedCompositions()V
    .locals 9

    .line 786
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1596
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 787
    .local v2, "$i$a$-synchronized-Recomposer$retryFailedCompositions$compositionsToRetry$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    move-object v4, v3

    .line 1570
    .local v4, "it":Ljava/util/List;
    const/4 v5, 0x0

    .line 787
    .local v5, "$i$a$-also-Recomposer$retryFailedCompositions$compositionsToRetry$1$1":I
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1596
    .end local v2    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$compositionsToRetry$1":I
    .end local v4    # "it":Ljava/util/List;
    .end local v5    # "$i$a$-also-Recomposer$retryFailedCompositions$compositionsToRetry$1$1":I
    monitor-exit v0

    .line 786
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    if-nez v3, :cond_0

    .line 788
    return-void

    .line 786
    :cond_0
    move-object v0, v3

    .line 789
    .local v0, "compositionsToRetry":Ljava/util/List;
    nop

    .line 790
    :cond_1
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 791
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/ControlledComposition;

    .line 792
    .local v1, "composition":Landroidx/compose/runtime/ControlledComposition;
    instance-of v2, v1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v2, :cond_1

    .line 794
    invoke-interface {v1}, Landroidx/compose/runtime/ControlledComposition;->invalidateAll()V

    .line 795
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl;->getComposable()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ControlledComposition;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 797
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 800
    .end local v1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 803
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1597
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 804
    .local v3, "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    nop

    .line 805
    :try_start_2
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1570
    move-object v5, v4

    .local v5, "it":Ljava/util/List;
    const/4 v6, 0x0

    .line 805
    .local v6, "$i$a$-also-Recomposer$retryFailedCompositions$1$1":I
    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v5    # "it":Ljava/util/List;
    .end local v6    # "$i$a$-also-Recomposer$retryFailedCompositions$1$1":I
    if-nez v4, :cond_4

    .line 806
    :cond_3
    move-object v4, v0

    .line 804
    :cond_4
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 807
    nop

    .end local v3    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1597
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 809
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    :cond_5
    :goto_0
    nop

    .line 810
    return-void

    .line 800
    :catchall_1
    move-exception v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 803
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1597
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 804
    .local v4, "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    nop

    .line 805
    :try_start_3
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 1570
    move-object v6, v5

    .local v6, "it":Ljava/util/List;
    const/4 v7, 0x0

    .line 805
    .local v7, "$i$a$-also-Recomposer$retryFailedCompositions$1$1":I
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v6    # "it":Ljava/util/List;
    .end local v7    # "$i$a$-also-Recomposer$retryFailedCompositions$1$1":I
    if-nez v5, :cond_7

    .line 806
    :cond_6
    move-object v5, v0

    .line 804
    :cond_7
    iput-object v5, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 807
    nop

    .end local v4    # "$i$a$-synchronized-Recomposer$retryFailedCompositions$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1597
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    :cond_8
    :goto_1
    throw v1

    .line 1596
    .local v0, "lock$iv":Ljava/lang/Object;
    .local v1, "$i$f$synchronized":I
    :catchall_3
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    iget v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 864
    iget v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .local p1, "toApply":Ljava/util/List;
    iget-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .local p2, "toRecompose":Ljava/util/List;
    iget-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .local v2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .local v3, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .local v4, "this":Landroidx/compose/runtime/Recomposer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v2

    move-object v2, v7

    goto/16 :goto_3

    .end local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v4    # "this":Landroidx/compose/runtime/Recomposer;
    .end local p1    # "toApply":Ljava/util/List;
    .end local p2    # "toRecompose":Ljava/util/List;
    :pswitch_1
    iget-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .restart local p1    # "toApply":Ljava/util/List;
    iget-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .restart local p2    # "toRecompose":Ljava/util/List;
    iget-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .restart local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    iget-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .restart local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    iget-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .restart local v4    # "this":Landroidx/compose/runtime/Recomposer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .end local v3    # "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v4    # "this":Landroidx/compose/runtime/Recomposer;
    .end local p1    # "toApply":Ljava/util/List;
    .end local p2    # "toRecompose":Ljava/util/List;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 868
    .local v2, "this":Landroidx/compose/runtime/Recomposer;
    .local p1, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local p2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 869
    .local v3, "toRecompose":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 870
    .local v4, "toApply":Ljava/util/List;
    :goto_1
    nop

    .line 871
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    iput-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    invoke-virtual {p2, v5, p3}, Landroidx/compose/runtime/ProduceFrameSignal;->awaitFrameRequest(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 864
    return-object v1

    .line 871
    :cond_1
    move-object v7, v3

    move-object v3, p1

    move-object p1, v4

    move-object v4, v2

    move-object v2, p2

    move-object p2, v7

    .line 878
    .local v2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    .local v3, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local v4, "this":Landroidx/compose/runtime/Recomposer;
    .local p1, "toApply":Ljava/util/List;
    .local p2, "toRecompose":Ljava/util/List;
    :goto_2
    new-instance v5, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;

    invoke-direct {v5, v4, p2, p1, v2}, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v4, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    iput-object v2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    invoke-interface {v3, v5, p3}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 864
    return-object v1

    .line 878
    :cond_2
    move-object v7, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v2

    move-object v2, v7

    .local v2, "this":Landroidx/compose/runtime/Recomposer;
    .local v3, "toRecompose":Ljava/util/List;
    .local v4, "toApply":Ljava/util/List;
    .local p1, "parentFrameClock":Landroidx/compose/runtime/MonotonicFrameClock;
    .local p2, "frameSignal":Landroidx/compose/runtime/ProduceFrameSignal;
    :goto_3
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "modifiedValues"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1209
    new-instance v0, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/Recomposer$writeObserverOf$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final asRecomposerInfo()Landroidx/compose/runtime/RecomposerInfo;
    .locals 1

    .line 427
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    check-cast v0, Landroidx/compose/runtime/RecomposerInfo;

    return-object v0
.end method

.method public final awaitIdle(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1273
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/runtime/Recomposer$awaitIdle$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$awaitIdle$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->takeWhile(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->collect(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1274
    return-object v0
.end method

.method public final cancel()V
    .locals 5

    .line 1035
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1611
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1036
    .local v2, "$i$a$-synchronized-Recomposer$cancel$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1037
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 1039
    :cond_0
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$cancel$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    monitor-exit v0

    .line 1040
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1041
    return-void

    .line 1611
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final close()V
    .locals 4

    .line 1050
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1612
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1052
    .local v2, "$i$a$-synchronized-Recomposer$close$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 1053
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$close$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 1055
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_0
    :goto_0
    return-void
.end method

.method public composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1068
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    move-result v0

    .line 1069
    .local v0, "composerWasComposing":Z
    nop

    .line 1070
    const/4 v1, 0x0

    .local v1, "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/Recomposer;
    const/4 v3, 0x0

    .line 1613
    .local v3, "$i$f$composing":I
    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1614
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-direct {v2, p1, v1}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 1613
    invoke-virtual {v5, v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1616
    .local v5, "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    nop

    .line 1617
    :try_start_1
    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/snapshots/Snapshot;

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v7, 0x0

    .line 1618
    .local v7, "$i$f$enter":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1619
    .local v8, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1620
    const/4 v9, 0x0

    .line 1071
    .local v9, "$i$a$-composing-Recomposer$composeInitial$1":I
    :try_start_2
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->composeContent(Lkotlin/jvm/functions/Function2;)V

    .line 1072
    nop

    .end local v9    # "$i$a$-composing-Recomposer$composeInitial$1":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1620
    nop

    .line 1622
    :try_start_3
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1620
    nop

    .line 1622
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1623
    :try_start_4
    invoke-direct {v2, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1617
    nop

    .line 1079
    .end local v1    # "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    if-nez v0, :cond_0

    .line 1080
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 1083
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1624
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 1084
    .local v3, "$i$a$-synchronized-Recomposer$composeInitial$2":I
    :try_start_5
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Recomposer$State;

    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/Recomposer$State;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_1

    .line 1085
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1086
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1089
    :cond_1
    nop

    .end local v3    # "$i$a$-synchronized-Recomposer$composeInitial$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1624
    monitor-exit v1

    .line 1091
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 1092
    :try_start_6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1098
    nop

    .line 1099
    :try_start_7
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V

    .line 1100
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1106
    if-nez v0, :cond_2

    .line 1109
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 1111
    :cond_2
    return-void

    .line 1101
    :catch_0
    move-exception v1

    move-object v3, v1

    .line 1102
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 1103
    return-void

    .line 1093
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1094
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, p1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 1095
    return-void

    .line 1624
    .local v1, "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3

    .line 1622
    .local v1, "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v2, "this_$iv":Landroidx/compose/runtime/Recomposer;
    .local v3, "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v7    # "$i$f$enter":I
    .restart local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception v9

    :try_start_8
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "composerWasComposing":Z
    .end local v1    # "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1623
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "$i$f$enter":I
    .end local v8    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "composerWasComposing":Z
    .restart local v1    # "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .restart local v3    # "$i$f$composing":I
    .restart local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_2
    move-exception v6

    :try_start_9
    invoke-direct {v2, v5}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .end local v0    # "composerWasComposing":Z
    .end local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1073
    .end local v1    # "modifiedValues$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/Recomposer;
    .end local v3    # "$i$f$composing":I
    .end local v5    # "snapshot$iv":Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .restart local v0    # "composerWasComposing":Z
    .restart local p1    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catch_2
    move-exception v1

    .line 1074
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1, p1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 1075
    return-void
.end method

.method public deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 5
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1362
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1719
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1363
    .local v2, "$i$a$-synchronized-Recomposer$deletedMovableContent$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesRemoved:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroidx/compose/runtime/RecomposerKt;->addMultiValue(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    .end local v2    # "$i$a$-synchronized-Recomposer$deletedMovableContent$1":I
    monitor-exit v0

    .line 1365
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1719
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final getChangeCount()J
    .locals 2

    .line 137
    iget-wide v0, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    return-wide v0
.end method

.method public getCollectingParameterInformation$runtime_release()Z
    .locals 1

    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectingSourceInformation$runtime_release()Z
    .locals 1

    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public getCompoundHashKey$runtime_release()I
    .locals 1

    .line 1312
    const/16 v0, 0x3e8

    return v0
.end method

.method public final getCurrentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 282
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getHasPendingWork()Z
    .locals 5

    .line 1250
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1712
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1251
    .local v2, "$i$a$-synchronized-Recomposer$hasPendingWork$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1252
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 1253
    iget v3, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    if-gtz v3, :cond_1

    .line 1254
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 1255
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 1251
    :goto_1
    nop

    .line 1712
    .end local v2    # "$i$a$-synchronized-Recomposer$hasPendingWork$1":I
    monitor-exit v0

    .line 1256
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v4

    .line 1712
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public getRecomposeCoroutineContext$runtime_release()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 286
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1358
    nop

    .line 1355
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1718
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1356
    .local v2, "$i$a$-synchronized-Recomposer$insertMovableContent$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValuesAwaitingInsert:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1357
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    .end local v2    # "$i$a$-synchronized-Recomposer$insertMovableContent$1":I
    monitor-exit v0

    .line 1355
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1358
    if-eqz v3, :cond_0

    .line 1355
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1358
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1359
    :cond_0
    return-void

    .line 1718
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 4
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1344
    nop

    .line 1339
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1716
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1340
    .local v2, "$i$a$-synchronized-Recomposer$invalidate$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1341
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1343
    :cond_0
    const/4 v3, 0x0

    .line 1340
    :goto_0
    nop

    .line 1716
    .end local v2    # "$i$a$-synchronized-Recomposer$invalidate$1":I
    monitor-exit v0

    .line 1339
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1344
    if-eqz v3, :cond_1

    .line 1339
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1344
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1345
    :cond_1
    return-void

    .line 1716
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public invalidateScope$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 4
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1351
    nop

    .line 1348
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1717
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1349
    .local v2, "$i$a$-synchronized-Recomposer$invalidateScope$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    .end local v2    # "$i$a$-synchronized-Recomposer$invalidateScope$1":I
    monitor-exit v0

    .line 1348
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1351
    if-eqz v3, :cond_0

    .line 1348
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1351
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1352
    :cond_0
    return-void

    .line 1717
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1062
    return-object v0
.end method

.method public movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;
    .param p2, "data"    # Landroidx/compose/runtime/MovableContentState;

    .line 1371
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1720
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1372
    .local v2, "$i$a$-synchronized-Recomposer$movableContentStateReleased$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$movableContentStateReleased$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    monitor-exit v0

    .line 1374
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1720
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 4
    .param p1, "reference"    # Landroidx/compose/runtime/MovableContentStateReference;

    .line 1389
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1722
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1390
    .local v2, "$i$a$-synchronized-Recomposer$movableContentStateResolve$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionValueStatesAvailable:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/MovableContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    .end local v2    # "$i$a$-synchronized-Recomposer$movableContentStateResolve$1":I
    monitor-exit v0

    .line 1391
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-object v3

    .line 1722
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final pauseCompositionFrameClock()V
    .locals 4

    .line 1287
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1713
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1288
    .local v2, "$i$a$-synchronized-Recomposer$pauseCompositionFrameClock$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 1289
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$pauseCompositionFrameClock$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    monitor-exit v0

    .line 1290
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1713
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public recordInspectionTable$runtime_release(Ljava/util/Set;)V
    .locals 0
    .param p1, "table"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    .line 1324
    return-void
.end method

.method public registerComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1328
    return-void
.end method

.method public reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 6
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1377
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1721
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1378
    .local v2, "$i$a$-synchronized-Recomposer$reportRemovedComposition$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 1379
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    move-object v4, v3

    .local v4, "it":Ljava/util/Set;
    const/4 v5, 0x0

    .line 1380
    .local v5, "$i$a$-also-Recomposer$reportRemovedComposition$1$compositionsRemoved$1":I
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 1381
    nop

    .line 1379
    .end local v4    # "it":Ljava/util/Set;
    .end local v5    # "$i$a$-also-Recomposer$reportRemovedComposition$1$compositionsRemoved$1":I
    nop

    .line 1378
    :cond_0
    nop

    .line 1382
    .local v3, "compositionsRemoved":Ljava/util/Set;
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    .end local v2    # "$i$a$-synchronized-Recomposer$reportRemovedComposition$1":I
    .end local v3    # "compositionsRemoved":Ljava/util/Set;
    monitor-exit v0

    .line 1384
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1721
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final resumeCompositionFrameClock()V
    .locals 4

    .line 1307
    nop

    .line 1302
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1714
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1303
    .local v2, "$i$a$-synchronized-Recomposer$resumeCompositionFrameClock$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    if-eqz v3, :cond_0

    .line 1304
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 1305
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1306
    :cond_0
    const/4 v3, 0x0

    .line 1303
    :goto_0
    nop

    .line 1714
    .end local v2    # "$i$a$-synchronized-Recomposer$resumeCompositionFrameClock$1":I
    monitor-exit v0

    .line 1302
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    nop

    .line 1307
    if-eqz v3, :cond_1

    .line 1302
    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1307
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1308
    :cond_1
    return-void

    .line 1714
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final runRecomposeAndApplyChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 512
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 697
    return-object v0
.end method

.method public final runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "recomposeCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 829
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 862
    return-object v0
.end method

.method public unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 4
    .param p1, "composition"    # Landroidx/compose/runtime/ControlledComposition;

    .line 1331
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1715
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1332
    .local v2, "$i$a$-synchronized-Recomposer$unregisterComposition$1":I
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1333
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1334
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1335
    nop

    .end local v2    # "$i$a$-synchronized-Recomposer$unregisterComposition$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    monitor-exit v0

    .line 1336
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1715
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
