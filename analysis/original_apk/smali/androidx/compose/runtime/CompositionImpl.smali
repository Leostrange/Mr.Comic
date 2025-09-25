.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/ControlledComposition;
.implements Landroidx/compose/runtime/ReusableComposition;
.implements Landroidx/compose/runtime/RecomposeScopeOwner;
.implements Landroidx/compose/runtime/CompositionServices;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 6 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 7 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 8 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 9 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 10 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySetKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 12 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 13 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 14 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 15 Composition.kt\nandroidx/compose/runtime/CompositionKt\n+ 16 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 17 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 18 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 19 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1381:1\n1047#1,2:1396\n1205#1,3:1398\n1037#1,6:1402\n1208#1,7:1408\n1049#1,4:1415\n1047#1,2:1850\n1205#1,3:1852\n1037#1,6:1855\n1208#1,7:1861\n1049#1,4:1868\n1047#1,2:1881\n1205#1,10:1883\n1049#1,4:1893\n1047#1,2:1988\n1205#1,10:1990\n1049#1,4:2000\n1047#1,2:2005\n1205#1,10:2007\n1049#1,4:2017\n1047#1,2:2022\n1205#1,10:2024\n1049#1,4:2034\n1205#1,10:2038\n82#2:1382\n82#2:1384\n82#2:1385\n82#2:1401\n82#2:1419\n82#2:1428\n82#2:1429\n82#2:1812\n82#2:1849\n82#2:1987\n82#2:2004\n82#2:2021\n82#2:2048\n82#2:2051\n82#2:2052\n82#2:2053\n1#3:1383\n1#3:2064\n93#4,2:1386\n33#4,4:1388\n95#4,2:1392\n38#4:1394\n97#4:1395\n110#4,2:1872\n33#4,6:1874\n112#4:1880\n33#4,6:2067\n166#5,8:1420\n166#5,8:1897\n166#5,8:1908\n166#5,8:2076\n108#6,7:1430\n108#6,5:1475\n114#6:1516\n70#7,5:1437\n78#7,4:1469\n70#7,5:1480\n78#7,4:1512\n124#7:1546\n125#7,5:1562\n130#7,5:1594\n138#7:1609\n124#7:1610\n125#7,5:1626\n130#7,5:1660\n138#7:1675\n124#7:1676\n125#7,5:1692\n130#7,5:1726\n138#7:1741\n70#7,5:1776\n78#7,4:1808\n70#7,5:1813\n78#7,4:1845\n124#7:1920\n125#7,5:1936\n130#7,5:1970\n138#7:1985\n267#8,4:1442\n237#8,7:1446\n248#8,3:1454\n251#8,2:1458\n272#8,2:1460\n254#8,6:1462\n274#8:1468\n267#8,4:1485\n237#8,7:1489\n248#8,3:1497\n251#8,2:1501\n272#8,2:1503\n254#8,6:1505\n274#8:1511\n237#8,16:1519\n272#8,2:1535\n254#8,6:1537\n274#8:1543\n237#8,7:1569\n248#8,3:1577\n251#8,2:1581\n254#8,6:1587\n237#8,16:1633\n254#8,6:1653\n237#8,16:1699\n254#8,6:1719\n267#8,4:1781\n237#8,7:1785\n248#8,3:1793\n251#8,2:1797\n272#8,2:1799\n254#8,6:1801\n274#8:1807\n267#8,4:1818\n237#8,7:1822\n248#8,3:1830\n251#8,2:1834\n272#8,2:1836\n254#8,6:1838\n274#8:1844\n237#8,16:1943\n254#8,6:1963\n1810#9:1453\n1672#9:1457\n1810#9:1496\n1672#9:1500\n1810#9:1554\n1672#9:1558\n1810#9:1576\n1672#9:1580\n1810#9:1618\n1672#9:1622\n1810#9:1684\n1672#9:1688\n1810#9:1759\n1672#9:1763\n1810#9:1792\n1672#9:1796\n1810#9:1829\n1672#9:1833\n1810#9:1928\n1672#9:1932\n396#10,2:1473\n399#10:1517\n401#10:1545\n1855#11:1518\n1856#11:1544\n1047#12:1547\n1049#12:1561\n1050#12,3:1599\n1053#12:1608\n1047#12:1611\n1049#12:1625\n1050#12,3:1665\n1053#12:1674\n1047#12:1677\n1049#12:1691\n1050#12,3:1731\n1053#12:1740\n1047#12:1921\n1049#12:1935\n1050#12,3:1975\n1053#12:1984\n363#13,6:1548\n373#13,3:1555\n376#13,2:1559\n379#13,6:1602\n363#13,6:1612\n373#13,3:1619\n376#13,2:1623\n379#13,6:1668\n363#13,6:1678\n373#13,3:1685\n376#13,2:1689\n379#13,6:1734\n363#13,6:1922\n373#13,3:1929\n376#13,2:1933\n379#13,6:1978\n842#14,2:1567\n845#14,4:1583\n849#14:1593\n842#14,2:1631\n845#14,4:1649\n849#14:1659\n842#14,2:1697\n845#14,4:1715\n849#14:1725\n842#14,2:1941\n845#14,4:1959\n849#14:1969\n1368#15,7:1742\n50#16:1749\n50#16:1767\n415#17,3:1750\n373#17,6:1753\n383#17,3:1760\n386#17,2:1764\n419#17:1766\n420#17:1768\n389#17,6:1769\n421#17:1775\n46#18,3:1905\n50#18:1916\n46#18,3:1917\n50#18:1986\n46#18,3:2073\n50#18:2084\n13579#19,2:2049\n11653#19,9:2054\n13579#19:2063\n13580#19:2065\n11662#19:2066\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n*L\n715#1:1396,2\n715#1:1398,3\n718#1:1402,6\n715#1:1408,7\n715#1:1415,4\n932#1:1850,2\n932#1:1852,3\n933#1:1855,6\n932#1:1861,7\n932#1:1868,4\n953#1:1881,2\n953#1:1883,10\n953#1:1893,4\n1004#1:1988,2\n1004#1:1990,10\n1004#1:2000,4\n1013#1:2005,2\n1013#1:2007,10\n1013#1:2017,4\n1023#1:2022,2\n1023#1:2024,10\n1023#1:2034,4\n1048#1:2038,10\n616#1:1382\n638#1:1384\n655#1:1385\n716#1:1401\n733#1:1419\n779#1:1428\n800#1:1429\n920#1:1812\n930#1:1849\n1003#1:1987\n1012#1:2004\n1022#1:2021\n1062#1:2048\n1068#1:2051\n1103#1:2052\n1130#1:2053\n1192#1:2064\n662#1:1386,2\n662#1:1388,4\n662#1:1392,2\n662#1:1394\n662#1:1395\n952#1:1872,2\n952#1:1874,6\n952#1:1880\n1193#1:2067,6\n764#1:1420,8\n961#1:1897,8\n975#1:1908,8\n1335#1:2076,8\n811#1:1430,7\n848#1:1475,5\n848#1:1516\n829#1:1437,5\n829#1:1469,4\n854#1:1480,5\n854#1:1512,4\n862#1:1546\n862#1:1562,5\n862#1:1594,5\n862#1:1609\n869#1:1610\n869#1:1626,5\n869#1:1660,5\n869#1:1675\n876#1:1676\n876#1:1692,5\n876#1:1726,5\n876#1:1741\n912#1:1776,5\n912#1:1808,4\n925#1:1813,5\n925#1:1845,4\n990#1:1920\n990#1:1936,5\n990#1:1970,5\n990#1:1985\n829#1:1442,4\n829#1:1446,7\n829#1:1454,3\n829#1:1458,2\n829#1:1460,2\n829#1:1462,6\n829#1:1468\n854#1:1485,4\n854#1:1489,7\n854#1:1497,3\n854#1:1501,2\n854#1:1503,2\n854#1:1505,6\n854#1:1511\n854#1:1519,16\n854#1:1535,2\n854#1:1537,6\n854#1:1543\n862#1:1569,7\n862#1:1577,3\n862#1:1581,2\n862#1:1587,6\n869#1:1633,16\n869#1:1653,6\n876#1:1699,16\n876#1:1719,6\n912#1:1781,4\n912#1:1785,7\n912#1:1793,3\n912#1:1797,2\n912#1:1799,2\n912#1:1801,6\n912#1:1807\n925#1:1818,4\n925#1:1822,7\n925#1:1830,3\n925#1:1834,2\n925#1:1836,2\n925#1:1838,6\n925#1:1844\n990#1:1943,16\n990#1:1963,6\n829#1:1453\n829#1:1457\n854#1:1496\n854#1:1500\n862#1:1554\n862#1:1558\n862#1:1576\n862#1:1580\n869#1:1618\n869#1:1622\n876#1:1684\n876#1:1688\n898#1:1759\n898#1:1763\n912#1:1792\n912#1:1796\n925#1:1829\n925#1:1833\n990#1:1928\n990#1:1932\n848#1:1473,2\n848#1:1517\n848#1:1545\n848#1:1518\n848#1:1544\n862#1:1547\n862#1:1561\n862#1:1599,3\n862#1:1608\n869#1:1611\n869#1:1625\n869#1:1665,3\n869#1:1674\n876#1:1677\n876#1:1691\n876#1:1731,3\n876#1:1740\n990#1:1921\n990#1:1935\n990#1:1975,3\n990#1:1984\n862#1:1548,6\n862#1:1555,3\n862#1:1559,2\n862#1:1602,6\n869#1:1612,6\n869#1:1619,3\n869#1:1623,2\n869#1:1668,6\n876#1:1678,6\n876#1:1685,3\n876#1:1689,2\n876#1:1734,6\n990#1:1922,6\n990#1:1929,3\n990#1:1933,2\n990#1:1978,6\n862#1:1567,2\n862#1:1583,4\n862#1:1593\n869#1:1631,2\n869#1:1649,4\n869#1:1659\n876#1:1697,2\n876#1:1715,4\n876#1:1725\n990#1:1941,2\n990#1:1959,4\n990#1:1969\n878#1:1742,7\n890#1:1749\n900#1:1767\n898#1:1750,3\n898#1:1753,6\n898#1:1760,3\n898#1:1764,2\n898#1:1766\n898#1:1768\n898#1:1769,6\n898#1:1775\n971#1:1905,3\n971#1:1916\n988#1:1917,3\n988#1:1986\n1331#1:2073,3\n1331#1:2084\n1063#1:2049,2\n1192#1:2054,9\n1192#1:2063\n1192#1:2065\n1192#1:2066\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u00a3\u0001B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010X\u001a\u00020\u0019H\u0002J\u001e\u0010Y\u001a\u00020\u00192\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020*0)2\u0006\u0010[\u001a\u00020\u0012H\u0002J\u0008\u0010\\\u001a\u00020\u0019H\u0016J\u0010\u0010]\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010^\u001a\u00020\u0019H\u0016J\u0008\u0010_\u001a\u00020\u0019H\u0016J\u0008\u0010`\u001a\u00020\u0019H\u0002J \u0010a\u001a\u00020\u00192\u0011\u0010b\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0002\u0008\u001aH\u0016\u00a2\u0006\u0002\u0010\u001eJ \u0010c\u001a\u00020\u00192\u0011\u0010b\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0002\u0008\u001aH\u0002\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010d\u001a\u00020\u0019H\u0016J3\u0010e\u001a\u0002Hf\"\u0004\u0008\u0000\u0010f2\u0008\u0010g\u001a\u0004\u0018\u00010\u00012\u0006\u0010h\u001a\u0002072\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u0002Hf0\u0018H\u0016\u00a2\u0006\u0002\u0010jJ\u0008\u0010k\u001a\u00020\u0019H\u0016J\u0010\u0010l\u001a\u00020\u00192\u0006\u0010m\u001a\u00020nH\u0016J\u0008\u0010o\u001a\u00020\u0019H\u0002J\u0008\u0010p\u001a\u00020\u0019H\u0002J#\u0010q\u001a\u0004\u0018\u0001Hr\"\u0004\u0008\u0000\u0010r2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u0002Hr0tH\u0016\u00a2\u0006\u0002\u0010uJ\"\u0010v\u001a\u0002Hr\"\u0004\u0008\u0000\u0010r2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u0002Hr0\u0018H\u0082\u0008\u00a2\u0006\u0002\u0010wJK\u0010x\u001a\u0002Hr\"\u0004\u0008\u0000\u0010r25\u0010i\u001a1\u0012\'\u0012%\u0012\u0004\u0012\u00020$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020*\u0018\u00010:09\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u0002Hr0yH\u0082\u0008\u00a2\u0006\u0002\u0010|J&\u0010}\u001a\u00020\u00192\u001c\u0010~\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0005\u0012\u00030\u0080\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u00010\u007f0#H\u0016J\u001e\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020$2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010*H\u0016J\t\u0010\u0085\u0001\u001a\u00020\u0019H\u0016J(\u0010\u0086\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020$2\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010*H\u0002J\u000f\u0010\u0089\u0001\u001a\u00020\u00192\u0006\u0010s\u001a\u000207J\u0012\u0010\u008a\u0001\u001a\u00020\u00192\u0007\u0010\u008b\u0001\u001a\u00020*H\u0002J\u001a\u0010\u008c\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0000\u00a2\u0006\u0003\u0008\u0090\u0001J\u000c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0002J\u0017\u0010\u0091\u0001\u001a\u00020\u00122\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0016J\u0017\u0010\u0092\u0001\u001a\u00020\u00192\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\t\u0010\u0093\u0001\u001a\u00020\u0012H\u0016J\u0012\u0010\u0094\u0001\u001a\u00020\u00192\u0007\u0010\u0083\u0001\u001a\u00020$H\u0016J\u0017\u0010\u0095\u0001\u001a\u00020\u00192\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00192\u0007\u0010\u008b\u0001\u001a\u00020*H\u0016J\u0012\u0010\u0097\u0001\u001a\u00020\u00192\u0007\u0010\u008b\u0001\u001a\u00020*H\u0016J\u001b\u0010\u0098\u0001\u001a\u00020\u00192\n\u0010m\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00a2\u0006\u0003\u0008\u0099\u0001J!\u0010\u009a\u0001\u001a\u00020\u00192\u0007\u0010\u0084\u0001\u001a\u00020*2\u0007\u0010\u0083\u0001\u001a\u00020$H\u0000\u00a2\u0006\u0003\u0008\u009b\u0001J!\u0010\u009c\u0001\u001a\u00020\u00192\u0011\u0010b\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0002\u0008\u001aH\u0016\u00a2\u0006\u0002\u0010\u001eJ!\u0010\u009d\u0001\u001a\u00020\u00192\u0011\u0010b\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0002\u0008\u001aH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u001d\u0010\u009e\u0001\u001a\u0016\u0012\u0004\u0012\u00020$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020*\u0018\u00010:09H\u0002J#\u0010\u009f\u0001\u001a\u0002Hr\"\u0004\u0008\u0000\u0010r2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u0002Hr0\u0018H\u0082\u0008\u00a2\u0006\u0002\u0010wJ\u001d\u0010\u00a0\u0001\u001a\u00020\u00122\u0007\u0010\u0083\u0001\u001a\u00020$2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010*H\u0002J\u0011\u0010\u00a1\u0001\u001a\u00020\u00192\u0006\u0010S\u001a\u00020TH\u0002J\t\u0010\u00a2\u0001\u001a\u00020\u0019H\u0016JE\u0010Y\u001a\u0016\u0012\u0004\u0012\u00020$\u0018\u00010\u000ej\n\u0012\u0004\u0012\u00020$\u0018\u0001`\u0010*\u0016\u0012\u0004\u0012\u00020$\u0018\u00010\u000ej\n\u0012\u0004\u0012\u00020$\u0018\u0001`\u00102\u0007\u0010\u008b\u0001\u001a\u00020*2\u0006\u0010[\u001a\u00020\u0012H\u0002R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0002\u0008\u001aX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u001e\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020$0\u000ej\u0008\u0012\u0004\u0012\u00020$`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)8AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0018\u0010-\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030/0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0014R\u0014\u00103\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\u0014R\u0010\u00105\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u00108\u001a\u0016\u0012\u0004\u0012\u00020$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020*\u0018\u00010:09X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010;\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u0014R\u0014\u0010<\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0014R\u0011\u0010=\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u0014R\u000e\u0010>\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010@\u001a\u0008\u0012\u0004\u0012\u00020$0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010A\u001a\u0008\u0012\u0004\u0012\u00020$0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010B\u001a\u0008\u0012\u0004\u0012\u00020*0)8AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010,R\u0014\u0010D\u001a\u00020EX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010H\u001a\u00020\u0012X\u0080\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010\u0014\"\u0004\u0008L\u0010MR\"\u0010N\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010*0Oj\n\u0012\u0006\u0012\u0004\u0018\u00010*`PX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\u001a\u0010S\u001a\u00020TX\u0080\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008U\u0010J\u001a\u0004\u0008V\u0010W\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionImpl;",
        "Landroidx/compose/runtime/ControlledComposition;",
        "Landroidx/compose/runtime/ReusableComposition;",
        "Landroidx/compose/runtime/RecomposeScopeOwner;",
        "Landroidx/compose/runtime/CompositionServices;",
        "parent",
        "Landroidx/compose/runtime/CompositionContext;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "recomposeContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V",
        "_recomposeContext",
        "abandonSet",
        "Ljava/util/HashSet;",
        "Landroidx/compose/runtime/RememberObserver;",
        "Lkotlin/collections/HashSet;",
        "areChildrenComposing",
        "",
        "getAreChildrenComposing",
        "()Z",
        "changes",
        "Landroidx/compose/runtime/changelist/ChangeList;",
        "composable",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "getComposable",
        "()Lkotlin/jvm/functions/Function2;",
        "setComposable",
        "(Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function2;",
        "composer",
        "Landroidx/compose/runtime/ComposerImpl;",
        "conditionalScopes",
        "",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "getConditionalScopes$runtime_release",
        "()Ljava/util/List;",
        "conditionallyInvalidatedScopes",
        "derivedStateDependencies",
        "",
        "",
        "getDerivedStateDependencies$runtime_release",
        "()Ljava/util/Set;",
        "derivedStates",
        "Landroidx/compose/runtime/collection/ScopeMap;",
        "Landroidx/compose/runtime/DerivedState;",
        "disposed",
        "hasInvalidations",
        "getHasInvalidations",
        "hasPendingChanges",
        "getHasPendingChanges",
        "invalidationDelegate",
        "invalidationDelegateGroup",
        "",
        "invalidations",
        "Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "isComposing",
        "isDisposed",
        "isRoot",
        "lateChanges",
        "lock",
        "observations",
        "observationsProcessed",
        "observedObjects",
        "getObservedObjects$runtime_release",
        "observerHolder",
        "Landroidx/compose/runtime/CompositionObserverHolder;",
        "getObserverHolder$runtime_release",
        "()Landroidx/compose/runtime/CompositionObserverHolder;",
        "pendingInvalidScopes",
        "getPendingInvalidScopes$runtime_release$annotations",
        "()V",
        "getPendingInvalidScopes$runtime_release",
        "setPendingInvalidScopes$runtime_release",
        "(Z)V",
        "pendingModifications",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroidx/compose/runtime/AtomicReference;",
        "getRecomposeContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "slotTable",
        "Landroidx/compose/runtime/SlotTable;",
        "getSlotTable$runtime_release$annotations",
        "getSlotTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "abandonChanges",
        "addPendingInvalidationsLocked",
        "values",
        "forgetConditionalScopes",
        "applyChanges",
        "applyChangesInLocked",
        "applyLateChanges",
        "changesApplied",
        "cleanUpDerivedStateObservations",
        "composeContent",
        "content",
        "composeInitial",
        "deactivate",
        "delegateInvalidations",
        "R",
        "to",
        "groupIndex",
        "block",
        "(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "dispose",
        "disposeUnusedMovableContent",
        "state",
        "Landroidx/compose/runtime/MovableContentState;",
        "drainPendingModificationsForCompositionLocked",
        "drainPendingModificationsLocked",
        "getCompositionService",
        "T",
        "key",
        "Landroidx/compose/runtime/CompositionServiceKey;",
        "(Landroidx/compose/runtime/CompositionServiceKey;)Ljava/lang/Object;",
        "guardChanges",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "guardInvalidationsLocked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "insertMovableContent",
        "references",
        "Lkotlin/Pair;",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "invalidate",
        "Landroidx/compose/runtime/InvalidationResult;",
        "scope",
        "instance",
        "invalidateAll",
        "invalidateChecked",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "invalidateGroupsWithKey",
        "invalidateScopeOfLocked",
        "value",
        "observe",
        "Landroidx/compose/runtime/tooling/CompositionObserverHandle;",
        "observer",
        "Landroidx/compose/runtime/tooling/CompositionObserver;",
        "observe$runtime_release",
        "observesAnyOf",
        "prepareCompose",
        "recompose",
        "recomposeScopeReleased",
        "recordModificationsOf",
        "recordReadOf",
        "recordWriteOf",
        "removeDerivedStateObservation",
        "removeDerivedStateObservation$runtime_release",
        "removeObservation",
        "removeObservation$runtime_release",
        "setContent",
        "setContentWithReuse",
        "takeInvalidations",
        "trackAbandonedValues",
        "tryImminentInvalidation",
        "validateRecomposeScopeAnchors",
        "verifyConsistent",
        "RememberEventDispatcher",
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


# instance fields
.field private final _recomposeContext:Lkotlin/coroutines/CoroutineContext;

.field private final abandonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation
.end field

.field private final changes:Landroidx/compose/runtime/changelist/ChangeList;

.field private composable:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final composer:Landroidx/compose/runtime/ComposerImpl;

.field private final conditionallyInvalidatedScopes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final derivedStates:Landroidx/compose/runtime/collection/ScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/ScopeMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;>;"
        }
    .end annotation
.end field

.field private disposed:Z

.field private invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

.field private invalidationDelegateGroup:I

.field private invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isRoot:Z

.field private final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private final lock:Ljava/lang/Object;

.field private final observations:Landroidx/compose/runtime/collection/ScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/ScopeMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/ScopeMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

.field private final parent:Landroidx/compose/runtime/CompositionContext;

.field private pendingInvalidScopes:Z

.field private final pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final slotTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/CompositionImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V
    .locals 12
    .param p1, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "applier"    # Landroidx/compose/runtime/Applier;
    .param p3, "recomposeContext"    # Lkotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 444
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 455
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 458
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 467
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    .line 473
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 479
    new-instance v0, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .line 493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .line 498
    new-instance v0, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .line 517
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 527
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 536
    new-instance v0, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;

    .line 545
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 560
    new-instance v0, Landroidx/compose/runtime/CompositionObserverHolder;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2, v1}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 574
    nop

    .line 566
    new-instance v0, Landroidx/compose/runtime/ComposerImpl;

    .line 567
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 568
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 569
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 570
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    move-object v8, v1

    check-cast v8, Ljava/util/Set;

    .line 571
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 572
    iget-object v10, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 573
    move-object v11, p0

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .line 566
    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V

    .line 574
    move-object v1, v0

    .local v1, "it":Landroidx/compose/runtime/ComposerImpl;
    const/4 v2, 0x0

    .line 575
    .local v2, "$i$a$-also-CompositionImpl$composer$1":I
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/Composer;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    .line 576
    nop

    .line 574
    .end local v1    # "it":Landroidx/compose/runtime/ComposerImpl;
    .end local v2    # "$i$a$-also-CompositionImpl$composer$1":I
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 581
    iput-object p3, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/CoroutineContext;

    .line 592
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    instance-of v0, v0, Landroidx/compose/runtime/Recomposer;

    iput-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda-1$runtime_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 434
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 434
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 446
    const/4 p3, 0x0

    .line 434
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V

    .line 1350
    return-void
.end method

.method private final abandonChanges()V
    .locals 2

    .line 1055
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1057
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1058
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1059
    return-void
.end method

.method public static final synthetic access$getConditionallyInvalidatedScopes$p(Landroidx/compose/runtime/CompositionImpl;)Ljava/util/HashSet;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/CompositionImpl;

    .line 433
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getLock$p(Landroidx/compose/runtime/CompositionImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/CompositionImpl;

    .line 433
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/compose/runtime/collection/ScopeMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/CompositionImpl;

    .line 433
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    return-object v0
.end method

.method private final addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;
    .locals 26
    .param p1, "$this$addPendingInvalidationsLocked"    # Ljava/util/HashSet;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forgetConditionalScopes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "set":Ljava/lang/Object;
    move-object/from16 v2, p1

    .line 829
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v4, 0x0

    .line 1437
    .local v4, "$i$f$forEachScopeOf":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1438
    .local v5, "value$iv":Ljava/lang/Object;
    if-eqz v5, :cond_f

    .line 1439
    instance-of v6, v5, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_b

    .line 1441
    move-object v6, v5

    check-cast v6, Landroidx/collection/MutableScatterSet;

    check-cast v6, Landroidx/collection/ScatterSet;

    .local v6, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v7, 0x0

    .line 1442
    .local v7, "$i$f$forEach":I
    nop

    .line 1443
    iget-object v8, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1445
    .local v8, "k$iv$iv":[Ljava/lang/Object;
    move-object v9, v6

    .local v9, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v10, 0x0

    .line 1446
    .local v10, "$i$f$forEachIndex":I
    nop

    .line 1447
    iget-object v11, v9, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1448
    .local v11, "m$iv$iv$iv":[J
    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    .line 1450
    .local v12, "lastIndex$iv$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv$iv":I
    if-gt v13, v12, :cond_9

    .line 1451
    :goto_0
    aget-wide v14, v11, v13

    .line 1452
    .local v14, "slot$iv$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1453
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-wide/from16 v2, v16

    move-object/from16 v16, v6

    move/from16 v17, v7

    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "$i$f$forEach":I
    .local v2, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v16, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v17, "$i$f$forEach":I
    .local v19, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v20, "set":Ljava/lang/Object;
    not-long v6, v2

    const/16 v21, 0x7

    shl-long v6, v6, v21

    and-long/2addr v6, v2

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v6, v21

    .line 1452
    .end local v2    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v21

    if-eqz v2, :cond_8

    .line 1454
    sub-int v2, v13, v12

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1455
    .local v2, "bitCount$iv$iv$iv":I
    const/4 v6, 0x0

    .local v6, "j$iv$iv$iv":I
    :goto_1
    if-ge v6, v2, :cond_6

    .line 1456
    const-wide/16 v21, 0xff

    and-long v21, v14, v21

    .local v21, "value$iv$iv$iv$iv":J
    const/4 v7, 0x0

    .line 1457
    .local v7, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v18, v21, v23

    if-gez v18, :cond_0

    const/16 v18, 0x1

    goto :goto_2

    :cond_0
    const/16 v18, 0x0

    .line 1456
    .end local v7    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v18, :cond_5

    .line 1458
    shl-int/lit8 v7, v13, 0x3

    add-int/2addr v7, v6

    .line 1459
    .local v7, "index$iv$iv$iv":I
    move/from16 v18, v7

    .local v18, "index$iv$iv":I
    const/16 v21, 0x0

    .line 1460
    .local v21, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    aget-object v22, v8, v18

    move-object/from16 v3, v22

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v3, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/16 v22, 0x0

    .line 830
    .local v22, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$1":I
    nop

    .line 831
    move/from16 v24, v4

    .end local v4    # "$i$f$forEachScopeOf":I
    .local v24, "$i$f$forEachScopeOf":I
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v4, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 832
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v4

    move/from16 v25, v7

    .end local v7    # "index$iv$iv$iv":I
    .local v25, "index$iv$iv$iv":I
    sget-object v7, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v4, v7, :cond_4

    .line 834
    invoke-virtual {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    .line 835
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 837
    :cond_1
    if-nez v20, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v20, v4

    goto :goto_3

    :cond_2
    move-object/from16 v4, v20

    .line 838
    .end local v20    # "set":Ljava/lang/Object;
    .local v4, "set":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v4

    goto :goto_4

    .line 831
    .end local v4    # "set":Ljava/lang/Object;
    .end local v25    # "index$iv$iv$iv":I
    .restart local v7    # "index$iv$iv$iv":I
    .restart local v20    # "set":Ljava/lang/Object;
    :cond_3
    move/from16 v25, v7

    .line 841
    .end local v7    # "index$iv$iv$iv":I
    .restart local v25    # "index$iv$iv$iv":I
    :cond_4
    :goto_4
    nop

    .line 1460
    .end local v3    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v22    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$1":I
    nop

    .line 1461
    nop

    .line 1459
    .end local v18    # "index$iv$iv":I
    .end local v21    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    goto :goto_5

    .line 1456
    .end local v24    # "$i$f$forEachScopeOf":I
    .end local v25    # "index$iv$iv$iv":I
    .local v4, "$i$f$forEachScopeOf":I
    :cond_5
    move/from16 v24, v4

    .line 1462
    .end local v4    # "$i$f$forEachScopeOf":I
    .restart local v24    # "$i$f$forEachScopeOf":I
    :goto_5
    const/16 v3, 0x8

    shr-long/2addr v14, v3

    .line 1455
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v24

    goto :goto_1

    .end local v24    # "$i$f$forEachScopeOf":I
    .restart local v4    # "$i$f$forEachScopeOf":I
    :cond_6
    move/from16 v24, v4

    .line 1464
    .end local v4    # "$i$f$forEachScopeOf":I
    .end local v6    # "j$iv$iv$iv":I
    .restart local v24    # "$i$f$forEachScopeOf":I
    if-ne v2, v3, :cond_7

    move-object/from16 v2, v20

    goto :goto_6

    :cond_7
    move-object/from16 v2, v20

    goto :goto_7

    .line 1452
    .end local v2    # "bitCount$iv$iv$iv":I
    .end local v24    # "$i$f$forEachScopeOf":I
    .restart local v4    # "$i$f$forEachScopeOf":I
    :cond_8
    move/from16 v24, v4

    .end local v4    # "$i$f$forEachScopeOf":I
    .restart local v24    # "$i$f$forEachScopeOf":I
    move-object/from16 v2, v20

    .line 1450
    .end local v14    # "slot$iv$iv$iv":J
    .end local v20    # "set":Ljava/lang/Object;
    .local v2, "set":Ljava/lang/Object;
    :goto_6
    if-eq v13, v12, :cond_a

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v3, v19

    move/from16 v4, v24

    goto/16 :goto_0

    .end local v16    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v17    # "$i$f$forEach":I
    .end local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v24    # "$i$f$forEachScopeOf":I
    .local v3, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v4    # "$i$f$forEachScopeOf":I
    .local v6, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v7, "$i$f$forEach":I
    :cond_9
    move-object/from16 v19, v3

    move/from16 v24, v4

    move-object/from16 v16, v6

    move/from16 v17, v7

    .line 1467
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v4    # "$i$f$forEachScopeOf":I
    .end local v6    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v7    # "$i$f$forEach":I
    .end local v13    # "i$iv$iv$iv":I
    .restart local v16    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v17    # "$i$f$forEach":I
    .restart local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v24    # "$i$f$forEachScopeOf":I
    :cond_a
    nop

    .line 1468
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v10    # "$i$f$forEachIndex":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv$iv":I
    :goto_7
    nop

    .end local v8    # "k$iv$iv":[Ljava/lang/Object;
    .end local v16    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v17    # "$i$f$forEach":I
    goto :goto_9

    .line 1469
    .end local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v24    # "$i$f$forEachScopeOf":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v4    # "$i$f$forEachScopeOf":I
    :cond_b
    move-object/from16 v19, v3

    move/from16 v24, v4

    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v4    # "$i$f$forEachScopeOf":I
    .restart local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v24    # "$i$f$forEachScopeOf":I
    move-object v3, v5

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v3, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v4, 0x0

    .line 830
    .local v4, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$1":I
    nop

    .line 831
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v6, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 832
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v6, v7, :cond_e

    .line 834
    invoke-virtual {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez p3, :cond_c

    .line 835
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 837
    :cond_c
    if-nez v2, :cond_d

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v2, v6

    .line 838
    :cond_d
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_e
    :goto_8
    nop

    .line 1469
    .end local v3    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v4    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$1":I
    goto :goto_9

    .line 1438
    .end local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v24    # "$i$f$forEachScopeOf":I
    .local v3, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v4, "$i$f$forEachScopeOf":I
    :cond_f
    move-object/from16 v19, v3

    move/from16 v24, v4

    .line 1472
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v4    # "$i$f$forEachScopeOf":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    .restart local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v24    # "$i$f$forEachScopeOf":I
    :goto_9
    nop

    .line 842
    .end local v19    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v24    # "$i$f$forEachScopeOf":I
    return-object v2
.end method

.method private final addPendingInvalidationsLocked(Ljava/util/Set;Z)V
    .locals 49
    .param p1, "values"    # Ljava/util/Set;
    .param p2, "forgetConditionalScopes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 846
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 848
    .local v2, "invalidated":Ljava/lang/Object;
    move-object/from16 v3, p1

    .local v3, "$this$fastForEach$iv":Ljava/util/Set;
    const/4 v4, 0x0

    .line 1473
    .local v4, "$i$f$fastForEach":I
    instance-of v5, v3, Landroidx/compose/runtime/collection/IdentityArraySet;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    .line 1474
    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/collection/IdentityArraySet;

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/16 v16, 0x0

    .line 1475
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1476
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v17

    .line 1477
    .local v17, "values$iv$iv":[Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "i$iv$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v12

    move/from16 v7, v18

    .end local v18    # "i$iv$iv":I
    .local v7, "i$iv$iv":I
    :goto_0
    if-ge v7, v12, :cond_a

    .line 1479
    aget-object v8, v17, v7

    const-string/jumbo v9, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v8, "value":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 849
    .local v9, "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    instance-of v10, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v10, :cond_0

    .line 850
    move-object v10, v8

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v37, v8

    move/from16 v38, v9

    goto/16 :goto_5

    .line 852
    :cond_0
    nop

    .line 853
    invoke-direct {v0, v2, v8, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v10

    .line 852
    move-object v2, v10

    .line 854
    iget-object v10, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .local v10, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/16 v18, 0x0

    .line 1480
    .local v18, "$i$f$forEachScopeOf":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1481
    .local v6, "value$iv":Ljava/lang/Object;
    if-eqz v6, :cond_9

    .line 1482
    instance-of v15, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_8

    .line 1484
    move-object v15, v6

    check-cast v15, Landroidx/collection/MutableScatterSet;

    check-cast v15, Landroidx/collection/ScatterSet;

    .local v15, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v25, 0x0

    .line 1485
    .local v25, "$i$f$forEach":I
    nop

    .line 1486
    iget-object v13, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1488
    .local v13, "k$iv$iv":[Ljava/lang/Object;
    move-object v14, v15

    .local v14, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v28, 0x0

    .line 1489
    .local v28, "$i$f$forEachIndex":I
    nop

    .line 1490
    iget-object v11, v14, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1491
    .local v11, "m$iv$iv$iv":[J
    move/from16 v30, v4

    .end local v4    # "$i$f$fastForEach":I
    .local v30, "$i$f$fastForEach":I
    array-length v4, v11

    add-int/lit8 v4, v4, -0x2

    .line 1493
    .local v4, "lastIndex$iv$iv$iv":I
    move-object/from16 v31, v5

    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v31, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v5, 0x0

    .local v5, "i$iv$iv$iv":I
    if-gt v5, v4, :cond_5

    .line 1494
    :goto_1
    aget-wide v32, v11, v5

    .line 1495
    .local v32, "slot$iv$iv$iv":J
    move-wide/from16 v34, v32

    .local v34, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v36, 0x0

    .line 1496
    .local v36, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v37, v8

    move/from16 v38, v9

    move-wide/from16 v8, v34

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v11    # "m$iv$iv$iv":[J
    .local v8, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v34, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v35, "m$iv$iv$iv":[J
    .local v37, "value":Ljava/lang/Object;
    .local v38, "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    not-long v10, v8

    const/16 v29, 0x7

    shl-long v10, v10, v29

    and-long/2addr v10, v8

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v8, v10, v26

    .line 1495
    .end local v8    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v36    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v8, v8, v26

    if-eqz v8, :cond_4

    .line 1497
    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    .line 1498
    .local v8, "bitCount$iv$iv$iv":I
    const/4 v9, 0x0

    .local v9, "j$iv$iv$iv":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 1499
    const-wide/16 v10, 0xff

    and-long v39, v32, v10

    .local v39, "value$iv$iv$iv$iv":J
    const/4 v10, 0x0

    .line 1500
    .local v10, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    cmp-long v11, v39, v20

    if-gez v11, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    .line 1499
    .end local v10    # "$i$f$isFull":I
    .end local v39    # "value$iv$iv$iv$iv":J
    :goto_3
    if-eqz v10, :cond_2

    .line 1501
    shl-int/lit8 v10, v5, 0x3

    add-int/2addr v10, v9

    .line 1502
    .local v10, "index$iv$iv$iv":I
    move v11, v10

    .local v11, "index$iv$iv":I
    const/16 v36, 0x0

    .line 1503
    .local v36, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    aget-object v39, v13, v11

    move/from16 v40, v10

    .end local v10    # "index$iv$iv$iv":I
    .local v40, "index$iv$iv$iv":I
    move-object/from16 v10, v39

    check-cast v10, Landroidx/compose/runtime/DerivedState;

    .local v10, "it":Landroidx/compose/runtime/DerivedState;
    const/16 v39, 0x0

    .line 855
    .local v39, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 856
    invoke-direct {v0, v2, v10, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v41

    .line 855
    move-object/from16 v2, v41

    .line 857
    nop

    .line 1503
    .end local v10    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v39    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 1504
    nop

    .line 1502
    .end local v11    # "index$iv$iv":I
    .end local v36    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    nop

    .line 1505
    .end local v40    # "index$iv$iv$iv":I
    :cond_2
    const/16 v10, 0x8

    shr-long v32, v32, v10

    .line 1498
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/16 v10, 0x8

    .line 1507
    .end local v9    # "j$iv$iv$iv":I
    if-ne v8, v10, :cond_7

    .line 1493
    .end local v8    # "bitCount$iv$iv$iv":I
    .end local v32    # "slot$iv$iv$iv":J
    :cond_4
    if-eq v5, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v34

    move-object/from16 v11, v35

    move-object/from16 v8, v37

    move/from16 v9, v38

    goto :goto_1

    .end local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v35    # "m$iv$iv$iv":[J
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v8, "value":Ljava/lang/Object;
    .local v9, "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v10, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v11, "m$iv$iv$iv":[J
    :cond_5
    move-object/from16 v37, v8

    move/from16 v38, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    .line 1510
    .end local v5    # "i$iv$iv$iv":I
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v11    # "m$iv$iv$iv":[J
    .restart local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v35    # "m$iv$iv$iv":[J
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    :cond_6
    nop

    .line 1511
    .end local v4    # "lastIndex$iv$iv$iv":I
    .end local v14    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v28    # "$i$f$forEachIndex":I
    .end local v35    # "m$iv$iv$iv":[J
    :cond_7
    nop

    .end local v13    # "k$iv$iv":[Ljava/lang/Object;
    .end local v15    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v25    # "$i$f$forEach":I
    goto :goto_4

    .line 1512
    .end local v30    # "$i$f$fastForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v4, "$i$f$fastForEach":I
    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_8
    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v37, v8

    move/from16 v38, v9

    move-object/from16 v34, v10

    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "$i$f$fastForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    move-object v4, v6

    check-cast v4, Landroidx/compose/runtime/DerivedState;

    .local v4, "it":Landroidx/compose/runtime/DerivedState;
    const/4 v5, 0x0

    .line 855
    .local v5, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 856
    invoke-direct {v0, v2, v4, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v8

    .line 855
    move-object v2, v8

    .line 857
    nop

    .line 1512
    .end local v4    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v5    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    goto :goto_4

    .line 1481
    .end local v30    # "$i$f$fastForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v4, "$i$f$fastForEach":I
    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_9
    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v37, v8

    move/from16 v38, v9

    move-object/from16 v34, v10

    .line 1515
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v30    # "$i$f$fastForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    :goto_4
    nop

    .line 859
    .end local v18    # "$i$f$forEachScopeOf":I
    .end local v34    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :goto_5
    nop

    .line 1479
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    nop

    .line 1477
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v30

    move-object/from16 v5, v31

    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v30    # "$i$f$fastForEach":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v4    # "$i$f$fastForEach":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_a
    move/from16 v30, v4

    move-object/from16 v31, v5

    .line 1516
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v7    # "i$iv$iv":I
    .restart local v30    # "$i$f$fastForEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    move-object/from16 v18, v3

    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "values$iv$iv":[Ljava/lang/Object;
    .end local v31    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    goto/16 :goto_e

    .line 1517
    .end local v30    # "$i$f$fastForEach":I
    .restart local v4    # "$i$f$fastForEach":I
    :cond_b
    move/from16 v30, v4

    .end local v4    # "$i$f$fastForEach":I
    .restart local v30    # "$i$f$fastForEach":I
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1518
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .restart local v8    # "value":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 849
    .restart local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    instance-of v10, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v10, :cond_c

    .line 850
    move-object v10, v8

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v28, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v33, v8

    move/from16 v34, v9

    goto/16 :goto_d

    .line 852
    :cond_c
    const/4 v11, 0x0

    .line 853
    invoke-direct {v0, v2, v8, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v10

    .line 852
    move-object v2, v10

    .line 854
    iget-object v10, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .restart local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v12, 0x0

    .line 1480
    .local v12, "$i$f$forEachScopeOf":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1481
    .local v13, "value$iv":Ljava/lang/Object;
    if-eqz v13, :cond_15

    .line 1482
    instance-of v14, v13, Landroidx/collection/MutableScatterSet;

    if-eqz v14, :cond_14

    .line 1484
    move-object v14, v13

    check-cast v14, Landroidx/collection/MutableScatterSet;

    check-cast v14, Landroidx/collection/ScatterSet;

    .local v14, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v15, 0x0

    .line 1485
    .local v15, "$i$f$forEach":I
    nop

    .line 1486
    iget-object v11, v14, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1488
    .local v11, "k$iv$iv":[Ljava/lang/Object;
    move-object/from16 v16, v14

    .local v16, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v17, 0x0

    .line 1519
    .local v17, "$i$f$forEachIndex":I
    nop

    .line 1520
    move-object/from16 v18, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .local v3, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v16, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .local v18, "$this$fastForEach$iv":Ljava/util/Set;
    iget-object v4, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1521
    .local v4, "m$iv$iv$iv":[J
    move-object/from16 v25, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v25, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v3, v4

    add-int/lit8 v3, v3, -0x2

    .line 1523
    .local v3, "lastIndex$iv$iv$iv":I
    move/from16 v28, v5

    .end local v5    # "$i$f$forEach":I
    .local v28, "$i$f$forEach":I
    const/4 v5, 0x0

    .local v5, "i$iv$iv$iv":I
    if-gt v5, v3, :cond_11

    .line 1524
    :goto_7
    aget-wide v31, v4, v5

    .line 1525
    .local v31, "slot$iv$iv$iv":J
    move-wide/from16 v33, v31

    .local v33, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v35, 0x0

    .line 1496
    .local v35, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-wide/from16 v6, v33

    move-object/from16 v33, v8

    move/from16 v34, v9

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v6, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v33, "value":Ljava/lang/Object;
    .local v34, "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .local v37, "element$iv$iv":Ljava/lang/Object;
    not-long v8, v6

    const/16 v29, 0x7

    shl-long v8, v8, v29

    and-long/2addr v8, v6

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v8, v26

    .line 1525
    .end local v6    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v35    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v6, v6, v26

    if-eqz v6, :cond_10

    .line 1530
    sub-int v6, v5, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    .line 1531
    .local v6, "bitCount$iv$iv$iv":I
    const/4 v7, 0x0

    .local v7, "j$iv$iv$iv":I
    :goto_8
    if-ge v7, v6, :cond_f

    .line 1532
    const-wide/16 v8, 0xff

    and-long v38, v31, v8

    .local v38, "value$iv$iv$iv$iv":J
    const/4 v8, 0x0

    .line 1500
    .local v8, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    cmp-long v9, v38, v20

    if-gez v9, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    .line 1532
    .end local v8    # "$i$f$isFull":I
    .end local v38    # "value$iv$iv$iv$iv":J
    :goto_9
    if-eqz v8, :cond_e

    .line 1533
    shl-int/lit8 v8, v5, 0x3

    add-int/2addr v8, v7

    .line 1534
    .local v8, "index$iv$iv$iv":I
    move v9, v8

    .local v9, "index$iv$iv":I
    const/16 v35, 0x0

    .line 1535
    .local v35, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    aget-object v38, v11, v9

    move-object/from16 v39, v4

    .end local v4    # "m$iv$iv$iv":[J
    .local v39, "m$iv$iv$iv":[J
    move-object/from16 v4, v38

    check-cast v4, Landroidx/compose/runtime/DerivedState;

    .local v4, "it":Landroidx/compose/runtime/DerivedState;
    const/16 v38, 0x0

    .line 855
    .local v38, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 856
    invoke-direct {v0, v2, v4, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v40

    .line 855
    move-object/from16 v2, v40

    .line 857
    nop

    .line 1535
    .end local v4    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v38    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 1536
    nop

    .line 1534
    .end local v9    # "index$iv$iv":I
    .end local v35    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    goto :goto_a

    .line 1532
    .end local v8    # "index$iv$iv$iv":I
    .end local v39    # "m$iv$iv$iv":[J
    .local v4, "m$iv$iv$iv":[J
    :cond_e
    move-object/from16 v39, v4

    .line 1537
    .end local v4    # "m$iv$iv$iv":[J
    .restart local v39    # "m$iv$iv$iv":[J
    :goto_a
    const/16 v4, 0x8

    shr-long v31, v31, v4

    .line 1531
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v39

    goto :goto_8

    .end local v39    # "m$iv$iv$iv":[J
    .restart local v4    # "m$iv$iv$iv":[J
    :cond_f
    move-object/from16 v39, v4

    const/16 v4, 0x8

    .line 1539
    .end local v4    # "m$iv$iv$iv":[J
    .end local v7    # "j$iv$iv$iv":I
    .restart local v39    # "m$iv$iv$iv":[J
    if-ne v6, v4, :cond_13

    goto :goto_b

    .line 1525
    .end local v6    # "bitCount$iv$iv$iv":I
    .end local v39    # "m$iv$iv$iv":[J
    .restart local v4    # "m$iv$iv$iv":[J
    :cond_10
    move-object/from16 v39, v4

    .line 1523
    .end local v4    # "m$iv$iv$iv":[J
    .end local v31    # "slot$iv$iv$iv":J
    .restart local v39    # "m$iv$iv$iv":[J
    :goto_b
    if-eq v5, v3, :cond_12

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v33

    move/from16 v9, v34

    move-object/from16 v6, v36

    move-object/from16 v7, v37

    move-object/from16 v4, v39

    goto :goto_7

    .end local v33    # "value":Ljava/lang/Object;
    .end local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v37    # "element$iv$iv":Ljava/lang/Object;
    .end local v39    # "m$iv$iv$iv":[J
    .restart local v4    # "m$iv$iv$iv":[J
    .local v7, "element$iv$iv":Ljava/lang/Object;
    .local v8, "value":Ljava/lang/Object;
    .local v9, "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    :cond_11
    move-object/from16 v39, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v33, v8

    move/from16 v34, v9

    .line 1542
    .end local v4    # "m$iv$iv$iv":[J
    .end local v5    # "i$iv$iv$iv":I
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v33    # "value":Ljava/lang/Object;
    .restart local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v37    # "element$iv$iv":Ljava/lang/Object;
    .restart local v39    # "m$iv$iv$iv":[J
    :cond_12
    nop

    .line 1543
    .end local v3    # "lastIndex$iv$iv$iv":I
    .end local v17    # "$i$f$forEachIndex":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v39    # "m$iv$iv$iv":[J
    :cond_13
    nop

    .end local v11    # "k$iv$iv":[Ljava/lang/Object;
    .end local v14    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v15    # "$i$f$forEach":I
    goto :goto_c

    .line 1512
    .end local v16    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v28    # "$i$f$forEach":I
    .end local v33    # "value":Ljava/lang/Object;
    .end local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v37    # "element$iv$iv":Ljava/lang/Object;
    .local v3, "$this$fastForEach$iv":Ljava/util/Set;
    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .local v5, "$i$f$forEach":I
    .restart local v7    # "element$iv$iv":Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    :cond_14
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v28, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v33, v8

    move/from16 v34, v9

    .end local v3    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v16    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .restart local v28    # "$i$f$forEach":I
    .restart local v33    # "value":Ljava/lang/Object;
    .restart local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v37    # "element$iv$iv":Ljava/lang/Object;
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .local v3, "it":Landroidx/compose/runtime/DerivedState;
    const/4 v4, 0x0

    .line 855
    .local v4, "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    nop

    .line 856
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/HashSet;Ljava/lang/Object;Z)Ljava/util/HashSet;

    move-result-object v5

    .line 855
    move-object v2, v5

    .line 857
    nop

    .line 1512
    .end local v3    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v4    # "$i$a$-forEachScopeOf-CompositionImpl$addPendingInvalidationsLocked$2$1":I
    goto :goto_c

    .line 1481
    .end local v16    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v28    # "$i$f$forEach":I
    .end local v33    # "value":Ljava/lang/Object;
    .end local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v37    # "element$iv$iv":Ljava/lang/Object;
    .local v3, "$this$fastForEach$iv":Ljava/util/Set;
    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v5    # "$i$f$forEach":I
    .restart local v7    # "element$iv$iv":Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    .restart local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    :cond_15
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v28, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v33, v8

    move/from16 v34, v9

    .line 1515
    .end local v3    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    .restart local v16    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .restart local v28    # "$i$f$forEach":I
    .restart local v33    # "value":Ljava/lang/Object;
    .restart local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    .restart local v37    # "element$iv$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 859
    .end local v10    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v12    # "$i$f$forEachScopeOf":I
    :goto_d
    nop

    .line 1518
    .end local v33    # "value":Ljava/lang/Object;
    .end local v34    # "$i$a$-fastForEach-CompositionImpl$addPendingInvalidationsLocked$2":I
    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move/from16 v5, v28

    move-object/from16 v6, v36

    .end local v37    # "element$iv$iv":Ljava/lang/Object;
    goto/16 :goto_6

    .line 1544
    .end local v16    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v28    # "$i$f$forEach":I
    .restart local v3    # "$this$fastForEach$iv":Ljava/util/Set;
    .restart local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .restart local v5    # "$i$f$forEach":I
    :cond_16
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v28, v5

    .line 1545
    .end local v3    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    .restart local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    :goto_e
    nop

    .line 861
    .end local v18    # "$this$fastForEach$iv":Ljava/util/Set;
    .end local v30    # "$i$f$fastForEach":I
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1>"

    const-string/jumbo v4, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1"

    if-eqz v1, :cond_30

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_30

    .line 862
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .local v5, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v6, 0x0

    .line 1546
    .local v6, "$i$f$removeScopeIf":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v7

    .local v7, "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v8, 0x0

    .line 1547
    .local v8, "$i$f$removeIf":I
    move-object v9, v7

    check-cast v9, Landroidx/collection/ScatterMap;

    .local v9, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v10, 0x0

    .line 1548
    .local v10, "$i$f$forEachIndexed":I
    iget-object v11, v9, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1549
    .local v11, "m$iv$iv$iv":[J
    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    .line 1551
    .local v12, "lastIndex$iv$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv$iv":I
    if-gt v13, v12, :cond_2d

    .line 1552
    :goto_f
    aget-wide v14, v11, v13

    .line 1553
    .local v14, "slot$iv$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1554
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v24, v5

    move/from16 v25, v6

    move-wide/from16 v5, v16

    move/from16 v16, v8

    move-object/from16 v17, v9

    .end local v6    # "$i$f$removeScopeIf":I
    .end local v8    # "$i$f$removeIf":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v5, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v16, "$i$f$removeIf":I
    .local v17, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v24, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v25, "$i$f$removeScopeIf":I
    not-long v8, v5

    const/16 v28, 0x7

    shl-long v8, v8, v28

    and-long/2addr v8, v5

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v8, v26

    .line 1553
    .end local v5    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v5, v5, v26

    if-eqz v5, :cond_2c

    .line 1555
    sub-int v5, v13, v12

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    .line 1556
    .local v5, "bitCount$iv$iv$iv":I
    const/4 v6, 0x0

    .local v6, "j$iv$iv$iv":I
    :goto_10
    if-ge v6, v5, :cond_2b

    .line 1557
    const-wide/16 v8, 0xff

    and-long v30, v14, v8

    .local v30, "value$iv$iv$iv$iv":J
    const/4 v8, 0x0

    .line 1558
    .local v8, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    cmp-long v9, v30, v20

    if-gez v9, :cond_17

    const/4 v8, 0x1

    goto :goto_11

    :cond_17
    const/4 v8, 0x0

    .line 1557
    .end local v8    # "$i$f$isFull":I
    .end local v30    # "value$iv$iv$iv$iv":J
    :goto_11
    if-eqz v8, :cond_2a

    .line 1559
    shl-int/lit8 v8, v13, 0x3

    add-int/2addr v8, v6

    .line 1560
    .local v8, "index$iv$iv$iv":I
    move v9, v8

    .local v9, "index$iv$iv":I
    const/16 v18, 0x0

    .line 1561
    .local v18, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    iget-object v1, v7, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v9

    iget-object v1, v7, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v9

    .local v1, "value$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 1562
    .local v28, "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    nop

    .line 1563
    move/from16 v30, v8

    .end local v8    # "index$iv$iv$iv":I
    .local v30, "index$iv$iv$iv":I
    instance-of v8, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_24

    .line 1565
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroidx/collection/MutableScatterSet;

    .line 1566
    .local v8, "set$iv":Landroidx/collection/MutableScatterSet;
    move-object/from16 v31, v8

    .local v31, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v32, 0x0

    .line 1567
    .local v32, "$i$f$removeIf":I
    move/from16 v33, v10

    move-object/from16 v10, v31

    move-object/from16 v31, v11

    .end local v11    # "m$iv$iv$iv":[J
    .local v10, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .local v31, "m$iv$iv$iv":[J
    .local v33, "$i$f$forEachIndexed":I
    iget-object v11, v10, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1568
    .local v11, "elements$iv$iv":[Ljava/lang/Object;
    move-object/from16 v34, v3

    move-object v3, v10

    check-cast v3, Landroidx/collection/ScatterSet;

    .local v3, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v35, 0x0

    .line 1569
    .local v35, "$i$f$forEachIndex":I
    nop

    .line 1570
    iget-object v0, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1571
    .local v0, "m$iv$iv$iv":[J
    move-object/from16 v36, v3

    .end local v3    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v36, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    .line 1573
    .local v3, "lastIndex$iv$iv$iv":I
    move/from16 v37, v12

    .end local v12    # "lastIndex$iv$iv$iv":I
    .local v37, "lastIndex$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv$iv$iv":I
    if-gt v12, v3, :cond_21

    .line 1574
    :goto_12
    aget-wide v38, v0, v12

    .line 1575
    .local v38, "slot$iv$iv$iv":J
    move-wide/from16 v40, v38

    .local v40, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v42, 0x0

    .line 1576
    .local v42, "$i$f$maskEmptyOrDeleted":I
    move/from16 v43, v5

    move/from16 v44, v6

    move-wide/from16 v45, v14

    move-wide/from16 v5, v40

    move/from16 v40, v13

    .end local v6    # "j$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .local v5, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v40, "i$iv$iv$iv":I
    .local v43, "bitCount$iv$iv$iv":I
    .local v44, "j$iv$iv$iv":I
    .local v45, "slot$iv$iv$iv":J
    not-long v13, v5

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v5

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v13, v26

    .line 1575
    .end local v5    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v42    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v5, v5, v26

    if-eqz v5, :cond_20

    .line 1577
    sub-int v5, v12, v3

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v15, v5, 0x8

    .line 1578
    .local v15, "bitCount$iv$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv$iv":I
    :goto_13
    if-ge v5, v15, :cond_1f

    .line 1579
    const-wide/16 v13, 0xff

    and-long v41, v38, v13

    .local v41, "value$iv$iv$iv$iv":J
    const/4 v6, 0x0

    .line 1580
    .local v6, "$i$f$isFull":I
    const-wide/16 v13, 0x80

    cmp-long v47, v41, v13

    if-gez v47, :cond_18

    const/4 v6, 0x1

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    .line 1579
    .end local v6    # "$i$f$isFull":I
    .end local v41    # "value$iv$iv$iv$iv":J
    :goto_14
    if-eqz v6, :cond_1e

    .line 1581
    shl-int/lit8 v6, v12, 0x3

    add-int/2addr v6, v5

    .line 1582
    .local v6, "index$iv$iv$iv":I
    move v13, v6

    .local v13, "index$iv$iv":I
    const/4 v14, 0x0

    .line 1583
    .local v14, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    aget-object v41, v11, v13

    move-object/from16 v42, v0

    .end local v0    # "m$iv$iv$iv":[J
    .local v42, "m$iv$iv$iv":[J
    move-object/from16 v0, v41

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v0, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/16 v41, 0x0

    .line 863
    .local v41, "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$3":I
    move/from16 v47, v6

    .end local v6    # "index$iv$iv$iv":I
    .local v47, "index$iv$iv$iv":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getConditionallyInvalidatedScopes$p(Landroidx/compose/runtime/CompositionImpl;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    if-eqz v2, :cond_19

    move-object v6, v2

    .line 1383
    .local v6, "it":Ljava/util/HashSet;
    const/16 v48, 0x0

    .line 863
    .local v48, "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$3$1":I
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v48, v0

    const/4 v0, 0x1

    .end local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v6    # "it":Ljava/util/HashSet;
    .local v48, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    if-ne v6, v0, :cond_1a

    const/4 v6, 0x1

    goto :goto_15

    .end local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :cond_19
    move-object/from16 v48, v0

    .end local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :cond_1a
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_1b

    goto :goto_16

    :cond_1b
    const/4 v6, 0x0

    goto :goto_17

    .end local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :cond_1c
    move-object/from16 v48, v0

    .end local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :goto_16
    const/4 v6, 0x1

    .line 1583
    .end local v41    # "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$3":I
    .end local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    :goto_17
    if-eqz v6, :cond_1d

    .line 1584
    invoke-virtual {v10, v13}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 1586
    :cond_1d
    nop

    .line 1582
    .end local v13    # "index$iv$iv":I
    .end local v14    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    goto :goto_18

    .line 1579
    .end local v42    # "m$iv$iv$iv":[J
    .end local v47    # "index$iv$iv$iv":I
    .local v0, "m$iv$iv$iv":[J
    :cond_1e
    move-object/from16 v42, v0

    .line 1587
    .end local v0    # "m$iv$iv$iv":[J
    .restart local v42    # "m$iv$iv$iv":[J
    :goto_18
    const/16 v0, 0x8

    shr-long v38, v38, v0

    .line 1578
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v42

    goto :goto_13

    .end local v42    # "m$iv$iv$iv":[J
    .restart local v0    # "m$iv$iv$iv":[J
    :cond_1f
    move-object/from16 v42, v0

    const/16 v0, 0x8

    .line 1589
    .end local v0    # "m$iv$iv$iv":[J
    .end local v5    # "j$iv$iv$iv":I
    .restart local v42    # "m$iv$iv$iv":[J
    if-ne v15, v0, :cond_23

    goto :goto_19

    .line 1575
    .end local v15    # "bitCount$iv$iv$iv":I
    .end local v42    # "m$iv$iv$iv":[J
    .restart local v0    # "m$iv$iv$iv":[J
    :cond_20
    move-object/from16 v42, v0

    .line 1573
    .end local v0    # "m$iv$iv$iv":[J
    .end local v38    # "slot$iv$iv$iv":J
    .restart local v42    # "m$iv$iv$iv":[J
    :goto_19
    if-eq v12, v3, :cond_22

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v40

    move-object/from16 v0, v42

    move/from16 v5, v43

    move/from16 v6, v44

    move-wide/from16 v14, v45

    goto/16 :goto_12

    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "m$iv$iv$iv":[J
    .end local v43    # "bitCount$iv$iv$iv":I
    .end local v44    # "j$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v0    # "m$iv$iv$iv":[J
    .local v5, "bitCount$iv$iv$iv":I
    .local v6, "j$iv$iv$iv":I
    .local v13, "i$iv$iv$iv":I
    .local v14, "slot$iv$iv$iv":J
    :cond_21
    move-object/from16 v42, v0

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v40, v13

    move-wide/from16 v45, v14

    .line 1592
    .end local v0    # "m$iv$iv$iv":[J
    .end local v5    # "bitCount$iv$iv$iv":I
    .end local v6    # "j$iv$iv$iv":I
    .end local v12    # "i$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "m$iv$iv$iv":[J
    .restart local v43    # "bitCount$iv$iv$iv":I
    .restart local v44    # "j$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    :cond_22
    nop

    .line 1593
    .end local v3    # "lastIndex$iv$iv$iv":I
    .end local v35    # "$i$f$forEachIndex":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v42    # "m$iv$iv$iv":[J
    :cond_23
    nop

    .line 1594
    .end local v10    # "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v11    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v32    # "$i$f$removeIf":I
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v6

    move v0, v6

    const/4 v6, 0x1

    .end local v8    # "set$iv":Landroidx/collection/MutableScatterSet;
    goto :goto_1c

    .line 1598
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v37    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "bitCount$iv$iv$iv":I
    .end local v44    # "j$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v5    # "bitCount$iv$iv$iv":I
    .restart local v6    # "j$iv$iv$iv":I
    .local v10, "$i$f$forEachIndexed":I
    .local v11, "m$iv$iv$iv":[J
    .local v12, "lastIndex$iv$iv$iv":I
    .restart local v13    # "i$iv$iv$iv":I
    .restart local v14    # "slot$iv$iv$iv":J
    :cond_24
    move-object/from16 v34, v3

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v33, v10

    move-object/from16 v31, v11

    move/from16 v37, v12

    move/from16 v40, v13

    move-wide/from16 v45, v14

    .end local v5    # "bitCount$iv$iv$iv":I
    .end local v6    # "j$iv$iv$iv":I
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .restart local v31    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v37    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "bitCount$iv$iv$iv":I
    .restart local v44    # "j$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v0, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 863
    .local v3, "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$3":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getConditionallyInvalidatedScopes$p(Landroidx/compose/runtime/CompositionImpl;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    if-eqz v2, :cond_25

    move-object v5, v2

    .line 1383
    .local v5, "it":Ljava/util/HashSet;
    const/4 v6, 0x0

    .line 863
    .local v6, "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$3$1":I
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    .end local v5    # "it":Ljava/util/HashSet;
    .end local v6    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$3$1":I
    if-ne v5, v6, :cond_26

    move v5, v6

    goto :goto_1a

    :cond_25
    const/4 v6, 0x1

    :cond_26
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    goto :goto_1c

    :cond_28
    const/4 v6, 0x1

    :goto_1b
    move v0, v6

    .line 1598
    .end local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$3":I
    :goto_1c
    nop

    .line 1562
    nop

    .line 1561
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v28    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    if-eqz v0, :cond_29

    .line 1599
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 1601
    :cond_29
    nop

    .line 1560
    .end local v9    # "index$iv$iv":I
    .end local v18    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    goto :goto_1d

    .line 1557
    .end local v30    # "index$iv$iv$iv":I
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v37    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "bitCount$iv$iv$iv":I
    .end local v44    # "j$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .local v5, "bitCount$iv$iv$iv":I
    .local v6, "j$iv$iv$iv":I
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v11    # "m$iv$iv$iv":[J
    .restart local v12    # "lastIndex$iv$iv$iv":I
    .restart local v13    # "i$iv$iv$iv":I
    .restart local v14    # "slot$iv$iv$iv":J
    :cond_2a
    move-object/from16 v34, v3

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v33, v10

    move-object/from16 v31, v11

    move/from16 v37, v12

    move/from16 v40, v13

    move-wide/from16 v45, v14

    const/4 v6, 0x1

    .line 1602
    .end local v5    # "bitCount$iv$iv$iv":I
    .end local v6    # "j$iv$iv$iv":I
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .restart local v31    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v37    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "bitCount$iv$iv$iv":I
    .restart local v44    # "j$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    :goto_1d
    const/16 v0, 0x8

    shr-long v14, v45, v0

    .line 1556
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v14    # "slot$iv$iv$iv":J
    add-int/lit8 v1, v44, 0x1

    move-object/from16 v0, p0

    move v6, v1

    move-object/from16 v11, v31

    move/from16 v10, v33

    move-object/from16 v3, v34

    move/from16 v12, v37

    move/from16 v13, v40

    move/from16 v5, v43

    move/from16 v1, p2

    .end local v44    # "j$iv$iv$iv":I
    .local v1, "j$iv$iv$iv":I
    goto/16 :goto_10

    .end local v1    # "j$iv$iv$iv":I
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v37    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v43    # "bitCount$iv$iv$iv":I
    .restart local v5    # "bitCount$iv$iv$iv":I
    .restart local v6    # "j$iv$iv$iv":I
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v11    # "m$iv$iv$iv":[J
    .restart local v12    # "lastIndex$iv$iv$iv":I
    .restart local v13    # "i$iv$iv$iv":I
    :cond_2b
    move-object/from16 v34, v3

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v33, v10

    move-object/from16 v31, v11

    move/from16 v37, v12

    move/from16 v40, v13

    move-wide/from16 v45, v14

    const/16 v0, 0x8

    const/4 v6, 0x1

    .line 1604
    .end local v5    # "bitCount$iv$iv$iv":I
    .end local v6    # "j$iv$iv$iv":I
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .restart local v31    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v37    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v43    # "bitCount$iv$iv$iv":I
    .restart local v45    # "slot$iv$iv$iv":J
    move/from16 v15, v43

    .end local v43    # "bitCount$iv$iv$iv":I
    .restart local v15    # "bitCount$iv$iv$iv":I
    if-ne v15, v0, :cond_2f

    goto :goto_1e

    .line 1553
    .end local v15    # "bitCount$iv$iv$iv":I
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    .end local v37    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v45    # "slot$iv$iv$iv":J
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v11    # "m$iv$iv$iv":[J
    .restart local v12    # "lastIndex$iv$iv$iv":I
    .restart local v13    # "i$iv$iv$iv":I
    .restart local v14    # "slot$iv$iv$iv":J
    :cond_2c
    move-object/from16 v34, v3

    move/from16 v33, v10

    move-object/from16 v31, v11

    move/from16 v37, v12

    move/from16 v40, v13

    const/4 v6, 0x1

    .line 1551
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v13    # "i$iv$iv$iv":I
    .end local v14    # "slot$iv$iv$iv":J
    .restart local v31    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$f$forEachIndexed":I
    .restart local v37    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    :goto_1e
    move/from16 v12, v37

    move/from16 v13, v40

    .end local v37    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .restart local v12    # "lastIndex$iv$iv$iv":I
    .restart local v13    # "i$iv$iv$iv":I
    if-eq v13, v12, :cond_2e

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v5, v24

    move/from16 v6, v25

    move-object/from16 v11, v31

    move/from16 v10, v33

    move-object/from16 v3, v34

    goto/16 :goto_f

    .end local v16    # "$i$f$removeIf":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v24    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v25    # "$i$f$removeScopeIf":I
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v6, "$i$f$removeScopeIf":I
    .local v8, "$i$f$removeIf":I
    .local v9, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v11    # "m$iv$iv$iv":[J
    :cond_2d
    move-object/from16 v24, v5

    move/from16 v25, v6

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v33, v10

    move-object/from16 v31, v11

    .line 1607
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v6    # "$i$f$removeScopeIf":I
    .end local v8    # "$i$f$removeIf":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv$iv":[J
    .end local v13    # "i$iv$iv$iv":I
    .restart local v16    # "$i$f$removeIf":I
    .restart local v17    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v25    # "$i$f$removeScopeIf":I
    .restart local v31    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$f$forEachIndexed":I
    :cond_2e
    nop

    .line 1608
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v31    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndexed":I
    :cond_2f
    nop

    .line 1609
    .end local v7    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v16    # "$i$f$removeIf":I
    nop

    .line 865
    .end local v24    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v25    # "$i$f$removeScopeIf":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 866
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    move-object/from16 v18, v2

    goto/16 :goto_29

    .line 861
    :cond_30
    move-object/from16 v34, v3

    const/4 v6, 0x1

    .line 868
    if-eqz v2, :cond_42

    move-object v1, v2

    .local v1, "it":Ljava/util/HashSet;
    const/4 v3, 0x0

    .line 869
    .local v3, "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v7, 0x0

    .line 1610
    .local v7, "$i$f$removeScopeIf":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v8

    .local v8, "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v9, 0x0

    .line 1611
    .local v9, "$i$f$removeIf":I
    move-object v10, v8

    check-cast v10, Landroidx/collection/ScatterMap;

    .local v10, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v11, 0x0

    .line 1612
    .local v11, "$i$f$forEachIndexed":I
    iget-object v12, v10, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1613
    .local v12, "m$iv$iv$iv":[J
    array-length v13, v12

    add-int/lit8 v13, v13, -0x2

    .line 1615
    .local v13, "lastIndex$iv$iv$iv":I
    const/4 v14, 0x0

    .local v14, "i$iv$iv$iv":I
    if-gt v14, v13, :cond_3f

    .line 1616
    :goto_1f
    aget-wide v16, v12, v14

    .line 1617
    .local v16, "slot$iv$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1618
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move/from16 v25, v7

    move-wide/from16 v6, v18

    move-object/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "invalidated":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .end local v7    # "$i$f$removeScopeIf":I
    .local v6, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v18, "invalidated":Ljava/lang/Object;
    .local v19, "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .restart local v25    # "$i$f$removeScopeIf":I
    not-long v2, v6

    const/16 v28, 0x7

    shl-long v2, v2, v28

    and-long/2addr v2, v6

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v26

    .line 1617
    .end local v6    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v26

    if-eqz v2, :cond_3e

    .line 1619
    sub-int v2, v14, v13

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v15, v2, 0x8

    .line 1620
    .local v15, "bitCount$iv$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv$iv":I
    :goto_20
    if-ge v2, v15, :cond_3d

    .line 1621
    const-wide/16 v6, 0xff

    and-long v30, v16, v6

    .local v30, "value$iv$iv$iv$iv":J
    const/4 v3, 0x0

    .line 1622
    .local v3, "$i$f$isFull":I
    const-wide/16 v6, 0x80

    cmp-long v28, v30, v6

    if-gez v28, :cond_31

    const/4 v6, 0x1

    goto :goto_21

    :cond_31
    const/4 v6, 0x0

    .line 1621
    .end local v3    # "$i$f$isFull":I
    .end local v30    # "value$iv$iv$iv$iv":J
    :goto_21
    if-eqz v6, :cond_3c

    .line 1623
    shl-int/lit8 v3, v14, 0x3

    add-int/2addr v3, v2

    .line 1624
    .local v3, "index$iv$iv$iv":I
    move v6, v3

    .local v6, "index$iv$iv":I
    const/4 v7, 0x0

    .line 1625
    .local v7, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    iget-object v0, v8, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v0, v8, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v6

    .local v0, "value$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 1626
    .restart local v28    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    nop

    .line 1627
    move/from16 v30, v3

    .end local v3    # "index$iv$iv$iv":I
    .local v30, "index$iv$iv$iv":I
    instance-of v3, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_3a

    .line 1629
    move-object/from16 v3, v34

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v0

    check-cast v31, Landroidx/collection/MutableScatterSet;

    .line 1630
    .local v31, "set$iv":Landroidx/collection/MutableScatterSet;
    move-object/from16 v32, v31

    .local v32, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v33, 0x0

    .line 1631
    .local v33, "$i$f$removeIf":I
    move-object/from16 v3, v32

    move-object/from16 v32, v5

    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v3, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .local v32, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    iget-object v5, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1632
    .local v5, "elements$iv$iv":[Ljava/lang/Object;
    move/from16 v35, v7

    .end local v7    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    .local v35, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    move-object v7, v3

    check-cast v7, Landroidx/collection/ScatterSet;

    .local v7, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v36, 0x0

    .line 1633
    .local v36, "$i$f$forEachIndex":I
    nop

    .line 1634
    move/from16 v37, v9

    .end local v9    # "$i$f$removeIf":I
    .local v37, "$i$f$removeIf":I
    iget-object v9, v7, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1635
    .local v9, "m$iv$iv$iv":[J
    move-object/from16 v38, v7

    .end local v7    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v38, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v7, v9

    add-int/lit8 v7, v7, -0x2

    .line 1637
    .local v7, "lastIndex$iv$iv$iv":I
    move-object/from16 v39, v10

    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v39, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v10, 0x0

    .local v10, "i$iv$iv$iv":I
    if-gt v10, v7, :cond_37

    .line 1638
    :goto_22
    aget-wide v40, v9, v10

    .line 1639
    .local v40, "slot$iv$iv$iv":J
    move-wide/from16 v42, v40

    .local v42, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v44, 0x0

    .line 1618
    .local v44, "$i$f$maskEmptyOrDeleted":I
    move/from16 v45, v11

    move-object/from16 v46, v12

    move-wide/from16 v11, v42

    move/from16 v42, v13

    move/from16 v43, v14

    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v42, "lastIndex$iv$iv$iv":I
    .local v43, "i$iv$iv$iv":I
    .local v45, "$i$f$forEachIndexed":I
    .local v46, "m$iv$iv$iv":[J
    not-long v13, v11

    const/16 v29, 0x7

    shl-long v13, v13, v29

    and-long/2addr v13, v11

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v13, v26

    .line 1639
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v44    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v26

    if-eqz v11, :cond_36

    .line 1644
    sub-int v11, v10, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1645
    .local v11, "bitCount$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv$iv":I
    :goto_23
    if-ge v12, v11, :cond_35

    .line 1646
    const-wide/16 v13, 0xff

    and-long v22, v40, v13

    .local v22, "value$iv$iv$iv$iv":J
    const/16 v44, 0x0

    .line 1622
    .local v44, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    cmp-long v47, v22, v20

    if-gez v47, :cond_32

    const/16 v22, 0x1

    goto :goto_24

    :cond_32
    const/16 v22, 0x0

    .line 1646
    .end local v22    # "value$iv$iv$iv$iv":J
    .end local v44    # "$i$f$isFull":I
    :goto_24
    if-eqz v22, :cond_34

    .line 1647
    shl-int/lit8 v22, v10, 0x3

    add-int v22, v22, v12

    .line 1648
    .local v22, "index$iv$iv$iv":I
    move/from16 v23, v22

    .local v23, "index$iv$iv":I
    const/16 v44, 0x0

    .line 1649
    .local v44, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    move/from16 v13, v23

    .end local v23    # "index$iv$iv":I
    .local v13, "index$iv$iv":I
    aget-object v14, v5, v13

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v14, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/16 v23, 0x0

    .line 869
    .local v23, "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$4$1":I
    invoke-virtual {v1, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1649
    .end local v14    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v23    # "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$4$1":I
    if-eqz v14, :cond_33

    .line 1650
    invoke-virtual {v3, v13}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 1652
    :cond_33
    nop

    .line 1648
    .end local v13    # "index$iv$iv":I
    .end local v44    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    nop

    .line 1653
    .end local v22    # "index$iv$iv$iv":I
    :cond_34
    const/16 v13, 0x8

    shr-long v40, v40, v13

    .line 1645
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_35
    const/16 v13, 0x8

    const-wide/16 v20, 0x80

    .line 1655
    .end local v12    # "j$iv$iv$iv":I
    if-ne v11, v13, :cond_39

    goto :goto_25

    .line 1639
    .end local v11    # "bitCount$iv$iv$iv":I
    :cond_36
    const-wide/16 v20, 0x80

    .line 1637
    .end local v40    # "slot$iv$iv$iv":J
    :goto_25
    if-eq v10, v7, :cond_38

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v42

    move/from16 v14, v43

    move/from16 v11, v45

    move-object/from16 v12, v46

    goto :goto_22

    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .local v11, "$i$f$forEachIndexed":I
    .local v12, "m$iv$iv$iv":[J
    .local v13, "lastIndex$iv$iv$iv":I
    .local v14, "i$iv$iv$iv":I
    :cond_37
    move/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v42, v13

    move/from16 v43, v14

    const-wide/16 v20, 0x80

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v29, 0x7

    .line 1658
    .end local v10    # "i$iv$iv$iv":I
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v42    # "lastIndex$iv$iv$iv":I
    .restart local v43    # "i$iv$iv$iv":I
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    :cond_38
    nop

    .line 1659
    .end local v7    # "lastIndex$iv$iv$iv":I
    .end local v9    # "m$iv$iv$iv":[J
    .end local v36    # "$i$f$forEachIndex":I
    .end local v38    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    :cond_39
    nop

    .line 1660
    .end local v3    # "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v5    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v33    # "$i$f$removeIf":I
    invoke-virtual/range {v31 .. v31}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    .end local v31    # "set$iv":Landroidx/collection/MutableScatterSet;
    goto :goto_26

    .line 1664
    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v35    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v7, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    .local v9, "$i$f$removeIf":I
    .local v10, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v11    # "$i$f$forEachIndexed":I
    .restart local v12    # "m$iv$iv$iv":[J
    .restart local v13    # "lastIndex$iv$iv$iv":I
    .restart local v14    # "i$iv$iv$iv":I
    :cond_3a
    move-object/from16 v32, v5

    move/from16 v35, v7

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v42, v13

    move/from16 v43, v14

    const-wide/16 v20, 0x80

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v29, 0x7

    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v7    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    .end local v9    # "$i$f$removeIf":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v35    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "lastIndex$iv$iv$iv":I
    .restart local v43    # "i$iv$iv$iv":I
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v3, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v5, 0x0

    .line 869
    .local v5, "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$4$1":I
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    .line 1664
    .end local v3    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v5    # "$i$a$-removeScopeIf-CompositionImpl$addPendingInvalidationsLocked$4$1":I
    :goto_26
    nop

    .line 1626
    nop

    .line 1625
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v28    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    if-eqz v3, :cond_3b

    .line 1665
    invoke-virtual {v8, v6}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 1667
    :cond_3b
    nop

    .line 1624
    .end local v6    # "index$iv$iv":I
    .end local v35    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    goto :goto_27

    .line 1621
    .end local v30    # "index$iv$iv$iv":I
    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v9    # "$i$f$removeIf":I
    .restart local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v11    # "$i$f$forEachIndexed":I
    .restart local v12    # "m$iv$iv$iv":[J
    .restart local v13    # "lastIndex$iv$iv$iv":I
    .restart local v14    # "i$iv$iv$iv":I
    :cond_3c
    move-object/from16 v32, v5

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v42, v13

    move/from16 v43, v14

    const-wide/16 v20, 0x80

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v29, 0x7

    .line 1668
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v9    # "$i$f$removeIf":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "lastIndex$iv$iv$iv":I
    .restart local v43    # "i$iv$iv$iv":I
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    :goto_27
    const/16 v0, 0x8

    shr-long v16, v16, v0

    .line 1620
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v32

    move/from16 v9, v37

    move-object/from16 v10, v39

    move/from16 v13, v42

    move/from16 v14, v43

    move/from16 v11, v45

    move-object/from16 v12, v46

    goto/16 :goto_20

    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v9    # "$i$f$removeIf":I
    .restart local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v11    # "$i$f$forEachIndexed":I
    .restart local v12    # "m$iv$iv$iv":[J
    .restart local v13    # "lastIndex$iv$iv$iv":I
    .restart local v14    # "i$iv$iv$iv":I
    :cond_3d
    move-object/from16 v32, v5

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v42, v13

    move/from16 v43, v14

    const/16 v0, 0x8

    const-wide/16 v20, 0x80

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v29, 0x7

    .line 1670
    .end local v2    # "j$iv$iv$iv":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v9    # "$i$f$removeIf":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "lastIndex$iv$iv$iv":I
    .restart local v43    # "i$iv$iv$iv":I
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    if-ne v15, v0, :cond_41

    goto :goto_28

    .line 1617
    .end local v15    # "bitCount$iv$iv$iv":I
    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v9    # "$i$f$removeIf":I
    .restart local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v11    # "$i$f$forEachIndexed":I
    .restart local v12    # "m$iv$iv$iv":[J
    .restart local v13    # "lastIndex$iv$iv$iv":I
    .restart local v14    # "i$iv$iv$iv":I
    :cond_3e
    move-object/from16 v32, v5

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v42, v13

    move/from16 v43, v14

    const/16 v0, 0x8

    const-wide/16 v20, 0x80

    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v29, 0x7

    .line 1615
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v9    # "$i$f$removeIf":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .end local v16    # "slot$iv$iv$iv":J
    .restart local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "lastIndex$iv$iv$iv":I
    .restart local v43    # "i$iv$iv$iv":I
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    :goto_28
    move/from16 v13, v42

    move/from16 v14, v43

    .end local v42    # "lastIndex$iv$iv$iv":I
    .end local v43    # "i$iv$iv$iv":I
    .restart local v13    # "lastIndex$iv$iv$iv":I
    .restart local v14    # "i$iv$iv$iv":I
    if-eq v14, v13, :cond_40

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v7, v25

    move-object/from16 v5, v32

    move/from16 v9, v37

    move-object/from16 v10, v39

    move/from16 v11, v45

    move-object/from16 v12, v46

    const/4 v6, 0x1

    goto/16 :goto_1f

    .end local v18    # "invalidated":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .end local v25    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    .local v2, "invalidated":Ljava/lang/Object;
    .local v3, "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v7, "$i$f$removeScopeIf":I
    .restart local v9    # "$i$f$removeIf":I
    .restart local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v11    # "$i$f$forEachIndexed":I
    .restart local v12    # "m$iv$iv$iv":[J
    :cond_3f
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v32, v5

    move/from16 v25, v7

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v45, v11

    move-object/from16 v46, v12

    .line 1673
    .end local v2    # "invalidated":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v7    # "$i$f$removeScopeIf":I
    .end local v9    # "$i$f$removeIf":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v11    # "$i$f$forEachIndexed":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v14    # "i$iv$iv$iv":I
    .restart local v18    # "invalidated":Ljava/lang/Object;
    .restart local v19    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    .restart local v25    # "$i$f$removeScopeIf":I
    .restart local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v45    # "$i$f$forEachIndexed":I
    .restart local v46    # "m$iv$iv$iv":[J
    :cond_40
    nop

    .line 1674
    .end local v13    # "lastIndex$iv$iv$iv":I
    .end local v39    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v45    # "$i$f$forEachIndexed":I
    .end local v46    # "m$iv$iv$iv":[J
    :cond_41
    nop

    .line 1675
    .end local v8    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v37    # "$i$f$removeIf":I
    nop

    .line 870
    .end local v25    # "$i$f$removeScopeIf":I
    .end local v32    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 871
    nop

    .end local v1    # "it":Ljava/util/HashSet;
    .end local v19    # "$i$a$-let-CompositionImpl$addPendingInvalidationsLocked$4":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 868
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_29

    .end local v18    # "invalidated":Ljava/lang/Object;
    .restart local v2    # "invalidated":Ljava/lang/Object;
    :cond_42
    move-object/from16 v18, v2

    .line 873
    .end local v2    # "invalidated":Ljava/lang/Object;
    .restart local v18    # "invalidated":Ljava/lang/Object;
    :goto_29
    return-void
.end method

.method private final applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 51
    .param p1, "changes"    # Landroidx/compose/runtime/changelist/ChangeList;

    .line 968
    move-object/from16 v1, p0

    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v2, Ljava/util/Set;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    move-object v2, v0

    .line 969
    .local v2, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    nop

    .line 970
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    .line 970
    :cond_0
    return-void

    .line 971
    :cond_1
    :try_start_1
    const-string v0, "Compose:applyChanges"

    move-object v3, v0

    .local v3, "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1905
    .local v4, "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v5, v0

    .line 1906
    .local v5, "token$iv":Ljava/lang/Object;
    nop

    .line 1907
    const/4 v6, 0x0

    .line 972
    .local v6, "$i$a$-trace-CompositionImpl$applyChangesInLocked$1":I
    :try_start_2
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 975
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    move-object v7, v0

    .local v7, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v8, 0x0

    .line 1908
    .local v8, "$i$f$write":I
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1909
    move-object v9, v0

    .local v9, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v10, 0x0

    .line 1910
    .local v10, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1911
    move-object v0, v9

    .local v0, "slots":Landroidx/compose/runtime/SlotWriter;
    const/4 v11, 0x0

    .line 976
    .local v11, "$i$a$-write-CompositionImpl$applyChangesInLocked$1$1":I
    :try_start_3
    iget-object v12, v1, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    move-object v13, v2

    check-cast v13, Landroidx/compose/runtime/RememberManager;

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v0, v13}, Landroidx/compose/runtime/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 977
    nop

    .end local v0    # "slots":Landroidx/compose/runtime/SlotWriter;
    .end local v11    # "$i$a$-write-CompositionImpl$applyChangesInLocked$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1911
    nop

    .line 1913
    :try_start_4
    invoke-virtual {v9}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 1914
    nop

    .line 1910
    nop

    .line 1909
    .end local v9    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v10    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1915
    nop

    .line 978
    .end local v7    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v8    # "$i$f$write":I
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v0}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 979
    nop

    .end local v6    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 1907
    nop

    .line 1916
    :try_start_5
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1907
    nop

    .line 984
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchRememberObservers()V

    .line 985
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchSideEffects()V

    .line 987
    iget-boolean v0, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-eqz v0, :cond_14

    .line 988
    :try_start_6
    const-string v0, "Compose:unobserve"

    move-object v3, v0

    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1917
    .restart local v4    # "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v5, v0

    .line 1918
    .restart local v5    # "token$iv":Ljava/lang/Object;
    nop

    .line 1919
    const/4 v0, 0x0

    .line 989
    .local v0, "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    const/4 v6, 0x0

    :try_start_7
    iput-boolean v6, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 990
    iget-object v7, v1, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .local v7, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v8, 0x0

    .line 1920
    .local v8, "$i$f$removeScopeIf":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v9

    .local v9, "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v10, 0x0

    .line 1921
    .local v10, "$i$f$removeIf":I
    move-object v11, v9

    check-cast v11, Landroidx/collection/ScatterMap;

    .local v11, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v12, 0x0

    .line 1922
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1923
    .local v13, "m$iv$iv$iv":[J
    array-length v15, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/lit8 v15, v15, -0x2

    .line 1925
    .local v15, "lastIndex$iv$iv$iv":I
    const/4 v6, 0x0

    .local v6, "i$iv$iv$iv":I
    if-gt v6, v15, :cond_11

    .line 1926
    :goto_0
    :try_start_8
    aget-wide v16, v13, v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1927
    .local v16, "slot$iv$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v20, 0x0

    .line 1928
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v3, v18

    move-object/from16 v18, v7

    move/from16 v19, v8

    .end local v4    # "$i$f$trace":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v8    # "$i$f$removeScopeIf":I
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v18, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v19, "$i$f$removeScopeIf":I
    .local v21, "sectionName$iv":Ljava/lang/String;
    .local v22, "$i$f$trace":I
    not-long v7, v3

    const/16 v23, 0x7

    shl-long v7, v7, v23

    and-long/2addr v7, v3

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v7, v24

    .line 1927
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v24

    if-eqz v3, :cond_10

    .line 1929
    sub-int v3, v6, v15

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 1930
    .local v3, "bitCount$iv$iv$iv":I
    const/4 v7, 0x0

    .local v7, "j$iv$iv$iv":I
    :goto_1
    if-ge v7, v3, :cond_f

    .line 1931
    const-wide/16 v26, 0xff

    and-long v28, v16, v26

    .local v28, "value$iv$iv$iv$iv":J
    const/4 v8, 0x0

    .line 1932
    .local v8, "$i$f$isFull":I
    const-wide/16 v30, 0x80

    cmp-long v20, v28, v30

    const/16 v32, 0x1

    if-gez v20, :cond_2

    move/from16 v8, v32

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 1931
    .end local v8    # "$i$f$isFull":I
    .end local v28    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v8, :cond_e

    .line 1933
    shl-int/lit8 v8, v6, 0x3

    add-int/2addr v8, v7

    .line 1934
    .local v8, "index$iv$iv$iv":I
    move/from16 v20, v8

    .local v20, "index$iv$iv":I
    const/16 v28, 0x0

    .line 1935
    .local v28, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    :try_start_9
    iget-object v4, v9, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move/from16 v33, v0

    move/from16 v0, v20

    .end local v20    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    .local v33, "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    aget-object v4, v4, v0

    iget-object v4, v9, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .local v4, "value$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1936
    .local v20, "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    nop

    .line 1937
    move/from16 v34, v8

    .end local v8    # "index$iv$iv$iv":I
    .local v34, "index$iv$iv$iv":I
    instance-of v8, v4, Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_b

    .line 1939
    const-string/jumbo v8, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1>"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Landroidx/collection/MutableScatterSet;

    .line 1940
    .local v8, "set$iv":Landroidx/collection/MutableScatterSet;
    move-object/from16 v35, v8

    .local v35, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v36, 0x0

    .line 1941
    .local v36, "$i$f$removeIf":I
    move/from16 v37, v10

    move-object/from16 v10, v35

    move-object/from16 v35, v11

    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v10, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .local v35, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v37, "$i$f$removeIf":I
    iget-object v11, v10, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1942
    .local v11, "elements$iv$iv":[Ljava/lang/Object;
    move-object/from16 v38, v10

    check-cast v38, Landroidx/collection/ScatterSet;

    move-object/from16 v39, v38

    .local v39, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v38, 0x0

    .line 1943
    .local v38, "$i$f$forEachIndex":I
    nop

    .line 1944
    move/from16 v40, v12

    move-object/from16 v12, v39

    move-object/from16 v39, v13

    .end local v13    # "m$iv$iv$iv":[J
    .local v12, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v39, "m$iv$iv$iv":[J
    .local v40, "$i$f$forEachIndexed":I
    iget-object v13, v12, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1945
    .restart local v13    # "m$iv$iv$iv":[J
    move-object/from16 v41, v12

    .end local v12    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v41, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v12, v13

    add-int/lit8 v12, v12, -0x2

    .line 1947
    .local v12, "lastIndex$iv$iv$iv":I
    const/4 v14, 0x0

    .local v14, "i$iv$iv$iv":I
    if-gt v14, v12, :cond_8

    .line 1948
    :goto_3
    aget-wide v42, v13, v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1949
    .local v42, "slot$iv$iv$iv":J
    move-wide/from16 v44, v42

    .local v44, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v46, 0x0

    .line 1928
    .local v46, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v47, v2

    move-wide/from16 v1, v44

    move-object/from16 v44, v5

    move/from16 v45, v6

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .local v1, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v44, "token$iv":Ljava/lang/Object;
    .local v45, "i$iv$iv$iv":I
    .local v47, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    not-long v5, v1

    shl-long v5, v5, v23

    and-long/2addr v5, v1

    and-long v1, v5, v24

    .line 1949
    .end local v1    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v46    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v24

    if-eqz v1, :cond_7

    .line 1954
    sub-int v1, v14, v12

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 1955
    .local v1, "bitCount$iv$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv$iv":I
    :goto_4
    if-ge v2, v1, :cond_6

    .line 1956
    and-long v5, v42, v26

    .local v5, "value$iv$iv$iv$iv":J
    const/16 v46, 0x0

    .line 1932
    .local v46, "$i$f$isFull":I
    cmp-long v48, v5, v30

    if-gez v48, :cond_3

    move/from16 v5, v32

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    .line 1956
    .end local v5    # "value$iv$iv$iv$iv":J
    .end local v46    # "$i$f$isFull":I
    :goto_5
    if-eqz v5, :cond_5

    .line 1957
    shl-int/lit8 v5, v14, 0x3

    add-int/2addr v5, v2

    .line 1958
    .local v5, "index$iv$iv$iv":I
    move v6, v5

    .local v6, "index$iv$iv":I
    const/16 v46, 0x0

    .line 1959
    .local v46, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    :try_start_a
    aget-object v48, v11, v6

    check-cast v48, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v48, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/16 v49, 0x0

    .line 990
    .local v49, "$i$a$-removeScopeIf-CompositionImpl$applyChangesInLocked$2$1":I
    invoke-virtual/range {v48 .. v48}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v50

    .line 1959
    .end local v48    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v49    # "$i$a$-removeScopeIf-CompositionImpl$applyChangesInLocked$2$1":I
    xor-int/lit8 v48, v50, 0x1

    if-eqz v48, :cond_4

    .line 1960
    invoke-virtual {v10, v6}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 1962
    :cond_4
    nop

    .line 1958
    .end local v6    # "index$iv$iv":I
    .end local v46    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    nop

    .line 1963
    .end local v5    # "index$iv$iv$iv":I
    :cond_5
    const/16 v5, 0x8

    shr-long v42, v42, v5

    .line 1955
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/16 v5, 0x8

    .line 1965
    .end local v2    # "j$iv$iv$iv":I
    if-ne v1, v5, :cond_a

    .line 1947
    .end local v1    # "bitCount$iv$iv$iv":I
    .end local v42    # "slot$iv$iv$iv":J
    :cond_7
    if-eq v14, v12, :cond_9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v44

    move/from16 v6, v45

    move-object/from16 v2, v47

    goto :goto_3

    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v45    # "i$iv$iv$iv":I
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .local v2, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .local v5, "token$iv":Ljava/lang/Object;
    .local v6, "i$iv$iv$iv":I
    :cond_8
    move-object/from16 v47, v2

    move-object/from16 v44, v5

    move/from16 v45, v6

    .line 1968
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v45    # "i$iv$iv$iv":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :cond_9
    nop

    .line 1969
    .end local v12    # "lastIndex$iv$iv$iv":I
    .end local v13    # "m$iv$iv$iv":[J
    .end local v38    # "$i$f$forEachIndex":I
    .end local v41    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    :cond_a
    nop

    .line 1970
    .end local v10    # "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v11    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v36    # "$i$f$removeIf":I
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v32

    .end local v8    # "set$iv":Landroidx/collection/MutableScatterSet;
    goto :goto_6

    .line 1974
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v45    # "i$iv$iv$iv":I
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "i$iv$iv$iv":I
    .local v10, "$i$f$removeIf":I
    .local v11, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v12, "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv$iv":[J
    :cond_b
    move-object/from16 v47, v2

    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v39, v13

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v10    # "$i$f$removeIf":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .restart local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "m$iv$iv$iv":[J
    .restart local v40    # "$i$f$forEachIndexed":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v45    # "i$iv$iv$iv":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v1, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 990
    .local v2, "$i$a$-removeScopeIf-CompositionImpl$applyChangesInLocked$2$1":I
    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    const/16 v32, 0x0

    .line 1974
    .end local v1    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$a$-removeScopeIf-CompositionImpl$applyChangesInLocked$2$1":I
    :goto_6
    nop

    .line 1936
    nop

    .line 1935
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    if-eqz v32, :cond_d

    .line 1975
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1977
    :cond_d
    nop

    .line 1934
    .end local v0    # "index$iv$iv":I
    .end local v28    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    goto :goto_7

    .line 1986
    .end local v3    # "bitCount$iv$iv$iv":I
    .end local v7    # "j$iv$iv$iv":I
    .end local v9    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v15    # "lastIndex$iv$iv$iv":I
    .end local v16    # "slot$iv$iv$iv":J
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$removeScopeIf":I
    .end local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v34    # "index$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    .end local v45    # "i$iv$iv$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v1, v44

    goto/16 :goto_9

    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .local v2, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v5    # "token$iv":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object/from16 v47, v2

    move-object/from16 v44, v5

    move-object/from16 v1, v44

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    goto/16 :goto_9

    .line 1931
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .local v0, "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v3    # "bitCount$iv$iv$iv":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "i$iv$iv$iv":I
    .restart local v7    # "j$iv$iv$iv":I
    .restart local v9    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .restart local v10    # "$i$f$removeIf":I
    .restart local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv$iv":[J
    .restart local v15    # "lastIndex$iv$iv$iv":I
    .restart local v16    # "slot$iv$iv$iv":J
    .restart local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v19    # "$i$f$removeScopeIf":I
    :cond_e
    move/from16 v33, v0

    move-object/from16 v47, v2

    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v39, v13

    .line 1978
    .end local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v10    # "$i$f$removeIf":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "m$iv$iv$iv":[J
    .restart local v40    # "$i$f$forEachIndexed":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v45    # "i$iv$iv$iv":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_7
    const/16 v0, 0x8

    shr-long v16, v16, v0

    .line 1930
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move v4, v0

    move/from16 v0, v33

    move-object/from16 v11, v35

    move/from16 v10, v37

    move-object/from16 v13, v39

    move/from16 v12, v40

    move-object/from16 v5, v44

    move/from16 v6, v45

    move-object/from16 v2, v47

    goto/16 :goto_1

    .end local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v45    # "i$iv$iv$iv":I
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "i$iv$iv$iv":I
    .restart local v10    # "$i$f$removeIf":I
    .restart local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv$iv":[J
    :cond_f
    move/from16 v33, v0

    move-object/from16 v47, v2

    move v0, v4

    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v39, v13

    .line 1980
    .end local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v7    # "j$iv$iv$iv":I
    .end local v10    # "$i$f$removeIf":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .restart local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "m$iv$iv$iv":[J
    .restart local v40    # "$i$f$forEachIndexed":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v45    # "i$iv$iv$iv":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    if-ne v3, v0, :cond_13

    goto :goto_8

    .line 1927
    .end local v3    # "bitCount$iv$iv$iv":I
    .end local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v45    # "i$iv$iv$iv":I
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "i$iv$iv$iv":I
    .restart local v10    # "$i$f$removeIf":I
    .restart local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv$iv":[J
    :cond_10
    move/from16 v33, v0

    move-object/from16 v47, v2

    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v39, v13

    .line 1925
    .end local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v10    # "$i$f$removeIf":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .end local v16    # "slot$iv$iv$iv":J
    .restart local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "m$iv$iv$iv":[J
    .restart local v40    # "$i$f$forEachIndexed":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v45    # "i$iv$iv$iv":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_8
    move/from16 v6, v45

    .end local v45    # "i$iv$iv$iv":I
    .restart local v6    # "i$iv$iv$iv":I
    if-eq v6, v15, :cond_12

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v3, v21

    move/from16 v4, v22

    move/from16 v0, v33

    move-object/from16 v11, v35

    move/from16 v10, v37

    move-object/from16 v13, v39

    move/from16 v12, v40

    move-object/from16 v5, v44

    move-object/from16 v2, v47

    goto/16 :goto_0

    .line 1986
    .end local v6    # "i$iv$iv$iv":I
    .end local v9    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v15    # "lastIndex$iv$iv$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$removeScopeIf":I
    .end local v21    # "sectionName$iv":Ljava/lang/String;
    .end local v22    # "$i$f$trace":I
    .end local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v37    # "$i$f$removeIf":I
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .local v3, "sectionName$iv":Ljava/lang/String;
    .local v4, "$i$f$trace":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v47, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v44, v5

    move-object/from16 v1, v44

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    .restart local v21    # "sectionName$iv":Ljava/lang/String;
    .restart local v22    # "$i$f$trace":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    goto :goto_9

    .line 1925
    .end local v21    # "sectionName$iv":Ljava/lang/String;
    .end local v22    # "$i$f$trace":I
    .end local v44    # "token$iv":Ljava/lang/Object;
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "i$iv$iv$iv":I
    .local v7, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v8, "$i$f$removeScopeIf":I
    .restart local v9    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .restart local v10    # "$i$f$removeIf":I
    .restart local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv$iv":[J
    .restart local v15    # "lastIndex$iv$iv$iv":I
    :cond_11
    move/from16 v33, v0

    move-object/from16 v47, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v44, v5

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v39, v13

    .line 1983
    .end local v0    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v6    # "i$iv$iv$iv":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v8    # "$i$f$removeScopeIf":I
    .end local v10    # "$i$f$removeIf":I
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .restart local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v19    # "$i$f$removeScopeIf":I
    .restart local v21    # "sectionName$iv":Ljava/lang/String;
    .restart local v22    # "$i$f$trace":I
    .restart local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    .restart local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v37    # "$i$f$removeIf":I
    .restart local v39    # "m$iv$iv$iv":[J
    .restart local v40    # "$i$f$forEachIndexed":I
    .restart local v44    # "token$iv":Ljava/lang/Object;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :cond_12
    nop

    .line 1984
    .end local v15    # "lastIndex$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v39    # "m$iv$iv$iv":[J
    .end local v40    # "$i$f$forEachIndexed":I
    :cond_13
    nop

    .line 1985
    .end local v9    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v37    # "$i$f$removeIf":I
    nop

    .line 991
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$removeScopeIf":I
    :try_start_b
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 992
    nop

    .end local v33    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1919
    nop

    .line 1986
    :try_start_c
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    move-object/from16 v1, v44

    .end local v44    # "token$iv":Ljava/lang/Object;
    .local v1, "token$iv":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1919
    goto :goto_a

    .line 1986
    .end local v1    # "token$iv":Ljava/lang/Object;
    .restart local v44    # "token$iv":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v1, v44

    .end local v44    # "token$iv":Ljava/lang/Object;
    .restart local v1    # "token$iv":Ljava/lang/Object;
    goto :goto_9

    .end local v1    # "token$iv":Ljava/lang/Object;
    .end local v21    # "sectionName$iv":Ljava/lang/String;
    .end local v22    # "$i$f$trace":I
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object/from16 v47, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object v1, v5

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    .restart local v1    # "token$iv":Ljava/lang/Object;
    .restart local v21    # "sectionName$iv":Ljava/lang/String;
    .restart local v22    # "$i$f$trace":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_9
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 997
    .end local v1    # "token$iv":Ljava/lang/Object;
    .end local v21    # "sectionName$iv":Ljava/lang/String;
    .end local v22    # "$i$f$trace":I
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    :catchall_5
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c

    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :catchall_6
    move-exception v0

    move-object/from16 v47, v2

    move-object/from16 v1, p0

    goto :goto_c

    .line 987
    :cond_14
    move-object/from16 v47, v2

    .line 997
    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_a
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 998
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    .line 999
    :cond_15
    nop

    .line 1000
    return-void

    .line 1913
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .local v6, "$i$a$-trace-CompositionImpl$applyChangesInLocked$1":I
    .local v7, "this_$iv":Landroidx/compose/runtime/SlotTable;
    .local v8, "$i$f$write":I
    .local v9, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .local v10, "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_7
    move-exception v0

    move-object/from16 v47, v2

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :try_start_d
    invoke-virtual {v9}, Landroidx/compose/runtime/SlotWriter;->close()V

    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1916
    .end local v6    # "$i$a$-trace-CompositionImpl$applyChangesInLocked$1":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v8    # "$i$f$write":I
    .end local v9    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v10    # "$i$a$-let-SlotTable$write$1$iv":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "token$iv":Ljava/lang/Object;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    :catchall_8
    move-exception v0

    goto :goto_b

    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :catchall_9
    move-exception v0

    move-object/from16 v47, v2

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_b
    :try_start_e
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .end local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 997
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local p1    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    :catchall_a
    move-exception v0

    goto :goto_c

    .end local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :catchall_b
    move-exception v0

    move-object/from16 v47, v2

    .end local v2    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    .restart local v47    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :goto_c
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 998
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_16
    throw v0
.end method

.method private final cleanUpDerivedStateObservations()V
    .locals 46

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v2, 0x0

    .line 1676
    .local v2, "$i$f$removeScopeIf":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    const/4 v4, 0x0

    .line 1677
    .local v4, "$i$f$removeIf":I
    move-object v5, v3

    check-cast v5, Landroidx/collection/ScatterMap;

    .local v5, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v6, 0x0

    .line 1678
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1679
    .local v7, "m$iv$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1681
    .local v8, "lastIndex$iv$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv$iv":I
    if-gt v9, v8, :cond_f

    .line 1682
    :goto_0
    aget-wide v11, v7, v9

    .line 1683
    .local v11, "slot$iv$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/4 v15, 0x0

    .line 1684
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v16, v11

    .end local v11    # "slot$iv$iv$iv":J
    .local v16, "slot$iv$iv$iv":J
    not-long v10, v13

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v13

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v10, v10, v18

    .line 1683
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v10, v10, v18

    if-eqz v10, :cond_e

    .line 1685
    sub-int v10, v9, v8

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    .line 1686
    .local v10, "bitCount$iv$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv$iv":I
    :goto_1
    if-ge v13, v10, :cond_d

    .line 1687
    const-wide/16 v14, 0xff

    and-long v20, v16, v14

    .local v20, "value$iv$iv$iv$iv":J
    const/16 v22, 0x0

    .line 1688
    .local v22, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v25, v20, v23

    const/16 v26, 0x0

    if-gez v25, :cond_0

    const/16 v20, 0x1

    goto :goto_2

    :cond_0
    move/from16 v20, v26

    .line 1687
    .end local v20    # "value$iv$iv$iv$iv":J
    .end local v22    # "$i$f$isFull":I
    :goto_2
    if-eqz v20, :cond_c

    .line 1689
    shl-int/lit8 v20, v9, 0x3

    add-int v20, v20, v13

    .line 1690
    .local v20, "index$iv$iv$iv":I
    move/from16 v21, v20

    .local v21, "index$iv$iv":I
    const/16 v22, 0x0

    .line 1691
    .local v22, "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    iget-object v14, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move/from16 v15, v21

    .end local v21    # "index$iv$iv":I
    .local v15, "index$iv$iv":I
    aget-object v14, v14, v15

    iget-object v14, v3, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v14, v14, v15

    .local v14, "value$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1692
    .local v21, "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    nop

    .line 1693
    instance-of v11, v14, Landroidx/collection/MutableScatterSet;

    if-eqz v11, :cond_9

    .line 1695
    const-string/jumbo v11, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1>"

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v14

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 1696
    .local v11, "set$iv":Landroidx/collection/MutableScatterSet;
    move-object/from16 v29, v11

    .local v29, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    const/16 v30, 0x0

    .line 1697
    .local v30, "$i$f$removeIf":I
    move-object/from16 v12, v29

    move-object/from16 v29, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v12, "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .local v29, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    iget-object v1, v12, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1698
    .local v1, "elements$iv$iv":[Ljava/lang/Object;
    move/from16 v32, v2

    .end local v2    # "$i$f$removeScopeIf":I
    .local v32, "$i$f$removeScopeIf":I
    move-object v2, v12

    check-cast v2, Landroidx/collection/ScatterSet;

    .local v2, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/16 v33, 0x0

    .line 1699
    .local v33, "$i$f$forEachIndex":I
    nop

    .line 1700
    move/from16 v34, v4

    .end local v4    # "$i$f$removeIf":I
    .local v34, "$i$f$removeIf":I
    iget-object v4, v2, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1701
    .local v4, "m$iv$iv$iv":[J
    move-object/from16 v35, v2

    .end local v2    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .local v35, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    array-length v2, v4

    add-int/lit8 v2, v2, -0x2

    .line 1703
    .local v2, "lastIndex$iv$iv$iv":I
    move-object/from16 v36, v5

    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .local v36, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v5, 0x0

    .local v5, "i$iv$iv$iv":I
    if-gt v5, v2, :cond_6

    .line 1704
    :goto_3
    aget-wide v37, v4, v5

    .line 1705
    .local v37, "slot$iv$iv$iv":J
    move-wide/from16 v39, v37

    .local v39, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v41, 0x0

    .line 1684
    .local v41, "$i$f$maskEmptyOrDeleted":I
    move/from16 v42, v6

    move-object/from16 v43, v7

    move-wide/from16 v6, v39

    move/from16 v39, v8

    move/from16 v40, v9

    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .local v6, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v39, "lastIndex$iv$iv$iv":I
    .local v40, "i$iv$iv$iv":I
    .local v42, "$i$f$forEachIndexed":I
    .local v43, "m$iv$iv$iv":[J
    not-long v8, v6

    const/16 v31, 0x7

    shl-long v8, v8, v31

    and-long/2addr v8, v6

    and-long v6, v8, v18

    .line 1705
    .end local v6    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v41    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v6, v6, v18

    if-eqz v6, :cond_5

    .line 1710
    sub-int v6, v5, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    .line 1711
    .local v6, "bitCount$iv$iv$iv":I
    const/4 v7, 0x0

    .local v7, "j$iv$iv$iv":I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 1712
    const-wide/16 v8, 0xff

    and-long v27, v37, v8

    .local v27, "value$iv$iv$iv$iv":J
    const/16 v41, 0x0

    .line 1688
    .local v41, "$i$f$isFull":I
    cmp-long v44, v27, v23

    if-gez v44, :cond_1

    const/16 v27, 0x1

    goto :goto_5

    :cond_1
    move/from16 v27, v26

    .line 1712
    .end local v27    # "value$iv$iv$iv$iv":J
    .end local v41    # "$i$f$isFull":I
    :goto_5
    if-eqz v27, :cond_3

    .line 1713
    shl-int/lit8 v27, v5, 0x3

    add-int v27, v27, v7

    .line 1714
    .local v27, "index$iv$iv$iv":I
    move/from16 v28, v27

    .local v28, "index$iv$iv":I
    const/16 v41, 0x0

    .line 1715
    .local v41, "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    move/from16 v8, v28

    .end local v28    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    aget-object v9, v1, v8

    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .local v9, "derivedState":Landroidx/compose/runtime/DerivedState;
    const/16 v28, 0x0

    .line 876
    .local v28, "$i$a$-removeScopeIf-CompositionImpl$cleanUpDerivedStateObservations$1":I
    move-object/from16 v45, v1

    .end local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .local v45, "elements$iv$iv":[Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/compose/runtime/collection/ScopeMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x1

    .line 1715
    .end local v9    # "derivedState":Landroidx/compose/runtime/DerivedState;
    .end local v28    # "$i$a$-removeScopeIf-CompositionImpl$cleanUpDerivedStateObservations$1":I
    xor-int/2addr v1, v9

    if-eqz v1, :cond_2

    .line 1716
    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 1718
    :cond_2
    nop

    .line 1714
    .end local v8    # "index$iv$iv":I
    .end local v41    # "$i$a$-forEachIndex-MutableScatterSet$removeIf$1$iv$iv":I
    goto :goto_6

    .line 1712
    .end local v27    # "index$iv$iv$iv":I
    .end local v45    # "elements$iv$iv":[Ljava/lang/Object;
    .restart local v1    # "elements$iv$iv":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v45, v1

    .line 1719
    .end local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .restart local v45    # "elements$iv$iv":[Ljava/lang/Object;
    :goto_6
    const/16 v1, 0x8

    shr-long v37, v37, v1

    .line 1711
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v45

    goto :goto_4

    .end local v45    # "elements$iv$iv":[Ljava/lang/Object;
    .restart local v1    # "elements$iv$iv":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v45, v1

    const/16 v1, 0x8

    .line 1721
    .end local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v7    # "j$iv$iv$iv":I
    .restart local v45    # "elements$iv$iv":[Ljava/lang/Object;
    if-ne v6, v1, :cond_8

    goto :goto_7

    .line 1705
    .end local v6    # "bitCount$iv$iv$iv":I
    .end local v45    # "elements$iv$iv":[Ljava/lang/Object;
    .restart local v1    # "elements$iv$iv":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v45, v1

    .line 1703
    .end local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v37    # "slot$iv$iv$iv":J
    .restart local v45    # "elements$iv$iv":[Ljava/lang/Object;
    :goto_7
    if-eq v5, v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v39

    move/from16 v9, v40

    move/from16 v6, v42

    move-object/from16 v7, v43

    move-object/from16 v1, v45

    goto :goto_3

    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .end local v45    # "elements$iv$iv":[Ljava/lang/Object;
    .restart local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .local v6, "$i$f$forEachIndexed":I
    .local v7, "m$iv$iv$iv":[J
    .local v8, "lastIndex$iv$iv$iv":I
    .local v9, "i$iv$iv$iv":I
    :cond_6
    move-object/from16 v45, v1

    move/from16 v42, v6

    move-object/from16 v43, v7

    move/from16 v39, v8

    move/from16 v40, v9

    const/16 v31, 0x7

    .line 1724
    .end local v1    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v5    # "i$iv$iv$iv":I
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .restart local v39    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    .restart local v45    # "elements$iv$iv":[Ljava/lang/Object;
    :cond_7
    nop

    .line 1725
    .end local v2    # "lastIndex$iv$iv$iv":I
    .end local v4    # "m$iv$iv$iv":[J
    .end local v33    # "$i$f$forEachIndex":I
    .end local v35    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    :cond_8
    nop

    .line 1726
    .end local v12    # "this_$iv$iv":Landroidx/collection/MutableScatterSet;
    .end local v30    # "$i$f$removeIf":I
    .end local v45    # "elements$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    .end local v11    # "set$iv":Landroidx/collection/MutableScatterSet;
    goto :goto_8

    .line 1730
    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    .end local v34    # "$i$f$removeIf":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .local v1, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v2, "$i$f$removeScopeIf":I
    .local v4, "$i$f$removeIf":I
    .local v5, "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    :cond_9
    move-object/from16 v29, v1

    move/from16 v32, v2

    move/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    move/from16 v39, v8

    move/from16 v40, v9

    move/from16 v31, v12

    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v32    # "$i$f$removeScopeIf":I
    .restart local v34    # "$i$f$removeIf":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v39    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$1"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v14

    check-cast v1, Landroidx/compose/runtime/DerivedState;

    .local v1, "derivedState":Landroidx/compose/runtime/DerivedState;
    const/4 v2, 0x0

    .line 876
    .local v2, "$i$a$-removeScopeIf-CompositionImpl$cleanUpDerivedStateObservations$1":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/compose/runtime/collection/ScopeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    move/from16 v1, v26

    .line 1730
    .end local v1    # "derivedState":Landroidx/compose/runtime/DerivedState;
    .end local v2    # "$i$a$-removeScopeIf-CompositionImpl$cleanUpDerivedStateObservations$1":I
    :goto_8
    nop

    .line 1692
    nop

    .line 1691
    .end local v14    # "value$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-removeIf-ScopeMap$removeScopeIf$1$iv":I
    if-eqz v1, :cond_b

    .line 1731
    invoke-virtual {v3, v15}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 1733
    :cond_b
    nop

    .line 1690
    .end local v15    # "index$iv$iv":I
    .end local v22    # "$i$a$-forEachIndexed-MutableScatterMap$removeIf$1$iv$iv":I
    goto :goto_9

    .line 1687
    .end local v20    # "index$iv$iv$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    .end local v34    # "$i$f$removeIf":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .local v1, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v2, "$i$f$removeScopeIf":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    :cond_c
    move-object/from16 v29, v1

    move/from16 v32, v2

    move/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    move/from16 v39, v8

    move/from16 v40, v9

    move/from16 v31, v12

    .line 1734
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v32    # "$i$f$removeScopeIf":I
    .restart local v34    # "$i$f$removeIf":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v39    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    :goto_9
    const/16 v1, 0x8

    shr-long v16, v16, v1

    .line 1686
    add-int/lit8 v13, v13, 0x1

    move v11, v1

    move-object/from16 v1, v29

    move/from16 v12, v31

    move/from16 v2, v32

    move/from16 v4, v34

    move-object/from16 v5, v36

    move/from16 v8, v39

    move/from16 v9, v40

    move/from16 v6, v42

    move-object/from16 v7, v43

    goto/16 :goto_1

    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    .end local v34    # "$i$f$removeIf":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v2    # "$i$f$removeScopeIf":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    :cond_d
    move-object/from16 v29, v1

    move/from16 v32, v2

    move/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    move/from16 v39, v8

    move/from16 v40, v9

    move v1, v11

    .line 1736
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v13    # "j$iv$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v32    # "$i$f$removeScopeIf":I
    .restart local v34    # "$i$f$removeIf":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v39    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    if-ne v10, v1, :cond_11

    goto :goto_a

    .line 1683
    .end local v10    # "bitCount$iv$iv$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    .end local v34    # "$i$f$removeIf":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v2    # "$i$f$removeScopeIf":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    :cond_e
    move-object/from16 v29, v1

    move/from16 v32, v2

    move/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    move/from16 v39, v8

    move/from16 v40, v9

    .line 1681
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v9    # "i$iv$iv$iv":I
    .end local v16    # "slot$iv$iv$iv":J
    .restart local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v32    # "$i$f$removeScopeIf":I
    .restart local v34    # "$i$f$removeIf":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v39    # "lastIndex$iv$iv$iv":I
    .restart local v40    # "i$iv$iv$iv":I
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    :goto_a
    move/from16 v8, v39

    move/from16 v9, v40

    .end local v39    # "lastIndex$iv$iv$iv":I
    .end local v40    # "i$iv$iv$iv":I
    .restart local v8    # "lastIndex$iv$iv$iv":I
    .restart local v9    # "i$iv$iv$iv":I
    if-eq v9, v8, :cond_10

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v29

    move/from16 v2, v32

    move/from16 v4, v34

    move-object/from16 v5, v36

    move/from16 v6, v42

    move-object/from16 v7, v43

    goto/16 :goto_0

    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    .end local v34    # "$i$f$removeIf":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v2    # "$i$f$removeScopeIf":I
    .restart local v4    # "$i$f$removeIf":I
    .restart local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v6    # "$i$f$forEachIndexed":I
    .restart local v7    # "m$iv$iv$iv":[J
    :cond_f
    move-object/from16 v29, v1

    move/from16 v32, v2

    move/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    .line 1739
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v2    # "$i$f$removeScopeIf":I
    .end local v4    # "$i$f$removeIf":I
    .end local v5    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv$iv":[J
    .end local v9    # "i$iv$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v32    # "$i$f$removeScopeIf":I
    .restart local v34    # "$i$f$removeIf":I
    .restart local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .restart local v42    # "$i$f$forEachIndexed":I
    .restart local v43    # "m$iv$iv$iv":[J
    :cond_10
    nop

    .line 1740
    .end local v8    # "lastIndex$iv$iv$iv":I
    .end local v36    # "this_$iv$iv$iv":Landroidx/collection/ScatterMap;
    .end local v42    # "$i$f$forEachIndexed":I
    .end local v43    # "m$iv$iv$iv":[J
    :cond_11
    nop

    .line 1741
    .end local v3    # "this_$iv$iv":Landroidx/collection/MutableScatterMap;
    .end local v34    # "$i$f$removeIf":I
    nop

    .line 877
    .end local v29    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v32    # "$i$f$removeScopeIf":I
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 878
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    .local v1, "$this$removeValueIf$iv":Ljava/util/HashSet;
    const/4 v2, 0x0

    .line 1742
    .local v2, "$i$f$removeValueIf":I
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1743
    .local v3, "iter$iv":Ljava/util/Iterator;
    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1744
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v4, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v5, 0x0

    .line 878
    .local v5, "$i$a$-removeValueIf-CompositionImpl$cleanUpDerivedStateObservations$2":I
    invoke-virtual {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v6

    const/4 v4, 0x1

    .line 1744
    .end local v4    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v5    # "$i$a$-removeValueIf-CompositionImpl$cleanUpDerivedStateObservations$2":I
    xor-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_12

    .line 1745
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 1748
    :cond_13
    nop

    .line 880
    .end local v1    # "$this$removeValueIf$iv":Ljava/util/HashSet;
    .end local v2    # "$i$f$removeValueIf":I
    .end local v3    # "iter$iv":Ljava/util/Iterator;
    :cond_14
    return-void
.end method

.method private final composeInitial(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 631
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 632
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 633
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/ControlledComposition;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 634
    return-void

    .line 1383
    :cond_0
    const/4 v0, 0x0

    .line 631
    .local v0, "$i$a$-check-CompositionImpl$composeInitial$1":I
    nop

    .end local v0    # "$i$a$-check-CompositionImpl$composeInitial$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The composition is disposed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final drainPendingModificationsForCompositionLocked()V
    .locals 6

    .line 674
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 675
    .local v0, "toRecord":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 678
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 681
    instance-of v1, v0, Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 682
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    goto :goto_1

    .line 684
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 685
    .local v5, "changed":Ljava/util/Set;
    invoke-direct {p0, v5, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 684
    .end local v5    # "changed":Ljava/util/Set;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 687
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "corrupt pendingModifications drain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 679
    :cond_2
    const-string/jumbo v1, "pending composition has not been applied"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 689
    .end local v0    # "toRecord":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void
.end method

.method private final drainPendingModificationsLocked()V
    .locals 6

    .line 693
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 694
    .local v0, "toRecord":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    instance-of v1, v0, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 698
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    goto :goto_1

    .line 700
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 701
    .local v5, "changed":Ljava/util/Set;
    invoke-direct {p0, v5, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 700
    .end local v5    # "changed":Ljava/util/Set;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 703
    :cond_1
    if-nez v0, :cond_2

    .line 704
    nop

    .line 703
    const-string/jumbo v1, "calling recordModificationsOf and applyChanges concurrently is not supported"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 707
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "corrupt pendingModifications drain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 710
    .end local v0    # "toRecord":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void
.end method

.method private final getAreChildrenComposing()Z
    .locals 1

    .line 602
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getAreChildrenComposing$runtime_release()Z

    move-result v0

    return v0
.end method

.method public static synthetic getPendingInvalidScopes$runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSlotTable$runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private final guardChanges(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1047
    .local v0, "$i$f$guardChanges":I
    nop

    .line 1048
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v2, 0x0

    .line 2038
    .local v2, "$i$f$trackAbandonedValues":I
    const/4 v3, 0x0

    .line 2039
    .local v3, "success$iv":Z
    nop

    .line 2040
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2041
    .local v7, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv":I
    const/4 v3, 0x1

    .line 2042
    nop

    .line 2040
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv":I
    :try_start_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 2044
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 2047
    nop

    .line 2039
    nop

    .line 1052
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v2    # "$i$f$trackAbandonedValues":I
    .end local v3    # "success$iv":Z
    return-object v5

    .line 1049
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2044
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v2    # "$i$f$trackAbandonedValues":I
    .restart local v3    # "success$iv":Z
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-nez v3, :cond_0

    iget-object v6, v1, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_0

    .line 2045
    new-instance v6, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v7, v1, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v7, Ljava/util/Set;

    invoke-direct {v6, v7}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v0    # "$i$f$guardChanges":I
    .end local p1    # "block":Lkotlin/jvm/functions/Function0;
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1050
    .end local v2    # "$i$f$trackAbandonedValues":I
    .end local v3    # "success$iv":Z
    .restart local v0    # "$i$f$guardChanges":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function0;
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1051
    throw v1
.end method

.method private final guardInvalidationsLocked(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1037
    .local v0, "$i$f$guardInvalidationsLocked":I
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations()Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object v1

    .line 1038
    .local v1, "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1039
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    return-object v2

    .line 1040
    :catch_0
    move-exception v2

    .line 1041
    .local v2, "e":Ljava/lang/Exception;
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 1042
    throw v2
.end method

.method private final invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 8
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p2, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p3, "instance"    # Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2053
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1131
    .local v2, "$i$a$-synchronized-CompositionImpl$invalidateChecked$delegate$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .local v3, "changeDelegate":Landroidx/compose/runtime/CompositionImpl;
    const/4 v5, 0x0

    .line 1137
    .local v5, "$i$a$-let-CompositionImpl$invalidateChecked$delegate$1$delegate$1":I
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v7, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    invoke-virtual {v6, v7, p2}, Landroidx/compose/runtime/SlotTable;->groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1138
    move-object v6, v3

    goto :goto_0

    .line 1139
    :cond_0
    move-object v6, v4

    .line 1137
    :goto_0
    nop

    .line 1131
    .end local v3    # "changeDelegate":Landroidx/compose/runtime/CompositionImpl;
    .end local v5    # "$i$a$-let-CompositionImpl$invalidateChecked$delegate$1$delegate$1":I
    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    move-object v3, v6

    .line 1141
    .local v3, "delegate":Landroidx/compose/runtime/CompositionImpl;
    if-nez v3, :cond_4

    .line 1142
    invoke-direct {p0, p1, p3}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1144
    sget-object v4, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-CompositionImpl$invalidateChecked$delegate$1":I
    .end local v3    # "delegate":Landroidx/compose/runtime/CompositionImpl;
    monitor-exit v0

    return-object v4

    .line 1149
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$invalidateChecked$delegate$1":I
    .restart local v3    # "delegate":Landroidx/compose/runtime/CompositionImpl;
    :cond_2
    if-nez p3, :cond_3

    .line 1150
    :try_start_1
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-virtual {v5, p1, v4}, Landroidx/compose/runtime/collection/IdentityArrayMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1152
    :cond_3
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-static {v4, p1, p3}, Landroidx/compose/runtime/CompositionKt;->access$addValue(Landroidx/compose/runtime/collection/IdentityArrayMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :cond_4
    :goto_2
    nop

    .line 2053
    .end local v2    # "$i$a$-synchronized-CompositionImpl$invalidateChecked$delegate$1":I
    .end local v3    # "delegate":Landroidx/compose/runtime/CompositionImpl;
    monitor-exit v0

    .line 1130
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    move-object v0, v3

    .line 1159
    .local v0, "delegate":Landroidx/compose/runtime/CompositionImpl;
    if-eqz v0, :cond_5

    .line 1160
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    return-object v1

    .line 1162
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object v2, p0

    check-cast v2, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1163
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    goto :goto_3

    :cond_6
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    :goto_3
    return-object v1

    .line 2053
    .local v0, "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method private final invalidateScopeOfLocked(Ljava/lang/Object;)V
    .locals 25
    .param p1, "value"    # Ljava/lang/Object;

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v3, 0x0

    .line 1776
    .local v3, "$i$f$forEachScopeOf":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1777
    .local v4, "value$iv":Ljava/lang/Object;
    if-eqz v4, :cond_a

    .line 1778
    instance-of v5, v4, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_8

    .line 1780
    move-object v5, v4

    check-cast v5, Landroidx/collection/MutableScatterSet;

    check-cast v5, Landroidx/collection/ScatterSet;

    .local v5, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v6, 0x0

    .line 1781
    .local v6, "$i$f$forEach":I
    nop

    .line 1782
    iget-object v7, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1784
    .local v7, "k$iv$iv":[Ljava/lang/Object;
    move-object v8, v5

    .local v8, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v9, 0x0

    .line 1785
    .local v9, "$i$f$forEachIndex":I
    nop

    .line 1786
    iget-object v10, v8, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1787
    .local v10, "m$iv$iv$iv":[J
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 1789
    .local v11, "lastIndex$iv$iv$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv$iv$iv":I
    if-gt v12, v11, :cond_5

    .line 1790
    :goto_0
    aget-wide v13, v10, v12

    .line 1791
    .local v13, "slot$iv$iv$iv":J
    move-wide v15, v13

    .local v15, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v17, 0x0

    .line 1792
    .local v17, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-wide v2, v15

    move-object v15, v5

    move/from16 v16, v6

    .end local v3    # "$i$f$forEachScopeOf":I
    .end local v5    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v6    # "$i$f$forEach":I
    .local v2, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v15, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v16, "$i$f$forEach":I
    .local v18, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v19, "$i$f$forEachScopeOf":I
    not-long v5, v2

    const/16 v20, 0x7

    shl-long v5, v5, v20

    and-long/2addr v5, v2

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v5, v20

    .line 1791
    .end local v2    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v17    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v20

    if-eqz v2, :cond_4

    .line 1793
    sub-int v2, v12, v11

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1794
    .local v2, "bitCount$iv$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv$iv":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 1795
    const-wide/16 v20, 0xff

    and-long v20, v13, v20

    .local v20, "value$iv$iv$iv$iv":J
    const/4 v6, 0x0

    .line 1796
    .local v6, "$i$f$isFull":I
    const-wide/16 v22, 0x80

    cmp-long v17, v20, v22

    if-gez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1795
    .end local v6    # "$i$f$isFull":I
    .end local v20    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v17, :cond_2

    .line 1797
    shl-int/lit8 v6, v12, 0x3

    add-int/2addr v6, v5

    .line 1798
    .local v6, "index$iv$iv$iv":I
    move/from16 v17, v6

    .local v17, "index$iv$iv":I
    const/16 v20, 0x0

    .line 1799
    .local v20, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    aget-object v21, v7, v17

    move-object/from16 v3, v21

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v3, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/16 v21, 0x0

    .line 913
    .local v21, "$i$a$-forEachScopeOf-CompositionImpl$invalidateScopeOfLocked$1":I
    move/from16 v23, v6

    .end local v6    # "index$iv$iv$iv":I
    .local v23, "index$iv$iv$iv":I
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v6

    move-object/from16 v24, v7

    .end local v7    # "k$iv$iv":[Ljava/lang/Object;
    .local v24, "k$iv$iv":[Ljava/lang/Object;
    sget-object v7, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v6, v7, :cond_1

    .line 915
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v6, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    :cond_1
    nop

    .line 1799
    .end local v3    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v21    # "$i$a$-forEachScopeOf-CompositionImpl$invalidateScopeOfLocked$1":I
    nop

    .line 1800
    nop

    .line 1798
    .end local v17    # "index$iv$iv":I
    .end local v20    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    goto :goto_3

    .line 1795
    .end local v23    # "index$iv$iv$iv":I
    .end local v24    # "k$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "k$iv$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v24, v7

    .line 1801
    .end local v7    # "k$iv$iv":[Ljava/lang/Object;
    .restart local v24    # "k$iv$iv":[Ljava/lang/Object;
    :goto_3
    const/16 v3, 0x8

    shr-long/2addr v13, v3

    .line 1794
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v24

    goto :goto_1

    .end local v24    # "k$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "k$iv$iv":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v24, v7

    .line 1803
    .end local v5    # "j$iv$iv$iv":I
    .end local v7    # "k$iv$iv":[Ljava/lang/Object;
    .restart local v24    # "k$iv$iv":[Ljava/lang/Object;
    if-ne v2, v3, :cond_7

    goto :goto_4

    .line 1791
    .end local v2    # "bitCount$iv$iv$iv":I
    .end local v24    # "k$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "k$iv$iv":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v24, v7

    .line 1789
    .end local v7    # "k$iv$iv":[Ljava/lang/Object;
    .end local v13    # "slot$iv$iv$iv":J
    .restart local v24    # "k$iv$iv":[Ljava/lang/Object;
    :goto_4
    if-eq v12, v11, :cond_6

    add-int/lit8 v12, v12, 0x1

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v7, v24

    goto :goto_0

    .end local v15    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v16    # "$i$f$forEach":I
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$forEachScopeOf":I
    .end local v24    # "k$iv$iv":[Ljava/lang/Object;
    .local v2, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v3, "$i$f$forEachScopeOf":I
    .local v5, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v6, "$i$f$forEach":I
    .restart local v7    # "k$iv$iv":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object v15, v5

    move/from16 v16, v6

    move-object/from16 v24, v7

    .line 1806
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v3    # "$i$f$forEachScopeOf":I
    .end local v5    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "k$iv$iv":[Ljava/lang/Object;
    .end local v12    # "i$iv$iv$iv":I
    .restart local v15    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v16    # "$i$f$forEach":I
    .restart local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v19    # "$i$f$forEachScopeOf":I
    .restart local v24    # "k$iv$iv":[Ljava/lang/Object;
    :cond_6
    nop

    .line 1807
    .end local v8    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v9    # "$i$f$forEachIndex":I
    .end local v10    # "m$iv$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv$iv":I
    :cond_7
    nop

    .end local v15    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v16    # "$i$f$forEach":I
    .end local v24    # "k$iv$iv":[Ljava/lang/Object;
    goto :goto_5

    .line 1808
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$forEachScopeOf":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v3    # "$i$f$forEachScopeOf":I
    :cond_8
    move-object/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v3    # "$i$f$forEachScopeOf":I
    .restart local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v19    # "$i$f$forEachScopeOf":I
    move-object v2, v4

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v2, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 913
    .local v3, "$i$a$-forEachScopeOf-CompositionImpl$invalidateScopeOfLocked$1":I
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v5, v6, :cond_9

    .line 915
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v5, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    :cond_9
    nop

    .line 1808
    .end local v2    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-forEachScopeOf-CompositionImpl$invalidateScopeOfLocked$1":I
    goto :goto_5

    .line 1777
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$forEachScopeOf":I
    .local v2, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v3, "$i$f$forEachScopeOf":I
    :cond_a
    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 1811
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v3    # "$i$f$forEachScopeOf":I
    .end local v4    # "value$iv":Ljava/lang/Object;
    .restart local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v19    # "$i$f$forEachScopeOf":I
    :goto_5
    nop

    .line 918
    .end local v18    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v19    # "$i$f$forEachScopeOf":I
    return-void
.end method

.method private final observer()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 4

    .line 1218
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 1220
    .local v0, "holder":Landroidx/compose/runtime/CompositionObserverHolder;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v1

    goto :goto_1

    .line 1223
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v1

    .line 1224
    .local v1, "parentHolder":Landroidx/compose/runtime/CompositionObserverHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1225
    .local v2, "parentObserver":Landroidx/compose/runtime/tooling/CompositionObserver;
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1226
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/CompositionObserverHolder;->setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)V

    .line 1228
    :cond_2
    move-object v1, v2

    .line 1220
    .end local v1    # "parentHolder":Landroidx/compose/runtime/CompositionObserverHolder;
    .end local v2    # "parentObserver":Landroidx/compose/runtime/tooling/CompositionObserver;
    :goto_1
    return-object v1
.end method

.method private final takeInvalidations()Landroidx/compose/runtime/collection/IdentityArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 1183
    .local v0, "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    new-instance v1, Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 1184
    return-object v0
.end method

.method private final trackAbandonedValues(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1205
    .local v0, "$i$f$trackAbandonedValues":I
    const/4 v1, 0x0

    .line 1206
    .local v1, "success":Z
    nop

    .line 1207
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1208
    .local v5, "$i$a$-also-CompositionImpl$trackAbandonedValues$1":I
    const/4 v1, 0x1

    .line 1209
    nop

    .line 1207
    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1":I
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 1211
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1214
    nop

    .line 1206
    return-object v3

    .line 1211
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-nez v1, :cond_0

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_0

    .line 1212
    new-instance v4, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v5, Ljava/util/Set;

    invoke-direct {v4, v5}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private final tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p2, "instance"    # Ljava/lang/Object;

    .line 1123
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final validateRecomposeScopeAnchors(Landroidx/compose/runtime/SlotTable;)V
    .locals 16
    .param p1, "slotTable"    # Landroidx/compose/runtime/SlotTable;

    .line 1192
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2054
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2062
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2063
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 2062
    .local v12, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    .local v13, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1192
    .local v14, "$i$a$-mapNotNull-CompositionImpl$validateRecomposeScopeAnchors$scopes$1":I
    instance-of v15, v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v15, :cond_0

    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 2062
    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-mapNotNull-CompositionImpl$validateRecomposeScopeAnchors$scopes$1":I
    :goto_1
    if-eqz v15, :cond_1

    move-object v13, v15

    .line 2064
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 2062
    .local v14, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2063
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2065
    :cond_2
    nop

    .line 2066
    .end local v6    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 2054
    nop

    .line 1192
    .end local v1    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$mapNotNull":I
    move-object v1, v3

    .line 1193
    .local v1, "scopes":Ljava/util/List;
    move-object v2, v1

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 2067
    .local v3, "$i$f$fastForEach":I
    nop

    .line 2068
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_5

    .line 2069
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 2070
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v7, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v8, 0x0

    .line 1194
    .local v8, "$i$a$-fastForEach-CompositionImpl$validateRecomposeScopeAnchors$1":I
    invoke-virtual {v7}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v9

    if-eqz v9, :cond_4

    .local v9, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v10, 0x0

    .line 1195
    .local v10, "$i$a$-let-CompositionImpl$validateRecomposeScopeAnchors$1$1":I
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotTable;->slotsOf$runtime_release(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1200
    nop

    .line 1194
    .end local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v10    # "$i$a$-let-CompositionImpl$validateRecomposeScopeAnchors$1$1":I
    goto :goto_3

    .line 1195
    .restart local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v10    # "$i$a$-let-CompositionImpl$validateRecomposeScopeAnchors$1$1":I
    :cond_3
    const/4 v5, 0x0

    .line 1196
    .local v5, "$i$a$-check-CompositionImpl$validateRecomposeScopeAnchors$1$1$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    .line 1197
    .local v11, "dataIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Misaligned anchor "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in scope "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " encountered, scope found at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1198
    nop

    .line 1197
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    .end local v5    # "$i$a$-check-CompositionImpl$validateRecomposeScopeAnchors$1$1$1":I
    .end local v11    # "dataIndex":I
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1201
    .end local v9    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v10    # "$i$a$-let-CompositionImpl$validateRecomposeScopeAnchors$1$1":I
    :cond_4
    :goto_3
    nop

    .line 2070
    .end local v7    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v8    # "$i$a$-fastForEach-CompositionImpl$validateRecomposeScopeAnchors$1":I
    nop

    .line 2068
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2072
    .end local v4    # "index$iv":I
    :cond_5
    nop

    .line 1202
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    return-void
.end method


# virtual methods
.method public applyChanges()V
    .locals 11

    .line 1003
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1987
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1004
    .local v2, "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v4, 0x0

    .line 1988
    .local v4, "$i$f$guardChanges":I
    nop

    .line 1989
    move-object v5, v3

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v6, 0x0

    .line 1990
    .local v6, "$i$f$trackAbandonedValues":I
    const/4 v7, 0x0

    .line 1991
    .local v7, "success$iv$iv":Z
    nop

    .line 1992
    const/4 v8, 0x0

    .line 1005
    .local v8, "$i$a$-guardChanges-CompositionImpl$applyChanges$1$1":I
    :try_start_0
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {p0, v9}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 1006
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 1007
    nop

    .end local v8    # "$i$a$-guardChanges-CompositionImpl$applyChanges$1$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    nop

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1993
    .local v9, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v7, 0x1

    .line 1994
    nop

    .line 1992
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 1996
    nop

    .line 1999
    nop

    .line 1991
    nop

    .line 2003
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    nop

    .line 1008
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1987
    monitor-exit v0

    .line 1009
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 1996
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "success$iv$iv":Z
    :catchall_0
    move-exception v8

    if-nez v7, :cond_0

    :try_start_2
    iget-object v9, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 1997
    new-instance v9, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v10, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v10, Ljava/util/Set;

    invoke-direct {v9, v10}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_0
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1987
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2000
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    :catch_0
    move-exception v5

    .line 2001
    .local v5, "e$iv":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {v3}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 2002
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1987
    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyChanges$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    .end local v5    # "e$iv":Ljava/lang/Exception;
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :goto_0
    monitor-exit v0

    throw v2
.end method

.method public applyLateChanges()V
    .locals 11

    .line 1012
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2004
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1013
    .local v2, "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v4, 0x0

    .line 2005
    .local v4, "$i$f$guardChanges":I
    nop

    .line 2006
    move-object v5, v3

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v6, 0x0

    .line 2007
    .local v6, "$i$f$trackAbandonedValues":I
    const/4 v7, 0x0

    .line 2008
    .local v7, "success$iv$iv":Z
    nop

    .line 2009
    const/4 v8, 0x0

    .line 1014
    .local v8, "$i$a$-guardChanges-CompositionImpl$applyLateChanges$1$1":I
    :try_start_0
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1015
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {p0, v9}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 1017
    :cond_0
    nop

    .end local v8    # "$i$a$-guardChanges-CompositionImpl$applyLateChanges$1$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    nop

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 2010
    .local v9, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v7, 0x1

    .line 2011
    nop

    .line 2009
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 2013
    nop

    .line 2016
    nop

    .line 2008
    nop

    .line 2020
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    nop

    .line 1018
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2004
    monitor-exit v0

    .line 1019
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 2013
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "success$iv$iv":Z
    :catchall_0
    move-exception v8

    if-nez v7, :cond_1

    :try_start_2
    iget-object v9, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 2014
    new-instance v9, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v10, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v10, Ljava/util/Set;

    invoke-direct {v9, v10}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_1
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2004
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2017
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    :catch_0
    move-exception v5

    .line 2018
    .local v5, "e$iv":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {v3}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 2019
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2004
    .end local v2    # "$i$a$-synchronized-CompositionImpl$applyLateChanges$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    .end local v5    # "e$iv":Ljava/lang/Exception;
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :goto_0
    monitor-exit v0

    throw v2
.end method

.method public changesApplied()V
    .locals 11

    .line 1022
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2021
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1023
    .local v2, "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v4, 0x0

    .line 2022
    .local v4, "$i$f$guardChanges":I
    nop

    .line 2023
    move-object v5, v3

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v6, 0x0

    .line 2024
    .local v6, "$i$f$trackAbandonedValues":I
    const/4 v7, 0x0

    .line 2025
    .local v7, "success$iv$iv":Z
    nop

    .line 2026
    const/4 v8, 0x0

    .line 1024
    .local v8, "$i$a$-guardChanges-CompositionImpl$changesApplied$1$1":I
    :try_start_0
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->changesApplied$runtime_release()V

    .line 1027
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 1028
    new-instance v9, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v10, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v10, Ljava/util/Set;

    invoke-direct {v9, v10}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    .line 1030
    :cond_0
    nop

    .end local v8    # "$i$a$-guardChanges-CompositionImpl$changesApplied$1$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    nop

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 2027
    .local v9, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v7, 0x1

    .line 2028
    nop

    .line 2026
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 2030
    nop

    .line 2033
    nop

    .line 2025
    nop

    .line 2037
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    nop

    .line 1031
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2021
    monitor-exit v0

    .line 1032
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 2030
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "success$iv$iv":Z
    :catchall_0
    move-exception v8

    if-nez v7, :cond_1

    :try_start_2
    iget-object v9, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 2031
    new-instance v9, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v10, v5, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v10, Ljava/util/Set;

    invoke-direct {v9, v10}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_1
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local v2    # "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2021
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "$i$f$trackAbandonedValues":I
    .end local v7    # "success$iv$iv":Z
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2034
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "$i$f$guardChanges":I
    :catch_0
    move-exception v5

    .line 2035
    .local v5, "e$iv":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {v3}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 2036
    nop

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2021
    .end local v2    # "$i$a$-synchronized-CompositionImpl$changesApplied$1":I
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "$i$f$guardChanges":I
    .end local v5    # "e$iv":Ljava/lang/Exception;
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :goto_0
    monitor-exit v0

    throw v2
.end method

.method public composeContent(Lkotlin/jvm/functions/Function2;)V
    .locals 19
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 715
    move-object/from16 v1, p0

    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v3, 0x0

    .line 1396
    .local v3, "$i$f$guardChanges":I
    nop

    .line 1397
    move-object v4, v2

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v5, 0x0

    .line 1398
    .local v5, "$i$f$trackAbandonedValues":I
    const/4 v6, 0x0

    .line 1399
    .local v6, "success$iv$iv":Z
    nop

    .line 1400
    const/4 v7, 0x0

    .line 716
    .local v7, "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :try_start_0
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "lock$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1401
    .local v9, "$i$f$synchronized":I
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v10, 0x0

    .line 717
    .local v10, "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V

    .line 718
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v12, 0x0

    .line 1402
    .local v12, "$i$f$guardInvalidationsLocked":I
    invoke-direct {v11}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations()Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v13, v0

    .line 1403
    .local v13, "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1404
    move-object v0, v13

    .local v0, "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    const/4 v14, 0x0

    .line 719
    .local v14, "$i$a$-guardInvalidationsLocked-CompositionImpl$composeContent$1$1$1":I
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 721
    .local v15, "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    if-eqz v15, :cond_0

    .line 722
    move/from16 v16, v3

    .end local v3    # "$i$f$guardChanges":I
    .local v16, "$i$f$guardChanges":I
    :try_start_3
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/Composition;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 723
    move/from16 v17, v5

    .end local v5    # "$i$f$trackAbandonedValues":I
    .local v17, "$i$f$trackAbandonedValues":I
    :try_start_4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->asMap()Ljava/util/Map;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v18, v7

    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .local v18, "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :try_start_5
    const-string/jumbo v7, "null cannot be cast to non-null type kotlin.collections.Map<androidx.compose.runtime.RecomposeScope, kotlin.collections.Set<kotlin.Any>?>"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-interface {v15, v3, v5}, Landroidx/compose/runtime/tooling/CompositionObserver;->onBeginComposition(Landroidx/compose/runtime/Composition;Ljava/util/Map;)V

    goto :goto_0

    .line 1401
    .end local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$composeContent$1$1$1":I
    .end local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :catchall_0
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v5, p1

    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    goto/16 :goto_3

    .line 1405
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catch_0
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v5, p1

    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    goto :goto_2

    .line 1401
    .end local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :catchall_1
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v5, p1

    .end local v5    # "$i$f$trackAbandonedValues":I
    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    goto :goto_3

    .line 1405
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catch_1
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v5, p1

    .end local v5    # "$i$f$trackAbandonedValues":I
    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    goto :goto_2

    .line 721
    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v3    # "$i$f$guardChanges":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$composeContent$1$1$1":I
    .restart local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    :cond_0
    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v7

    .line 725
    .end local v3    # "$i$f$guardChanges":I
    .end local v5    # "$i$f$trackAbandonedValues":I
    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :goto_0
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v5, p1

    :try_start_6
    invoke-virtual {v3, v0, v5}, Landroidx/compose/runtime/ComposerImpl;->composeContent$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    .line 726
    if-eqz v15, :cond_1

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/Composition;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/tooling/CompositionObserver;->onEndComposition(Landroidx/compose/runtime/Composition;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1404
    .end local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$composeContent$1$1$1":I
    .end local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    :goto_1
    nop

    .line 1403
    nop

    .line 718
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1401
    .end local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 716
    .end local v8    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    nop

    .line 1400
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    move-object v0, v3

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1408
    .local v3, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v6, 0x1

    .line 1409
    nop

    .line 1400
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 1411
    nop

    .line 1414
    nop

    .line 1399
    nop

    .line 1418
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "success$iv$iv":Z
    .end local v17    # "$i$f$trackAbandonedValues":I
    nop

    .line 730
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v16    # "$i$f$guardChanges":I
    return-void

    .line 1405
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "success$iv$iv":Z
    .restart local v8    # "lock$iv":Ljava/lang/Object;
    .restart local v9    # "$i$f$synchronized":I
    .restart local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1401
    .end local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catchall_2
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_3

    .line 1405
    .restart local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_2

    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .local v3, "$i$f$guardChanges":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :catch_4
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v5, p1

    .line 1406
    .end local v3    # "$i$f$guardChanges":I
    .end local v5    # "$i$f$trackAbandonedValues":I
    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :goto_2
    :try_start_8
    iput-object v13, v11, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 1407
    nop

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "success$iv$iv":Z
    .end local v8    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .end local p1    # "content":Lkotlin/jvm/functions/Function2;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1401
    .end local v0    # "e$iv":Ljava/lang/Exception;
    .end local v10    # "$i$a$-synchronized-CompositionImpl$composeContent$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "success$iv$iv":Z
    .restart local v8    # "lock$iv":Ljava/lang/Object;
    .restart local v9    # "$i$f$synchronized":I
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local p1    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_3
    move-exception v0

    goto :goto_3

    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v3    # "$i$f$guardChanges":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    .restart local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :catchall_4
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v5, p1

    .end local v3    # "$i$f$guardChanges":I
    .end local v5    # "$i$f$trackAbandonedValues":I
    .end local v7    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    :goto_3
    :try_start_9
    monitor-exit v8

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "success$iv$iv":Z
    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .end local p1    # "content":Lkotlin/jvm/functions/Function2;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1411
    .end local v8    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local v18    # "$i$a$-guardChanges-CompositionImpl$composeContent$1":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v6    # "success$iv$iv":Z
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    .restart local p1    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_5
    move-exception v0

    goto :goto_4

    .end local v16    # "$i$f$guardChanges":I
    .end local v17    # "$i$f$trackAbandonedValues":I
    .restart local v3    # "$i$f$guardChanges":I
    .restart local v5    # "$i$f$trackAbandonedValues":I
    :catchall_6
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v5, p1

    .end local v3    # "$i$f$guardChanges":I
    .end local v5    # "$i$f$trackAbandonedValues":I
    .restart local v16    # "$i$f$guardChanges":I
    .restart local v17    # "$i$f$trackAbandonedValues":I
    :goto_4
    if-nez v6, :cond_2

    :try_start_a
    iget-object v3, v4, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1412
    new-instance v3, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v7, v4, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v7, Ljava/util/Set;

    invoke-direct {v3, v7}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_2
    nop

    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v16    # "$i$f$guardChanges":I
    .end local p1    # "content":Lkotlin/jvm/functions/Function2;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1415
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v6    # "success$iv$iv":Z
    .end local v17    # "$i$f$trackAbandonedValues":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v16    # "$i$f$guardChanges":I
    .restart local p1    # "content":Lkotlin/jvm/functions/Function2;
    :catch_5
    move-exception v0

    .line 1416
    .restart local v0    # "e$iv":Ljava/lang/Exception;
    invoke-direct {v2}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1417
    throw v0
.end method

.method public deactivate()V
    .locals 13

    .line 1329
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1330
    .local v0, "nonEmptySlotTable":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 1331
    :cond_1
    const-string v1, "Compose:deactivate"

    .local v1, "sectionName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2073
    .local v2, "$i$f$trace":I
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2074
    .local v3, "token$iv":Ljava/lang/Object;
    nop

    .line 2075
    const/4 v4, 0x0

    .line 1332
    .local v4, "$i$a$-trace-CompositionImpl$deactivate$1":I
    :try_start_0
    new-instance v5, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v6, Ljava/util/Set;

    invoke-direct {v5, v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 1333
    .local v5, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    if-eqz v0, :cond_2

    .line 1334
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 1335
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .local v6, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v7, 0x0

    .line 2076
    .local v7, "$i$f$write":I
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2077
    nop

    .local v8, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v9, 0x0

    .line 2078
    .local v9, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 2079
    move-object v10, v8

    .local v10, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v11, 0x0

    .line 1336
    .local v11, "$i$a$-write-CompositionImpl$deactivate$1$1":I
    :try_start_1
    move-object v12, v5

    check-cast v12, Landroidx/compose/runtime/RememberManager;

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 1337
    nop

    .end local v10    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v11    # "$i$a$-write-CompositionImpl$deactivate$1$1":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2079
    nop

    .line 2081
    :try_start_2
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 2082
    nop

    .line 2078
    nop

    .line 2077
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 2083
    nop

    .line 1338
    .end local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v7    # "$i$f$write":I
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 1339
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_1

    .line 2081
    .restart local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v7    # "$i$f$write":I
    .restart local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v10

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotWriter;->close()V

    .end local v0    # "nonEmptySlotTable":Z
    .end local v1    # "sectionName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "token$iv":Ljava/lang/Object;
    throw v10

    .line 1341
    .end local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v7    # "$i$f$write":I
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    .restart local v0    # "nonEmptySlotTable":Z
    .restart local v1    # "sectionName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "token$iv":Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    .line 1342
    nop

    .end local v4    # "$i$a$-trace-CompositionImpl$deactivate$1":I
    .end local v5    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2075
    nop

    .line 2084
    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 2075
    nop

    .line 1344
    .end local v1    # "sectionName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "token$iv":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear()V

    .line 1345
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear()V

    .line 1346
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->clear()V

    .line 1347
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1348
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->deactivate$runtime_release()V

    .line 1349
    return-void

    .line 2084
    .restart local v1    # "sectionName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "token$iv":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    sget-object v5, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v4
.end method

.method public delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1, "to"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "groupIndex"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1082
    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    .line 1083
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1084
    iput p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 1085
    nop

    .line 1086
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1089
    iput v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 1090
    nop

    .line 1089
    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v2

    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1089
    iput v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    throw v2

    .line 1091
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 1082
    :goto_0
    return-object v2
.end method

.method public dispose()V
    .locals 13

    .line 733
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1419
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 734
    .local v2, "$i$a$-synchronized-CompositionImpl$dispose$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime_release()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 738
    iget-boolean v3, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-nez v3, :cond_5

    .line 739
    iput-boolean v4, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    .line 740
    sget-object v3, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda-2$runtime_release()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 749
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDeferredChanges$runtime_release()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v3

    .line 750
    .local v3, "deferredChanges":Landroidx/compose/runtime/changelist/ChangeList;
    if-eqz v3, :cond_0

    .line 751
    invoke-direct {p0, v3}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 759
    :cond_0
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 760
    .local v5, "nonEmptySlotTable":Z
    :goto_0
    if-nez v5, :cond_2

    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_4

    .line 761
    :cond_2
    new-instance v4, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v6, Ljava/util/Set;

    invoke-direct {v4, v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 762
    .local v4, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    if-eqz v5, :cond_3

    .line 763
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 764
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .local v6, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v7, 0x0

    .line 1420
    .local v7, "$i$f$write":I
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1421
    nop

    .local v8, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v9, 0x0

    .line 1422
    .local v9, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1423
    move-object v10, v8

    .local v10, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v11, 0x0

    .line 765
    .local v11, "$i$a$-write-CompositionImpl$dispose$1$2":I
    :try_start_1
    move-object v12, v4

    check-cast v12, Landroidx/compose/runtime/RememberManager;

    invoke-static {v10, v12}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 766
    nop

    .end local v10    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v11    # "$i$a$-write-CompositionImpl$dispose$1$2":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    nop

    .line 1425
    :try_start_2
    invoke-virtual {v8}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 1426
    nop

    .line 1422
    nop

    .line 1421
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1427
    nop

    .line 767
    .end local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v7    # "$i$f$write":I
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->clear()V

    .line 768
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 769
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_1

    .line 1425
    .restart local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v7    # "$i$f$write":I
    .restart local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v10

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotWriter;->close()V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw v10

    .line 771
    .end local v6    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v7    # "$i$f$write":I
    .end local v8    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v9    # "$i$a$-let-SlotTable$write$1$iv":I
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    .line 773
    .end local v4    # "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    :cond_4
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->dispose$runtime_release()V

    .line 775
    .end local v3    # "deferredChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v5    # "nonEmptySlotTable":Z
    :cond_5
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$dispose$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1419
    monitor-exit v0

    .line 776
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    .line 777
    return-void

    .line 734
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local v2    # "$i$a$-synchronized-CompositionImpl$dispose$1":I
    :cond_6
    const/4 v3, 0x0

    .line 735
    .local v3, "$i$a$-check-CompositionImpl$dispose$1$1":I
    :try_start_3
    const-string v4, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 734
    .end local v3    # "$i$a$-check-CompositionImpl$dispose$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1419
    .end local v2    # "$i$a$-synchronized-CompositionImpl$dispose$1":I
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V
    .locals 9
    .param p1, "state"    # Landroidx/compose/runtime/MovableContentState;

    .line 959
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 960
    .local v0, "manager":Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentState;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    .line 961
    .local v1, "slotTable":Landroidx/compose/runtime/SlotTable;
    move-object v2, v1

    .local v2, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v3, 0x0

    .line 1897
    .local v3, "$i$f$write":I
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v4

    .line 1898
    nop

    .local v4, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v5, 0x0

    .line 1899
    .local v5, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1900
    move-object v6, v4

    .local v6, "writer":Landroidx/compose/runtime/SlotWriter;
    const/4 v7, 0x0

    .line 962
    .local v7, "$i$a$-write-CompositionImpl$disposeUnusedMovableContent$1":I
    :try_start_0
    move-object v8, v0

    check-cast v8, Landroidx/compose/runtime/RememberManager;

    invoke-static {v6, v8}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 963
    nop

    .end local v6    # "writer":Landroidx/compose/runtime/SlotWriter;
    .end local v7    # "$i$a$-write-CompositionImpl$disposeUnusedMovableContent$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1900
    nop

    .line 1902
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 1903
    nop

    .line 1899
    nop

    .line 1898
    .end local v4    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v5    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 1904
    nop

    .line 964
    .end local v2    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v3    # "$i$f$write":I
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchRememberObservers()V

    .line 965
    return-void

    .line 1902
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v3    # "$i$f$write":I
    .restart local v4    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v5    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v6
.end method

.method public final getComposable()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getCompositionService(Landroidx/compose/runtime/CompositionServiceKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Landroidx/compose/runtime/CompositionServiceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionServiceKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1120
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->getCompositionImplServiceKey()Landroidx/compose/runtime/CompositionServiceKey;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getConditionalScopes$runtime_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDerivedStateDependencies$runtime_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHasInvalidations()Z
    .locals 4

    .line 779
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1428
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 779
    .local v2, "$i$a$-synchronized-CompositionImpl$hasInvalidations$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1428
    .end local v2    # "$i$a$-synchronized-CompositionImpl$hasInvalidations$1":I
    :goto_0
    monitor-exit v0

    .line 779
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1428
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public getHasPendingChanges()Z
    .locals 4

    .line 616
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1382
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 616
    .local v2, "$i$a$-synchronized-CompositionImpl$hasPendingChanges$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getHasPendingChanges$runtime_release()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    .end local v2    # "$i$a$-synchronized-CompositionImpl$hasPendingChanges$1":I
    monitor-exit v0

    .line 616
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return v3

    .line 1382
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final getObservedObjects$runtime_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 1

    .line 560
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    return-object v0
.end method

.method public final getPendingInvalidScopes$runtime_release()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    return v0
.end method

.method public final getRecomposeContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 587
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getRecomposeCoroutineContext$runtime_release()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public insertMovableContent(Ljava/util/List;)V
    .locals 13
    .param p1, "references"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation

    .line 952
    move-object v0, p1

    .local v0, "$this$fastAll$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1872
    .local v1, "$i$f$fastAll":I
    nop

    .line 1873
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1874
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1875
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 1876
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1877
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1873
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    move-object v10, v8

    check-cast v10, Lkotlin/Pair;

    .local v10, "it":Lkotlin/Pair;
    const/4 v11, 0x0

    .line 952
    .local v11, "$i$a$-fastAll-CompositionImpl$insertMovableContent$1":I
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v12}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v12

    invoke-static {v12, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 1873
    .end local v10    # "it":Lkotlin/Pair;
    .end local v11    # "$i$a$-fastAll-CompositionImpl$insertMovableContent$1":I
    if-nez v10, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 1877
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastAll$2$iv":I
    :cond_0
    nop

    .line 1875
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1879
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 1880
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move v5, v6

    .line 952
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAll":I
    :goto_1
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 953
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v1, 0x0

    .line 1881
    .local v1, "$i$f$guardChanges":I
    nop

    .line 1882
    move-object v2, v0

    .local v2, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v3, 0x0

    .line 1883
    .local v3, "$i$f$trackAbandonedValues":I
    const/4 v4, 0x0

    .line 1884
    .local v4, "success$iv$iv":Z
    nop

    .line 1885
    const/4 v5, 0x0

    .line 954
    .local v5, "$i$a$-guardChanges-CompositionImpl$insertMovableContent$2":I
    :try_start_0
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentReferences(Ljava/util/List;)V

    .line 955
    nop

    .end local v5    # "$i$a$-guardChanges-CompositionImpl$insertMovableContent$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    nop

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1886
    .local v6, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v4, 0x1

    .line 1887
    nop

    .line 1885
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 1889
    nop

    .line 1892
    nop

    .line 1884
    nop

    .line 1896
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v3    # "$i$f$trackAbandonedValues":I
    .end local v4    # "success$iv$iv":Z
    nop

    .line 956
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v1    # "$i$f$guardChanges":I
    return-void

    .line 1889
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v1    # "$i$f$guardChanges":I
    .restart local v2    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v3    # "$i$f$trackAbandonedValues":I
    .restart local v4    # "success$iv$iv":Z
    :catchall_0
    move-exception v5

    if-nez v4, :cond_2

    :try_start_1
    iget-object v7, v2, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 1890
    new-instance v6, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v7, v2, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v7, Ljava/util/Set;

    invoke-direct {v6, v7}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_2
    nop

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v1    # "$i$f$guardChanges":I
    .end local p1    # "references":Ljava/util/List;
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1893
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v3    # "$i$f$trackAbandonedValues":I
    .end local v4    # "success$iv$iv":Z
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v1    # "$i$f$guardChanges":I
    .restart local p1    # "references":Ljava/util/List;
    :catch_0
    move-exception v2

    .line 1894
    .local v2, "e$iv":Ljava/lang/Exception;
    invoke-direct {v0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1895
    throw v2
.end method

.method public invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 6
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p2, "instance"    # Ljava/lang/Object;

    .line 1095
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInScope()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    .line 1098
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    .line 1099
    .local v0, "anchor":Landroidx/compose/runtime/Anchor;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1101
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1103
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2052
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 1103
    .local v4, "$i$a$-synchronized-CompositionImpl$invalidate$delegate$1":I
    :try_start_0
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2052
    .end local v4    # "$i$a$-synchronized-CompositionImpl$invalidate$delegate$1":I
    monitor-exit v2

    .line 1103
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    move-object v2, v5

    .line 1104
    .local v2, "delegate":Landroidx/compose/runtime/CompositionImpl;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {v2, p1, p2}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 1105
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    return-object v1

    .line 1107
    :cond_3
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object v1

    .line 2052
    .local v2, "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1109
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getCanRecompose()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1110
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object v1

    .line 1111
    :cond_5
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    return-object v1

    .line 1100
    :cond_6
    :goto_1
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object v1
.end method

.method public invalidateAll()V
    .locals 11

    .line 1062
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2048
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1063
    .local v2, "$i$a$-synchronized-CompositionImpl$invalidateAll$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v3

    .local v3, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2049
    .local v4, "$i$f$forEach":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1063
    .local v9, "$i$a$-forEach-CompositionImpl$invalidateAll$1$1":I
    instance-of v10, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v10, :cond_0

    move-object v10, v8

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidate()V

    .line 2049
    .end local v8    # "it":Ljava/lang/Object;
    .end local v9    # "$i$a$-forEach-CompositionImpl$invalidateAll$1$1":I
    :cond_1
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2050
    :cond_2
    nop

    .line 1064
    .end local v3    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$forEach":I
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$invalidateAll$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    monitor-exit v0

    .line 1065
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 2048
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final invalidateGroupsWithKey(I)V
    .locals 16
    .param p1, "key"    # I

    .line 655
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1385
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 656
    .local v0, "$i$a$-synchronized-CompositionImpl$invalidateGroupsWithKey$scopesToInvalidate$1":I
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v5, p1

    :try_start_1
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$runtime_release(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    .end local v0    # "$i$a$-synchronized-CompositionImpl$invalidateGroupsWithKey$scopesToInvalidate$1":I
    monitor-exit v2

    .line 655
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    move-object v0, v4

    .line 662
    .local v0, "scopesToInvalidate":Ljava/util/List;
    if-eqz v0, :cond_4

    move-object v3, v0

    .local v3, "$this$fastAny$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1386
    .local v4, "$i$f$fastAny":I
    nop

    .line 1387
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1388
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1389
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_2

    .line 1390
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1391
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1392
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v14, "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v15, 0x0

    .line 663
    .local v15, "$i$a$-fastAny-CompositionImpl$invalidateGroupsWithKey$forceComposition$1":I
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v2

    sget-object v10, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-ne v2, v10, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1392
    .end local v14    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v15    # "$i$a$-fastAny-CompositionImpl$invalidateGroupsWithKey$forceComposition$1":I
    :goto_1
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    .line 1393
    :cond_1
    nop

    .line 1391
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    nop

    .line 1389
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1394
    .end local v8    # "index$iv$iv":I
    :cond_2
    nop

    .line 1395
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .end local v3    # "$this$fastAny$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastAny":I
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 662
    :goto_4
    nop

    .line 665
    .local v2, "forceComposition":Z
    if-eqz v2, :cond_5

    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes$runtime_release()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 666
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    .line 668
    :cond_5
    return-void

    .line 1385
    .end local v0    # "scopesToInvalidate":Ljava/util/List;
    .local v2, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v5, p1

    :goto_5
    monitor-exit v2

    throw v0
.end method

.method public isComposing()Z
    .locals 1

    .line 611
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime_release()Z

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    return v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    return v0
.end method

.method public final observe$runtime_release(Landroidx/compose/runtime/tooling/CompositionObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 5
    .param p1, "observer"    # Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 638
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1384
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 639
    .local v2, "$i$a$-synchronized-CompositionImpl$observe$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/CompositionObserverHolder;->setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)V

    .line 640
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/CompositionObserverHolder;->setRoot(Z)V

    .line 641
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$observe$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    monitor-exit v0

    .line 642
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$observe$2;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/CompositionImpl$observe$2;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/tooling/CompositionObserver;)V

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionObserverHandle;

    return-object v0

    .line 1384
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public observesAnyOf(Ljava/util/Set;)Z
    .locals 10
    .param p1, "values"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 810
    instance-of v0, p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 811
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v3, 0x0

    .line 1430
    .local v3, "$i$f$fastForEach":I
    nop

    .line 1431
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v4

    .line 1432
    .local v4, "values$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 1434
    aget-object v7, v4, v5

    const-string/jumbo v8, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v7, "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 812
    .local v8, "$i$a$-fastForEach-CompositionImpl$observesAnyOf$1":I
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 813
    :cond_0
    nop

    .line 1434
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-CompositionImpl$observesAnyOf$1":I
    nop

    .line 1432
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 812
    .restart local v7    # "value":Ljava/lang/Object;
    .restart local v8    # "$i$a$-fastForEach-CompositionImpl$observesAnyOf$1":I
    :cond_1
    :goto_1
    return v2

    .line 1436
    .end local v5    # "i$iv":I
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-CompositionImpl$observesAnyOf$1":I
    :cond_2
    nop

    .line 814
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v3    # "$i$f$fastForEach":I
    .end local v4    # "values$iv":[Ljava/lang/Object;
    return v1

    .line 816
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 817
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    return v2

    .line 819
    .end local v3    # "value":Ljava/lang/Object;
    :cond_6
    return v1
.end method

.method public prepareCompose(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public recompose()Z
    .locals 20

    .line 930
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1849
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 931
    .local v4, "$i$a$-synchronized-CompositionImpl$recompose$1":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 932
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v6, 0x0

    .line 1850
    .local v6, "$i$f$guardChanges":I
    nop

    .line 1851
    move-object v7, v5

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v8, 0x0

    .line 1852
    .local v8, "$i$f$trackAbandonedValues":I
    const/4 v9, 0x0

    .line 1853
    .local v9, "success$iv$iv":Z
    nop

    .line 1854
    const/4 v10, 0x0

    .line 933
    .local v10, "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    const/4 v12, 0x0

    .line 1855
    .local v12, "$i$f$guardInvalidationsLocked":I
    :try_start_1
    invoke-direct {v11}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations()Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v13, v0

    .line 1856
    .local v13, "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1857
    move-object v0, v13

    .local v0, "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    const/4 v14, 0x0

    .line 934
    .local v14, "$i$a$-guardInvalidationsLocked-CompositionImpl$recompose$1$1$1":I
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 936
    .local v15, "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    if-eqz v15, :cond_0

    .line 937
    move/from16 v16, v3

    .end local v3    # "$i$f$synchronized":I
    .local v16, "$i$f$synchronized":I
    :try_start_3
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/Composition;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 938
    move/from16 v17, v4

    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .local v17, "$i$a$-synchronized-CompositionImpl$recompose$1":I
    :try_start_4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->asMap()Ljava/util/Map;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v18, v6

    .end local v6    # "$i$f$guardChanges":I
    .local v18, "$i$f$guardChanges":I
    :try_start_5
    const-string/jumbo v6, "null cannot be cast to non-null type kotlin.collections.Map<androidx.compose.runtime.RecomposeScope, kotlin.collections.Set<kotlin.Any>?>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    invoke-interface {v15, v3, v4}, Landroidx/compose/runtime/tooling/CompositionObserver;->onBeginComposition(Landroidx/compose/runtime/Composition;Ljava/util/Map;)V

    goto :goto_0

    .line 1864
    .end local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$recompose$1$1$1":I
    .end local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    .end local v18    # "$i$f$guardChanges":I
    .restart local v6    # "$i$f$guardChanges":I
    :catchall_0
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "$i$f$guardChanges":I
    .restart local v18    # "$i$f$guardChanges":I
    goto :goto_3

    .line 1858
    .end local v18    # "$i$f$guardChanges":I
    .restart local v6    # "$i$f$guardChanges":I
    .restart local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catch_0
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "$i$f$guardChanges":I
    .restart local v18    # "$i$f$guardChanges":I
    goto :goto_2

    .line 1864
    .end local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v6    # "$i$f$guardChanges":I
    :catchall_1
    move-exception v0

    move/from16 v17, v4

    move/from16 v18, v6

    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v6    # "$i$f$guardChanges":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    goto :goto_3

    .line 1858
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v6    # "$i$f$guardChanges":I
    .restart local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :catch_1
    move-exception v0

    move/from16 v17, v4

    move/from16 v18, v6

    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v6    # "$i$f$guardChanges":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    goto :goto_2

    .line 936
    .end local v16    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v6    # "$i$f$guardChanges":I
    .restart local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$recompose$1$1$1":I
    .restart local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    :cond_0
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    .line 940
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v6    # "$i$f$guardChanges":I
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :goto_0
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->recompose$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z

    move-result v3

    move v4, v3

    .local v4, "shouldDrain":Z
    const/4 v6, 0x0

    .line 942
    .local v6, "$i$a$-also-CompositionImpl$recompose$1$1$1$1":I
    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 943
    :cond_1
    if-eqz v15, :cond_2

    move-object/from16 v19, v0

    .end local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .local v19, "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/Composition;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/tooling/CompositionObserver;->onEndComposition(Landroidx/compose/runtime/Composition;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .end local v19    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :cond_2
    move-object/from16 v19, v0

    .line 944
    .end local v0    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v19    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    :goto_1
    nop

    .line 940
    .end local v4    # "shouldDrain":Z
    .end local v6    # "$i$a$-also-CompositionImpl$recompose$1$1$1$1":I
    nop

    .line 1857
    .end local v14    # "$i$a$-guardInvalidationsLocked-CompositionImpl$recompose$1$1$1":I
    .end local v15    # "observer":Landroidx/compose/runtime/tooling/CompositionObserver;
    .end local v19    # "invalidations":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1856
    nop

    .line 933
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    nop

    .line 1854
    .end local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    move v0, v3

    .local v0, "it$iv$iv":Z
    const/4 v4, 0x0

    .line 1861
    .local v4, "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    const/4 v6, 0x1

    .line 1862
    .end local v9    # "success$iv$iv":Z
    .local v6, "success$iv$iv":Z
    nop

    .line 1854
    .end local v0    # "it$iv$iv":Z
    .end local v4    # "$i$a$-also-CompositionImpl$trackAbandonedValues$1$iv$iv":I
    nop

    .line 1864
    nop

    .line 1867
    nop

    .line 1853
    nop

    .line 1871
    .end local v6    # "success$iv$iv":Z
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v8    # "$i$f$trackAbandonedValues":I
    nop

    .line 932
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v18    # "$i$f$guardChanges":I
    nop

    .line 1849
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    monitor-exit v2

    .line 947
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    return v3

    .line 1858
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v7    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v8    # "$i$f$trackAbandonedValues":I
    .restart local v9    # "success$iv$iv":Z
    .restart local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v12    # "$i$f$guardInvalidationsLocked":I
    .restart local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v16    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v3    # "$i$f$synchronized":I
    .local v4, "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .local v6, "$i$f$guardChanges":I
    :catch_3
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    .line 1859
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v6    # "$i$f$guardChanges":I
    .local v0, "e$iv":Ljava/lang/Exception;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :goto_2
    :try_start_6
    iput-object v13, v11, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 1860
    nop

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v8    # "$i$f$trackAbandonedValues":I
    .end local v9    # "success$iv$iv":Z
    .end local v16    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1864
    .end local v0    # "e$iv":Ljava/lang/Exception;
    .end local v10    # "$i$a$-guardChanges-CompositionImpl$recompose$1$1":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v12    # "$i$f$guardInvalidationsLocked":I
    .end local v13    # "invalidations$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v7    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v8    # "$i$f$trackAbandonedValues":I
    .restart local v9    # "success$iv$iv":Z
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v16    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v6    # "$i$f$guardChanges":I
    :catchall_3
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v6    # "$i$f$guardChanges":I
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :goto_3
    if-nez v9, :cond_3

    :try_start_7
    iget-object v3, v7, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 1865
    new-instance v3, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;

    iget-object v4, v7, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/HashSet;

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->dispatchAbandons()V

    :cond_3
    nop

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v16    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1849
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v8    # "$i$f$trackAbandonedValues":I
    .end local v9    # "success$iv$iv":Z
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 1868
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .restart local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .restart local v18    # "$i$f$guardChanges":I
    :catch_4
    move-exception v0

    .line 1869
    .restart local v0    # "e$iv":Ljava/lang/Exception;
    :try_start_8
    invoke-direct {v5}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1870
    nop

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1849
    .end local v0    # "e$iv":Ljava/lang/Exception;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionImpl;
    .end local v17    # "$i$a$-synchronized-CompositionImpl$recompose$1":I
    .end local v18    # "$i$f$guardChanges":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_5
    move-exception v0

    move/from16 v16, v3

    .end local v3    # "$i$f$synchronized":I
    .restart local v16    # "$i$f$synchronized":I
    :goto_4
    monitor-exit v2

    throw v0
.end method

.method public recomposeScopeReleased(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 1116
    return-void
.end method

.method public recordModificationsOf(Ljava/util/Set;)V
    .locals 5
    .param p1, "values"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 790
    nop

    :cond_0
    nop

    .line 791
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 792
    .local v0, "old":Ljava/lang/Object;
    nop

    .line 793
    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    move-object v2, p1

    goto :goto_1

    .line 794
    :cond_2
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    goto :goto_1

    .line 795
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 792
    :goto_1
    move-object v1, v2

    .line 798
    .local v1, "new":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    if-nez v0, :cond_4

    .line 800
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1429
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 801
    .local v4, "$i$a$-synchronized-CompositionImpl$recordModificationsOf$1":I
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 802
    nop

    .end local v4    # "$i$a$-synchronized-CompositionImpl$recordModificationsOf$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4

    .line 804
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    :cond_4
    :goto_2
    nop

    .line 807
    .end local v0    # "old":Ljava/lang/Object;
    .end local v1    # "new":Ljava/lang/Object;
    return-void

    .line 795
    .restart local v0    # "old":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "corrupt pendingModifications: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public recordReadOf(Ljava/lang/Object;)V
    .locals 28
    .param p1, "value"    # Ljava/lang/Object;

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->getAreChildrenComposing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 885
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_b

    .local v2, "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 886
    .local v3, "$i$a$-let-CompositionImpl$recordReadOf$1":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    .line 887
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->recordRead(Ljava/lang/Object;)Z

    move-result v5

    .line 888
    .local v5, "alreadyRead":Z
    if-nez v5, :cond_a

    .line 889
    instance-of v6, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v6, :cond_0

    .line 890
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget-object v7, Landroidx/compose/runtime/snapshots/ReaderKind;->Companion:Landroidx/compose/runtime/snapshots/ReaderKind$Companion;

    .local v7, "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    const/4 v8, 0x0

    .line 1749
    .local v8, "$i$f$getComposition-6f8NoZ8":I
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v7

    .line 890
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    .end local v8    # "$i$f$getComposition-6f8NoZ8":I
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 893
    :cond_0
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v6, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 896
    instance-of v6, v1, Landroidx/compose/runtime/DerivedState;

    if-eqz v6, :cond_9

    .line 897
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    .line 898
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()Landroidx/collection/ObjectIntMap;

    move-result-object v6

    .local v6, "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v7, 0x0

    .line 1750
    .local v7, "$i$f$forEachKey":I
    iget-object v8, v6, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 1752
    .local v8, "k$iv":[Ljava/lang/Object;
    move-object v9, v6

    .local v9, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v10, 0x0

    .line 1753
    .local v10, "$i$f$forEachIndexed":I
    iget-object v11, v9, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 1754
    .local v11, "m$iv$iv":[J
    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    .line 1756
    .local v12, "lastIndex$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv":I
    if-gt v13, v12, :cond_6

    .line 1757
    :goto_0
    aget-wide v14, v11, v13

    .line 1758
    .local v14, "slot$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1759
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move/from16 v20, v5

    move-wide/from16 v4, v16

    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v5    # "alreadyRead":Z
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v16, "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .local v17, "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .local v20, "alreadyRead":Z
    not-long v2, v4

    const/16 v21, 0x7

    shl-long v2, v2, v21

    and-long/2addr v2, v4

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v21

    .line 1758
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v21

    if-eqz v2, :cond_5

    .line 1760
    sub-int v2, v13, v12

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1761
    .local v2, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 1762
    const-wide/16 v21, 0xff

    and-long v21, v14, v21

    .local v21, "value$iv$iv$iv":J
    const/4 v5, 0x0

    .line 1763
    .local v5, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v18, v21, v23

    if-gez v18, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    .line 1762
    .end local v5    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v18, :cond_3

    .line 1764
    shl-int/lit8 v5, v13, 0x3

    add-int/2addr v5, v4

    .line 1765
    .local v5, "index$iv$iv":I
    move/from16 v18, v5

    .local v18, "index$iv":I
    const/16 v21, 0x0

    .line 1766
    .local v21, "$i$a$-forEachIndexed-ObjectIntMap$forEachKey$1$iv":I
    aget-object v22, v8, v18

    move-object/from16 v3, v22

    check-cast v3, Landroidx/compose/runtime/snapshots/StateObject;

    .local v3, "dependency":Landroidx/compose/runtime/snapshots/StateObject;
    const/16 v22, 0x0

    .line 899
    .local v22, "$i$a$-forEachKey-CompositionImpl$recordReadOf$1$1":I
    move/from16 v24, v5

    .end local v5    # "index$iv$iv":I
    .local v24, "index$iv$iv":I
    instance-of v5, v3, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v5, :cond_2

    .line 900
    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget-object v25, Landroidx/compose/runtime/snapshots/ReaderKind;->Companion:Landroidx/compose/runtime/snapshots/ReaderKind$Companion;

    .local v25, "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    const/16 v26, 0x0

    .line 1767
    .local v26, "$i$f$getComposition-6f8NoZ8":I
    move-object/from16 v27, v6

    const/16 v19, 0x1

    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v27, "this_$iv":Landroidx/collection/ObjectIntMap;
    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v6

    .line 900
    .end local v25    # "this_$iv":Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
    .end local v26    # "$i$f$getComposition-6f8NoZ8":I
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    goto :goto_3

    .line 899
    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_2
    move-object/from16 v27, v6

    const/16 v19, 0x1

    .line 902
    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :goto_3
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v5, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 903
    nop

    .line 1766
    .end local v3    # "dependency":Landroidx/compose/runtime/snapshots/StateObject;
    .end local v22    # "$i$a$-forEachKey-CompositionImpl$recordReadOf$1$1":I
    nop

    .line 1768
    nop

    .line 1765
    .end local v18    # "index$iv":I
    .end local v21    # "$i$a$-forEachIndexed-ObjectIntMap$forEachKey$1$iv":I
    goto :goto_4

    .line 1762
    .end local v24    # "index$iv$iv":I
    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_3
    move-object/from16 v27, v6

    const/16 v19, 0x1

    .line 1769
    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :goto_4
    const/16 v3, 0x8

    shr-long/2addr v14, v3

    .line 1761
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v27

    goto :goto_1

    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_4
    move-object/from16 v27, v6

    const/16 v19, 0x1

    .line 1771
    .end local v4    # "j$iv$iv":I
    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    if-ne v2, v3, :cond_8

    goto :goto_5

    .line 1758
    .end local v2    # "bitCount$iv$iv":I
    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_5
    move-object/from16 v27, v6

    const/16 v19, 0x1

    .line 1756
    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v14    # "slot$iv$iv":J
    .restart local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :goto_5
    if-eq v13, v12, :cond_7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v27

    goto/16 :goto_0

    .end local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v20    # "alreadyRead":Z
    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v2, "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .local v3, "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .local v5, "alreadyRead":Z
    .restart local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v20, v5

    move-object/from16 v27, v6

    .line 1774
    .end local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v5    # "alreadyRead":Z
    .end local v6    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v13    # "i$iv$iv":I
    .restart local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .restart local v20    # "alreadyRead":Z
    .restart local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_7
    nop

    .line 1775
    .end local v9    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv":I
    :cond_8
    goto :goto_6

    .line 896
    .end local v7    # "$i$f$forEachKey":I
    .end local v8    # "k$iv":[Ljava/lang/Object;
    .end local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v20    # "alreadyRead":Z
    .end local v27    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .restart local v5    # "alreadyRead":Z
    :cond_9
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v20, v5

    .end local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v5    # "alreadyRead":Z
    .restart local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .restart local v20    # "alreadyRead":Z
    goto :goto_6

    .line 888
    .end local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v20    # "alreadyRead":Z
    .restart local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .restart local v5    # "alreadyRead":Z
    :cond_a
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v20, v5

    .line 906
    .end local v2    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v5    # "alreadyRead":Z
    .restart local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .restart local v20    # "alreadyRead":Z
    :goto_6
    nop

    .line 885
    .end local v16    # "it":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v17    # "$i$a$-let-CompositionImpl$recordReadOf$1":I
    .end local v20    # "alreadyRead":Z
    nop

    .line 908
    :cond_b
    return-void
.end method

.method public recordWriteOf(Ljava/lang/Object;)V
    .locals 25
    .param p1, "value"    # Ljava/lang/Object;

    .line 920
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1812
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 921
    .local v0, "$i$a$-synchronized-CompositionImpl$recordWriteOf$1":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 925
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    const/4 v5, 0x0

    .line 1813
    .local v5, "$i$f$forEachScopeOf":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1814
    .local v6, "value$iv":Ljava/lang/Object;
    if-eqz v6, :cond_8

    .line 1815
    instance-of v8, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_7

    .line 1817
    move-object v8, v6

    check-cast v8, Landroidx/collection/MutableScatterSet;

    check-cast v8, Landroidx/collection/ScatterSet;

    .local v8, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v9, 0x0

    .line 1818
    .local v9, "$i$f$forEach":I
    nop

    .line 1819
    iget-object v10, v8, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1821
    .local v10, "k$iv$iv":[Ljava/lang/Object;
    move-object v11, v8

    .local v11, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v12, 0x0

    .line 1822
    .local v12, "$i$f$forEachIndex":I
    nop

    .line 1823
    iget-object v13, v11, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1824
    .local v13, "m$iv$iv$iv":[J
    array-length v14, v13

    add-int/lit8 v14, v14, -0x2

    .line 1826
    .local v14, "lastIndex$iv$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv$iv":I
    if-gt v15, v14, :cond_4

    .line 1827
    :goto_0
    aget-wide v16, v13, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1828
    .local v16, "slot$iv$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v20, 0x0

    .line 1829
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-wide/from16 v3, v18

    move-object/from16 v18, v8

    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v8    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v18, "this_$iv$iv":Landroidx/collection/ScatterSet;
    .local v21, "$i$f$synchronized":I
    .local v22, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    not-long v7, v3

    const/16 v19, 0x7

    shl-long v7, v7, v19

    and-long/2addr v7, v3

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v7, v23

    .line 1828
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v23

    if-eqz v3, :cond_3

    .line 1830
    sub-int v3, v15, v14

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 1831
    .local v3, "bitCount$iv$iv$iv":I
    const/4 v7, 0x0

    .local v7, "j$iv$iv$iv":I
    :goto_1
    if-ge v7, v3, :cond_2

    .line 1832
    const-wide/16 v19, 0xff

    and-long v19, v16, v19

    .local v19, "value$iv$iv$iv$iv":J
    const/4 v8, 0x0

    .line 1833
    .local v8, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v23, v19, v23

    if-gez v23, :cond_0

    const/16 v23, 0x1

    goto :goto_2

    :cond_0
    const/16 v23, 0x0

    .line 1832
    .end local v8    # "$i$f$isFull":I
    .end local v19    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v23, :cond_1

    .line 1834
    shl-int/lit8 v8, v15, 0x3

    add-int/2addr v8, v7

    .line 1835
    .local v8, "index$iv$iv$iv":I
    move/from16 v19, v8

    .local v19, "index$iv$iv":I
    const/16 v20, 0x0

    .line 1836
    .local v20, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    :try_start_1
    aget-object v23, v10, v19

    check-cast v23, Landroidx/compose/runtime/DerivedState;

    move-object/from16 v24, v23

    .local v24, "it":Landroidx/compose/runtime/DerivedState;
    const/16 v23, 0x0

    .line 926
    .local v23, "$i$a$-forEachScopeOf-CompositionImpl$recordWriteOf$1$1":I
    move-object/from16 v4, v24

    .end local v24    # "it":Landroidx/compose/runtime/DerivedState;
    .local v4, "it":Landroidx/compose/runtime/DerivedState;
    invoke-direct {v1, v4}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 927
    nop

    .line 1836
    .end local v4    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v23    # "$i$a$-forEachScopeOf-CompositionImpl$recordWriteOf$1$1":I
    nop

    .line 1837
    nop

    .line 1835
    .end local v19    # "index$iv$iv":I
    .end local v20    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    nop

    .line 1838
    .end local v8    # "index$iv$iv$iv":I
    :cond_1
    const/16 v4, 0x8

    shr-long v16, v16, v4

    .line 1831
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1840
    .end local v7    # "j$iv$iv$iv":I
    :cond_2
    if-ne v3, v4, :cond_6

    .line 1826
    .end local v3    # "bitCount$iv$iv$iv":I
    .end local v16    # "slot$iv$iv$iv":J
    :cond_3
    if-eq v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, v18

    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_0

    .end local v18    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v21    # "$i$f$synchronized":I
    .end local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v3, "$i$f$synchronized":I
    .local v4, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v8, "this_$iv$iv":Landroidx/collection/ScatterSet;
    :cond_4
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v18, v8

    .line 1843
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v8    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v15    # "i$iv$iv$iv":I
    .restart local v18    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .restart local v21    # "$i$f$synchronized":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_5
    nop

    .line 1844
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v12    # "$i$f$forEachIndex":I
    .end local v13    # "m$iv$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv$iv":I
    :cond_6
    nop

    .end local v9    # "$i$f$forEach":I
    .end local v10    # "k$iv$iv":[Ljava/lang/Object;
    .end local v18    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    goto :goto_3

    .line 1845
    .end local v21    # "$i$f$synchronized":I
    .end local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_7
    move/from16 v21, v3

    move-object/from16 v22, v4

    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .restart local v21    # "$i$f$synchronized":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    move-object v3, v6

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .local v3, "it":Landroidx/compose/runtime/DerivedState;
    const/4 v4, 0x0

    .line 926
    .local v4, "$i$a$-forEachScopeOf-CompositionImpl$recordWriteOf$1$1":I
    invoke-direct {v1, v3}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 927
    nop

    .line 1845
    .end local v3    # "it":Landroidx/compose/runtime/DerivedState;
    .end local v4    # "$i$a$-forEachScopeOf-CompositionImpl$recordWriteOf$1$1":I
    goto :goto_3

    .line 1814
    .end local v21    # "$i$f$synchronized":I
    .end local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .local v3, "$i$f$synchronized":I
    .local v4, "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :cond_8
    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 1848
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    .end local v6    # "value$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    .restart local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    :goto_3
    nop

    .line 928
    .end local v5    # "$i$f$forEachScopeOf":I
    .end local v22    # "this_$iv":Landroidx/compose/runtime/collection/ScopeMap;
    nop

    .end local v0    # "$i$a$-synchronized-CompositionImpl$recordWriteOf$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    monitor-exit v2

    .line 928
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    return-void

    .line 1812
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v21    # "$i$f$synchronized":I
    .restart local v3    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v21, v3

    .end local v3    # "$i$f$synchronized":I
    .restart local v21    # "$i$f$synchronized":I
    :goto_4
    monitor-exit v2

    throw v0
.end method

.method public final removeDerivedStateObservation$runtime_release(Landroidx/compose/runtime/DerivedState;)V
    .locals 1
    .param p1, "state"    # Landroidx/compose/runtime/DerivedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    .line 1175
    :cond_0
    return-void
.end method

.method public final removeObservation$runtime_release(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1167
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method public final setComposable(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    .line 620
    return-void
.end method

.method public setContentWithReuse(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReuseFromRoot()V

    .line 625
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    .line 627
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endReuseFromRoot()V

    .line 628
    return-void
.end method

.method public final setPendingInvalidScopes$runtime_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 554
    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    return-void
.end method

.method public verifyConsistent()V
    .locals 4

    .line 1068
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2051
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 1069
    .local v2, "$i$a$-synchronized-CompositionImpl$verifyConsistent$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1070
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->verifyConsistent$runtime_release()V

    .line 1071
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed()V

    .line 1072
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-direct {p0, v3}, Landroidx/compose/runtime/CompositionImpl;->validateRecomposeScopeAnchors(Landroidx/compose/runtime/SlotTable;)V

    .line 1074
    :cond_0
    nop

    .end local v2    # "$i$a$-synchronized-CompositionImpl$verifyConsistent$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2051
    monitor-exit v0

    .line 1075
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 2051
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
