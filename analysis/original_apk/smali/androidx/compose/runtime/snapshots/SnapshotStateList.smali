.class public final Landroidx/compose/runtime/snapshots/SnapshotStateList;
.super Ljava/lang/Object;
.source "SnapshotStateList.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateList\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,484:1\n158#1:485\n197#1,10:487\n207#1:498\n158#1:499\n208#1,9:501\n154#1:510\n217#1,7:516\n227#1,6:526\n190#1,17:532\n207#1:550\n158#1:551\n208#1,9:553\n154#1:562\n217#1,7:568\n227#1,6:578\n195#1:584\n197#1,10:585\n207#1:596\n158#1:597\n208#1,9:599\n154#1:608\n217#1,7:614\n227#1,6:624\n154#1:630\n197#1,10:641\n207#1:652\n158#1:653\n208#1,9:655\n154#1:664\n217#1,7:670\n227#1,6:680\n197#1,10:686\n207#1:697\n158#1:698\n208#1,9:700\n154#1:709\n217#1,7:715\n227#1,6:725\n190#1,17:732\n207#1:750\n158#1:751\n208#1,9:753\n154#1:762\n217#1,7:768\n227#1,6:778\n195#1:784\n194#1,13:785\n207#1:799\n158#1:800\n208#1,9:802\n154#1:811\n217#1,7:817\n227#1,6:827\n195#1:833\n163#1,5:834\n168#1:840\n158#1:841\n169#1,7:843\n154#1:850\n176#1,7:856\n185#1,3:866\n163#1,5:869\n168#1:875\n158#1:876\n169#1,7:878\n154#1:885\n176#1,7:891\n185#1,3:901\n158#1:904\n163#1,5:916\n168#1:922\n158#1:923\n169#1,7:925\n154#1:932\n176#1,7:938\n185#1,3:948\n158#1:952\n154#1:954\n201#1,6:965\n207#1:972\n158#1:973\n208#1,9:975\n154#1:984\n217#1,7:990\n227#1,6:1000\n201#1,7:1006\n158#1:1013\n208#1,9:1015\n154#1:1024\n217#1,7:1030\n227#1,6:1040\n158#1:1047\n154#1:1049\n158#1:1061\n154#1:1063\n2283#2:486\n2283#2:500\n2176#2,2:511\n1714#2:513\n2178#2,2:514\n2180#2,3:523\n2283#2:552\n2176#2,2:563\n1714#2:565\n2178#2,2:566\n2180#2,3:575\n2283#2:598\n2176#2,2:609\n1714#2:611\n2178#2,2:612\n2180#2,3:621\n2176#2,2:631\n1714#2:633\n2178#2,2:635\n2180#2,3:638\n2283#2:654\n2176#2,2:665\n1714#2:667\n2178#2,2:668\n2180#2,3:677\n2283#2:699\n2176#2,2:710\n1714#2:712\n2178#2,2:713\n2180#2,3:722\n2283#2:752\n2176#2,2:763\n1714#2:765\n2178#2,2:766\n2180#2,3:775\n2283#2:801\n2176#2,2:812\n1714#2:814\n2178#2,2:815\n2180#2,3:824\n2283#2:842\n2176#2,2:851\n1714#2:853\n2178#2,2:854\n2180#2,3:863\n2283#2:877\n2176#2,2:886\n1714#2:888\n2178#2,2:889\n2180#2,3:898\n2283#2:905\n2176#2,2:906\n1714#2:908\n2178#2,5:910\n2283#2:915\n2283#2:924\n2176#2,2:933\n1714#2:935\n2178#2,2:936\n2180#2,3:945\n2283#2:953\n2176#2,2:955\n1714#2:957\n2178#2,2:959\n2180#2,3:962\n2283#2:974\n2176#2,2:985\n1714#2:987\n2178#2,2:988\n2180#2,3:997\n2283#2:1014\n2176#2,2:1025\n1714#2:1027\n2178#2,2:1028\n2180#2,3:1037\n2283#2:1048\n2176#2,2:1050\n1714#2:1052\n2178#2,2:1054\n2180#2,3:1057\n2283#2:1062\n2176#2,2:1064\n1714#2:1066\n2178#2,2:1068\n2180#2,3:1071\n82#3:497\n82#3:549\n82#3:595\n82#3:634\n82#3:637\n82#3:651\n82#3:696\n82#3:749\n82#3:798\n82#3:839\n82#3:874\n82#3:909\n82#3:921\n82#3:951\n82#3:958\n82#3:961\n82#3:971\n82#3:1046\n82#3:1053\n82#3:1056\n82#3:1060\n82#3:1067\n82#3:1070\n1#4:731\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateList\n*L\n62#1:485\n105#1:487,10\n105#1:498\n105#1:499\n105#1:501,9\n105#1:510\n105#1:516,7\n105#1:526,6\n106#1:532,17\n106#1:550\n106#1:551\n106#1:553,9\n106#1:562\n106#1:568,7\n106#1:578,6\n106#1:584\n111#1:585,10\n111#1:596\n111#1:597\n111#1:599,9\n111#1:608\n111#1:614,7\n111#1:624,6\n113#1:630\n121#1:641,10\n121#1:652\n121#1:653\n121#1:655,9\n121#1:664\n121#1:670,7\n121#1:680,6\n122#1:686,10\n122#1:697\n122#1:698\n122#1:700,9\n122#1:709\n122#1:715,7\n122#1:725,6\n123#1:732,17\n123#1:750\n123#1:751\n123#1:753,9\n123#1:762\n123#1:768,7\n123#1:778,6\n123#1:784\n126#1:785,13\n126#1:799\n126#1:800\n126#1:802,9\n126#1:811\n126#1:817,7\n126#1:827,6\n126#1:833\n130#1:834,5\n130#1:840\n130#1:841\n130#1:843,7\n130#1:850\n130#1:856,7\n130#1:866,3\n137#1:869,5\n137#1:875\n137#1:876\n137#1:878,7\n137#1:885\n137#1:891,7\n137#1:901,3\n150#1:904\n160#1:916,5\n160#1:922\n160#1:923\n160#1:925,7\n160#1:932\n160#1:938,7\n160#1:948,3\n168#1:952\n175#1:954\n194#1:965,6\n194#1:972\n194#1:973\n194#1:975,9\n194#1:984\n194#1:990,7\n194#1:1000,6\n194#1:1006,7\n194#1:1013\n194#1:1015,9\n194#1:1024\n194#1:1030,7\n194#1:1040,6\n207#1:1047\n216#1:1049\n207#1:1061\n216#1:1063\n62#1:486\n105#1:500\n105#1:511,2\n105#1:513\n105#1:514,2\n105#1:523,3\n106#1:552\n106#1:563,2\n106#1:565\n106#1:566,2\n106#1:575,3\n111#1:598\n111#1:609,2\n111#1:611\n111#1:612,2\n111#1:621,3\n113#1:631,2\n113#1:633\n113#1:635,2\n113#1:638,3\n121#1:654\n121#1:665,2\n121#1:667\n121#1:668,2\n121#1:677,3\n122#1:699\n122#1:710,2\n122#1:712\n122#1:713,2\n122#1:722,3\n123#1:752\n123#1:763,2\n123#1:765\n123#1:766,2\n123#1:775,3\n126#1:801\n126#1:812,2\n126#1:814\n126#1:815,2\n126#1:824,3\n130#1:842\n130#1:851,2\n130#1:853\n130#1:854,2\n130#1:863,3\n137#1:877\n137#1:886,2\n137#1:888\n137#1:889,2\n137#1:898,3\n150#1:905\n154#1:906,2\n154#1:908\n154#1:910,5\n158#1:915\n160#1:924\n160#1:933,2\n160#1:935\n160#1:936,2\n160#1:945,3\n168#1:953\n175#1:955,2\n175#1:957\n175#1:959,2\n175#1:962,3\n194#1:974\n194#1:985,2\n194#1:987\n194#1:988,2\n194#1:997,3\n194#1:1014\n194#1:1025,2\n194#1:1027\n194#1:1028,2\n194#1:1037,3\n207#1:1048\n216#1:1050,2\n216#1:1052\n216#1:1054,2\n216#1:1057,3\n207#1:1062\n216#1:1064,2\n216#1:1066\n216#1:1068,2\n216#1:1071,3\n105#1:497\n106#1:549\n111#1:595\n113#1:634\n114#1:637\n121#1:651\n122#1:696\n123#1:749\n126#1:798\n130#1:839\n137#1:874\n154#1:909\n160#1:921\n167#1:951\n175#1:958\n176#1:961\n194#1:971\n206#1:1046\n216#1:1053\n217#1:1056\n206#1:1060\n216#1:1067\n217#1:1070\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010+\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u0005:\u0001QB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u001d\u0010\u001c\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u00172\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0016\u0010#\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0008\u0010&\u001a\u00020 H\u0016J3\u0010\'\u001a\u00020\u001d2\u0008\u0008\u0002\u0010(\u001a\u00020\u001d2\u001e\u0010)\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000+\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000+0*H\u0082\u0008J\u0016\u0010,\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010-\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0016\u0010.\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0017H\u0096\u0002\u00a2\u0006\u0002\u0010/J\u0015\u00100\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0008\u00102\u001a\u00020\u001dH\u0016J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u000004H\u0096\u0002J\u0015\u00105\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u000e\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u000007H\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u0000072\u0006\u0010!\u001a\u00020\u0017H\u0016J.\u00108\u001a\u0002H9\"\u0004\u0008\u0001\u001092\u0018\u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0004\u0012\u0002H90*H\u0082\u0008\u00a2\u0006\u0002\u0010:J\"\u0010;\u001a\u00020\u001d2\u0018\u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0004\u0012\u00020\u001d0*H\u0002J\u0010\u0010<\u001a\u00020 2\u0006\u0010=\u001a\u00020\rH\u0016J\u0015\u0010>\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010?\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u0015\u0010@\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010/J\u0016\u0010A\u001a\u00020 2\u0006\u0010B\u001a\u00020\u00172\u0006\u0010C\u001a\u00020\u0017J\u0016\u0010D\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J+\u0010E\u001a\u00020\u00172\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%2\u0006\u0010F\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008HJ\u001e\u0010I\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010JJ\u001e\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010B\u001a\u00020\u00172\u0006\u0010C\u001a\u00020\u0017H\u0016J\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008J3\u0010M\u001a\u00020 2\u0008\u0008\u0002\u0010(\u001a\u00020\u001d2\u001e\u0010)\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000+\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000+0*H\u0082\u0008J3\u0010N\u001a\u0002H9\"\u0004\u0008\u0001\u001092\u001d\u0010)\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0004\u0012\u0002H90*\u00a2\u0006\u0002\u0008OH\u0082\u0008\u00a2\u0006\u0002\u0010:J3\u0010P\u001a\u0002H9\"\u0004\u0008\u0001\u001092\u001d\u0010)\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0004\u0012\u0002H90*\u00a2\u0006\u0002\u0008OH\u0082\u0008\u00a2\u0006\u0002\u0010:R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00088AX\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00128@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00178@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019\u00a8\u0006R"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "T",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "()V",
        "debuggerDisplayValue",
        "",
        "getDebuggerDisplayValue$annotations",
        "getDebuggerDisplayValue",
        "()Ljava/util/List;",
        "<set-?>",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "firstStateRecord",
        "getFirstStateRecord",
        "()Landroidx/compose/runtime/snapshots/StateRecord;",
        "readable",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;",
        "getReadable$runtime_release$annotations",
        "getReadable$runtime_release",
        "()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;",
        "size",
        "",
        "getSize",
        "()I",
        "structure",
        "getStructure$runtime_release",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "clear",
        "conditionalUpdate",
        "structural",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;",
        "contains",
        "containsAll",
        "get",
        "(I)Ljava/lang/Object;",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "mutate",
        "R",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "mutateBoolean",
        "prependStateRecord",
        "value",
        "remove",
        "removeAll",
        "removeAt",
        "removeRange",
        "fromIndex",
        "toIndex",
        "retainAll",
        "retainAllInRange",
        "start",
        "end",
        "retainAllInRange$runtime_release",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "subList",
        "toList",
        "update",
        "withCurrent",
        "Lkotlin/ExtensionFunctionType;",
        "writable",
        "StateListStateRecord",
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
.field private firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentListOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 34
    return-void
.end method

.method private final conditionalUpdate(ZLkotlin/jvm/functions/Function1;)Z
    .locals 25
    .param p1, "structural"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 201
    .local v1, "$i$f$conditionalUpdate":I
    move-object/from16 v2, p0

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v2, "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    const/4 v4, 0x0

    .line 203
    .local v4, "result":Z
    :goto_0
    nop

    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, "oldList":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 206
    .local v6, "currentModification":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v7

    .local v7, "lock$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1046
    .local v8, "$i$f$synchronized":I
    monitor-enter v7

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1":I
    move-object v9, v2

    .local v9, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v10, 0x0

    .line 1047
    .local v10, "$i$f$withCurrent":I
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 1048
    .local v13, "$i$f$withCurrent":I
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v14, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v15, 0x0

    .line 207
    .local v15, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1":I
    nop

    .line 1048
    .end local v14    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1":I
    nop

    .line 1047
    .end local v12    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$withCurrent":I
    nop

    .line 207
    .end local v9    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$withCurrent":I
    move-object v9, v14

    .line 208
    .local v9, "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v10

    move v6, v10

    .line 209
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v10

    move-object v5, v10

    .line 210
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1":I
    .end local v9    # "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1046
    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v7

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 211
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$synchronized":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, p2

    invoke-interface {v9, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 212
    .local v7, "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 214
    .end local v4    # "result":Z
    .local v0, "result":Z
    move/from16 v19, v1

    goto/16 :goto_3

    .line 216
    .end local v0    # "result":Z
    .restart local v4    # "result":Z
    :cond_0
    move-object v8, v2

    .local v8, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v10, 0x0

    .line 1049
    .local v10, "$i$f$writable":I
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 1050
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 1051
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1052
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1053
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 1054
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 1055
    move-object v0, v8

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 217
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 1056
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 218
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v11, v6, :cond_2

    .line 219
    move-object/from16 v11, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v11, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :try_start_3
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 220
    if-eqz p1, :cond_1

    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v19

    move/from16 v24, v0

    const/16 v23, 0x1

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .local v24, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    add-int/lit8 v0, v19, 0x1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    goto :goto_1

    .end local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :cond_1
    move/from16 v24, v0

    .line 221
    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :goto_1
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    const/4 v0, 0x1

    goto :goto_2

    .line 1056
    .end local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :catchall_0
    move-exception v0

    move/from16 v19, v1

    goto :goto_4

    .line 223
    .end local v11    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :cond_2
    move/from16 v24, v0

    move-object/from16 v11, v19

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v11    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    const/4 v0, 0x0

    .line 218
    :goto_2
    nop

    .line 1056
    .end local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    const/16 v19, 0x1

    :try_start_4
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 217
    .end local v21    # "lock$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 1055
    .end local v11    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    nop

    .line 1053
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v16

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1052
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 1057
    .end local v15    # "$i$f$sync":I
    move v11, v0

    .local v11, "it$iv$iv":Z
    const/4 v15, 0x0

    .line 1058
    .local v15, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move/from16 v19, v1

    .end local v1    # "$i$f$conditionalUpdate":I
    .local v19, "$i$f$conditionalUpdate":I
    move-object v1, v8

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 1059
    nop

    .line 1057
    .end local v11    # "it$iv$iv":Z
    .end local v15    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    nop

    .line 1051
    nop

    .line 1049
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    nop

    .line 216
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    if-eqz v0, :cond_3

    .line 227
    const/4 v0, 0x1

    .line 228
    .end local v4    # "result":Z
    .local v0, "result":Z
    nop

    .line 231
    .end local v5    # "oldList":Ljava/lang/Object;
    .end local v6    # "currentModification":I
    .end local v7    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_3
    nop

    .line 201
    .end local v0    # "result":Z
    .end local v2    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    nop

    .line 232
    return v0

    .line 216
    .restart local v2    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .restart local v4    # "result":Z
    .restart local v5    # "oldList":Ljava/lang/Object;
    .restart local v6    # "currentModification":I
    .restart local v7    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :cond_3
    move/from16 v1, v19

    goto/16 :goto_0

    .line 1056
    .restart local v1    # "$i$f$conditionalUpdate":I
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v15, "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    .restart local v21    # "lock$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v11, v19

    move/from16 v19, v1

    .end local v1    # "$i$f$conditionalUpdate":I
    .local v11, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v19, "$i$f$conditionalUpdate":I
    :goto_4
    const/4 v1, 0x1

    :try_start_5
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .end local v4    # "result":Z
    .end local v5    # "oldList":Ljava/lang/Object;
    .end local v6    # "currentModification":I
    .end local v7    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v19    # "$i$f$conditionalUpdate":I
    .end local p1    # "structural":Z
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1053
    .end local v11    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    .end local v21    # "lock$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .restart local v4    # "result":Z
    .restart local v5    # "oldList":Ljava/lang/Object;
    .restart local v6    # "currentModification":I
    .restart local v7    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$conditionalUpdate":I
    .restart local p1    # "structural":Z
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v19    # "$i$f$conditionalUpdate":I
    .restart local v1    # "$i$f$conditionalUpdate":I
    :catchall_3
    move-exception v0

    move/from16 v19, v1

    .end local v1    # "$i$f$conditionalUpdate":I
    .restart local v19    # "$i$f$conditionalUpdate":I
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v16

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 1046
    .end local v10    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v19    # "$i$f$conditionalUpdate":I
    .restart local v1    # "$i$f$conditionalUpdate":I
    .local v7, "lock$iv":Ljava/lang/Object;
    .local v8, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v9, p2

    move/from16 v19, v1

    .end local v1    # "$i$f$conditionalUpdate":I
    .restart local v19    # "$i$f$conditionalUpdate":I
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v7

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method static synthetic conditionalUpdate$default(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 25
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .param p1, "structural"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 197
    const/4 v1, 0x1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    move v2, v0

    .end local p1    # "structural":Z
    .local v0, "structural":Z
    goto :goto_0

    .line 197
    .end local v0    # "structural":Z
    .restart local p1    # "structural":Z
    :cond_0
    move/from16 v2, p1

    .end local p1    # "structural":Z
    .local v2, "structural":Z
    :goto_0
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$f$conditionalUpdate":I
    move-object/from16 v4, p0

    .local v4, "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v5, 0x0

    .line 202
    .local v5, "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    const/4 v6, 0x0

    .line 203
    .local v6, "result":Z
    :goto_1
    nop

    .line 204
    const/4 v7, 0x0

    .line 205
    .local v7, "oldList":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 206
    .local v8, "currentModification":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v9

    .local v9, "lock$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1060
    .local v10, "$i$f$synchronized":I
    monitor-enter v9

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1":I
    move-object v11, v4

    .local v11, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v12, 0x0

    .line 1061
    .local v12, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v13

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v13, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v13, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v14, 0x0

    .line 1062
    .local v14, "$i$f$withCurrent":I
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v15, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v16, 0x0

    .line 207
    .local v16, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1":I
    nop

    .line 1062
    .end local v15    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v16    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1":I
    nop

    .line 1061
    .end local v13    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$withCurrent":I
    nop

    .line 207
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$withCurrent":I
    move-object v11, v15

    .line 208
    .local v11, "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v12

    move v8, v12

    .line 209
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v12

    move-object v7, v12

    .line 210
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1":I
    .end local v11    # "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1060
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v9

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 211
    .end local v9    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v11, p2

    invoke-interface {v11, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 212
    .local v9, "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x0

    .line 214
    .end local v6    # "result":Z
    .local v0, "result":Z
    goto/16 :goto_4

    .line 216
    .end local v0    # "result":Z
    .restart local v6    # "result":Z
    :cond_1
    move-object v10, v4

    .local v10, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v12, 0x0

    .line 1063
    .local v12, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v13, v0

    check-cast v13, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v13, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v14, 0x0

    .line 1064
    .local v14, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v15

    .line 1065
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v15, "snapshot$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1066
    .local v16, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v17

    .local v17, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1067
    .local v18, "$i$f$synchronized":I
    monitor-enter v17

    const/16 v19, 0x0

    .line 1068
    .local v19, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v15, v0

    .line 1069
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v0, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 p1, v0

    .local p1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 217
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 1070
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    .line 218
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v8, :cond_3

    .line 219
    move-object/from16 v1, p1

    .end local p1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :try_start_3
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 220
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v23

    move/from16 p1, v0

    const/16 v24, 0x1

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .local p1, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    add-int/lit8 v0, v23, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    goto :goto_2

    .end local p1    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :cond_2
    move/from16 p1, v0

    .line 221
    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local p1    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v23, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    const/4 v0, 0x1

    goto :goto_3

    .line 1070
    .end local p1    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 223
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .local p1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :cond_3
    move-object/from16 v1, p1

    move/from16 p1, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    .restart local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local p1, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    const/4 v0, 0x0

    .line 218
    :goto_3
    nop

    .line 1070
    .end local p1    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1":I
    const/16 v23, 0x1

    :try_start_4
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 217
    .end local v21    # "lock$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 1069
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    nop

    .line 1067
    .end local v19    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v17

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1066
    .end local v17    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$synchronized":I
    nop

    .line 1071
    .end local v16    # "$i$f$sync":I
    move v1, v0

    .local v1, "it$iv$iv":Z
    const/16 v16, 0x0

    .line 1072
    .local v16, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move/from16 p1, v1

    .end local v1    # "it$iv$iv":Z
    .local p1, "it$iv$iv":Z
    move-object v1, v10

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v15, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 1073
    nop

    .line 1071
    .end local v16    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    .end local p1    # "it$iv$iv":Z
    nop

    .line 1065
    nop

    .line 1063
    .end local v13    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv":Ljava/lang/Object;
    nop

    .line 216
    .end local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$writable":I
    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x1

    .line 228
    .end local v6    # "result":Z
    .local v0, "result":Z
    nop

    .line 231
    .end local v7    # "oldList":Ljava/lang/Object;
    .end local v8    # "currentModification":I
    .end local v9    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_4
    nop

    .line 201
    .end local v0    # "result":Z
    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    nop

    .line 232
    return v0

    .line 216
    .restart local v4    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .restart local v6    # "result":Z
    .restart local v7    # "oldList":Ljava/lang/Object;
    .restart local v8    # "currentModification":I
    .restart local v9    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1070
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v16, "$i$f$sync":I
    .restart local v17    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$synchronized":I
    .restart local v19    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    .restart local v21    # "lock$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    .local p1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    .end local p1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :goto_5
    const/16 v23, 0x1

    :try_start_5
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "structural":Z
    .end local v3    # "$i$f$conditionalUpdate":I
    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .end local v6    # "result":Z
    .end local v7    # "oldList":Ljava/lang/Object;
    .end local v8    # "currentModification":I
    .end local v9    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$sync":I
    .end local v17    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$synchronized":I
    .end local p0    # "$this":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1067
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v19    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2":I
    .end local v21    # "lock$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "structural":Z
    .restart local v3    # "$i$f$conditionalUpdate":I
    .restart local v4    # "$this$conditionalUpdate_u24lambda_u2424":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1":I
    .restart local v6    # "result":Z
    .restart local v7    # "oldList":Ljava/lang/Object;
    .restart local v8    # "currentModification":I
    .restart local v9    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$sync":I
    .restart local v17    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$synchronized":I
    .restart local p0    # "$this":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v17

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 1060
    .end local v12    # "$i$f$writable":I
    .end local v13    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$sync":I
    .end local v17    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$synchronized":I
    .local v9, "lock$iv":Ljava/lang/Object;
    .local v10, "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    move-object/from16 v11, p2

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v9

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public static synthetic getDebuggerDisplayValue$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReadable$runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private final mutate(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 24
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 163
    .local v1, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v2, v0

    .line 164
    .local v2, "result":Ljava/lang/Object;
    :cond_0
    nop

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "oldList":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 167
    .local v4, "currentModification":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 951
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 168
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$1":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v8, 0x0

    .line 952
    .local v8, "$i$f$withCurrent":I
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 953
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v12, "$this$mutate_u24lambda_u2417_u24lambda_u2416":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v13, 0x0

    .line 168
    .local v13, "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1":I
    nop

    .line 953
    .end local v12    # "$this$mutate_u24lambda_u2417_u24lambda_u2416":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1":I
    nop

    .line 952
    .end local v10    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 168
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v8    # "$i$f$withCurrent":I
    move-object v7, v12

    .line 169
    .local v7, "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v8

    move v4, v8

    .line 170
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v8

    move-object v3, v8

    .line 171
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$1":I
    .end local v7    # "current":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 951
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 172
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    move-result-object v5

    .line 173
    .local v5, "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v6

    .line 175
    .local v6, "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v10, 0x0

    .line 954
    .local v10, "$i$f$writable":I
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 955
    .local v12, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 956
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 957
    .local v14, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v15

    .local v15, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 958
    .local v16, "$i$f$synchronized":I
    monitor-enter v15

    const/16 v17, 0x0

    .line 959
    .local v17, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v13, v0

    .line 960
    move-object v0, v8

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v18, v0

    .local v18, "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v19, 0x0

    .line 176
    .local v19, "$i$a$-writable-SnapshotStateList$mutate$2":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "lock$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 961
    .local v21, "$i$f$synchronized":I
    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    .line 177
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v9, v4, :cond_1

    .line 178
    move-object/from16 v9, v18

    .end local v18    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v9, "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :try_start_3
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 179
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v18

    move/from16 v23, v0

    const/16 v22, 0x1

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V

    .line 180
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 961
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 182
    .end local v9    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    .restart local v18    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :cond_1
    move/from16 v23, v0

    move-object/from16 v9, v18

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    .end local v18    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v9    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    const/4 v0, 0x0

    .line 177
    :goto_0
    nop

    .line 961
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1":I
    const/16 v18, 0x1

    :try_start_4
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v20

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    .end local v20    # "lock$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 960
    .end local v9    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v19    # "$i$a$-writable-SnapshotStateList$mutate$2":I
    nop

    .line 958
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v15

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 957
    .end local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    nop

    .line 962
    .end local v14    # "$i$f$sync":I
    move v9, v0

    .local v9, "it$iv$iv":Z
    const/4 v14, 0x0

    .line 963
    .local v14, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move-object v15, v8

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 964
    nop

    .line 962
    .end local v9    # "it$iv$iv":Z
    .end local v14    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    nop

    .line 956
    nop

    .line 954
    .end local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    nop

    .line 175
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    if-eqz v0, :cond_0

    goto :goto_2

    .line 961
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v14, "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .restart local v18    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v19    # "$i$a$-writable-SnapshotStateList$mutate$2":I
    .restart local v20    # "lock$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v9, v18

    .end local v18    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v9, "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :goto_1
    const/16 v18, 0x1

    :try_start_5
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v20

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v1    # "$i$f$mutate":I
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "oldList":Ljava/lang/Object;
    .end local v4    # "currentModification":I
    .end local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v6    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 958
    .end local v9    # "$this$mutate_u24lambda_u2419":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v19    # "$i$a$-writable-SnapshotStateList$mutate$2":I
    .end local v20    # "lock$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .restart local v1    # "$i$f$mutate":I
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "oldList":Ljava/lang/Object;
    .restart local v4    # "currentModification":I
    .restart local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .restart local v6    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v15

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 185
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    :cond_2
    :goto_2
    nop

    .line 187
    .end local v3    # "oldList":Ljava/lang/Object;
    .end local v4    # "currentModification":I
    .end local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v6    # "newList":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    return-object v2

    .line 951
    .restart local v3    # "oldList":Ljava/lang/Object;
    .restart local v4    # "currentModification":I
    .local v5, "lock$iv":Ljava/lang/Object;
    .local v6, "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private final mutateBoolean(Lkotlin/jvm/functions/Function1;)Z
    .locals 24
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 160
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v2, 0x0

    .line 916
    .local v2, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v3, v0

    .line 917
    .local v3, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 918
    const/4 v4, 0x0

    .line 919
    .local v4, "oldList$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 920
    .local v5, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 921
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 922
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v9, 0x0

    .line 923
    .local v9, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 924
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v12, "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v13, 0x0

    .line 922
    .local v13, "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 924
    .end local v12    # "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 923
    .end local v10    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 922
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v9    # "$i$f$withCurrent":I
    move-object v8, v12

    .line 925
    .local v8, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v9

    move v5, v9

    .line 926
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v9

    move-object v4, v9

    .line 927
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    .end local v8    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 921
    monitor-exit v6

    .line 928
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    move-result-object v6

    .line 929
    .local v6, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 930
    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v7

    .line 931
    .local v7, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v9, v1

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v10, 0x0

    .line 932
    .local v10, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 933
    .local v12, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 934
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 935
    .local v14, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v15

    .local v15, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 921
    .local v16, "$i$f$synchronized":I
    monitor-enter v15

    const/16 v17, 0x0

    .line 936
    .local v17, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v13, v0

    .line 937
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v18, v0

    .local v18, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v19, 0x0

    .line 938
    .local v19, "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "lock$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 921
    .local v21, "$i$f$synchronized":I
    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 939
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    move/from16 v22, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    .local v22, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v5, :cond_0

    .line 940
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v23, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :try_start_3
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 941
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V

    .line 942
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 943
    goto :goto_1

    .line 921
    .end local v22    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 944
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v18    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v22    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :cond_0
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v18, 0x0

    .line 939
    :goto_1
    nop

    .line 921
    .end local v22    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 938
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 937
    .end local v1    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v19    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    nop

    .line 921
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v15

    .line 935
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    nop

    .line 945
    .end local v14    # "$i$f$sync":I
    move/from16 v0, v18

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 946
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v14, v9

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 947
    nop

    .line 945
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 934
    nop

    .line 932
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 931
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    if-eqz v18, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 921
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v18    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v19    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .restart local v20    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_2
    :try_start_5
    monitor-exit v20

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v4    # "oldList$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v19    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldList$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .restart local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .restart local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :catchall_3
    move-exception v0

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_3
    monitor-exit v15

    throw v0

    .line 931
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_2
    move-object/from16 v23, v1

    .line 948
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_4
    nop

    .line 950
    .end local v4    # "oldList$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    nop

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 160
    return v0

    .line 921
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldList$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .local v6, "lock$iv$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    monitor-exit v6

    throw v0
.end method

.method private final update(ZLkotlin/jvm/functions/Function1;)V
    .locals 26
    .param p1, "structural"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$update":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v3, 0x0

    .line 965
    .local v3, "$i$f$conditionalUpdate":I
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v4, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v5, 0x0

    .line 966
    .local v5, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v6, 0x0

    .line 967
    .local v6, "result$iv":Z
    :goto_0
    nop

    .line 968
    const/4 v7, 0x0

    .line 969
    .local v7, "oldList$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 970
    .local v8, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v9

    .local v9, "lock$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 971
    .local v10, "$i$f$synchronized":I
    monitor-enter v9

    const/4 v0, 0x0

    .line 972
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v11, v4

    .local v11, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v12, 0x0

    .line 973
    .local v12, "$i$f$withCurrent":I
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 974
    .local v15, "$i$f$withCurrent":I
    invoke-static {v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v16

    check-cast v16, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v16, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v17, 0x0

    .line 972
    .local v17, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 974
    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v17    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 973
    .end local v14    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$withCurrent":I
    nop

    .line 972
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$withCurrent":I
    move-object/from16 v11, v16

    .line 975
    .local v11, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v12

    move v8, v12

    .line 976
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v12

    move-object v7, v12

    .line 977
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v11    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 971
    invoke-static {v13}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v9

    invoke-static {v13}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 978
    .end local v9    # "lock$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v11, p2

    invoke-interface {v11, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 979
    .local v9, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 981
    .end local v6    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 v25, v1

    goto/16 :goto_2

    .line 983
    .end local v0    # "result$iv":Z
    .restart local v6    # "result$iv":Z
    :cond_0
    move-object v10, v4

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v12, 0x0

    .line 984
    .local v12, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 985
    .local v15, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 986
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 987
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 971
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 988
    .local v20, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v0

    .line 989
    :try_start_2
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v13, v16

    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :try_start_3
    invoke-static {v14, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v16, v0

    .local v16, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v21, 0x0

    .line 990
    .local v21, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    .local v22, "lock$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 971
    .local v23, "$i$f$synchronized":I
    monitor-enter v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    .line 991
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 v24, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local v24, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v8, :cond_2

    .line 992
    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v25, "$i$f$update":I
    :try_start_5
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 993
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 994
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 995
    const/4 v0, 0x1

    goto :goto_1

    .line 971
    .end local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 996
    .end local v25    # "$i$f$update":I
    .local v1, "$i$f$update":I
    .restart local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_2
    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v25    # "$i$f$update":I
    const/4 v0, 0x0

    .line 991
    :goto_1
    nop

    .line 971
    .end local v24    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    const/16 v16, 0x1

    :try_start_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 990
    .end local v22    # "lock$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    nop

    .line 989
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v21    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 971
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 987
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 997
    .end local v17    # "$i$f$sync":I
    move v1, v0

    .local v1, "it$iv$iv$iv":Z
    const/16 v16, 0x0

    .line 998
    .local v16, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move/from16 v17, v1

    .end local v1    # "it$iv$iv$iv":Z
    .local v17, "it$iv$iv$iv":Z
    move-object v1, v10

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 999
    nop

    .line 997
    .end local v16    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    .end local v17    # "it$iv$iv$iv":Z
    nop

    .line 986
    nop

    .line 984
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 983
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$writable":I
    if-eqz v0, :cond_3

    .line 1000
    const/4 v0, 0x1

    .line 1001
    .end local v6    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 1004
    .end local v7    # "oldList$iv":Ljava/lang/Object;
    .end local v8    # "currentModification$iv":I
    .end local v9    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 965
    .end local v0    # "result$iv":Z
    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 1005
    nop

    .line 195
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$f$conditionalUpdate":I
    return-void

    .line 983
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$conditionalUpdate":I
    .restart local v4    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v6    # "result$iv":Z
    .restart local v7    # "oldList$iv":Ljava/lang/Object;
    .restart local v8    # "currentModification$iv":I
    .restart local v9    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :cond_3
    move/from16 v1, v25

    goto/16 :goto_0

    .line 971
    .end local v25    # "$i$f$update":I
    .local v1, "$i$f$update":I
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .local v16, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v17, "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v21    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v22    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v25    # "$i$f$update":I
    :goto_3
    const/16 v16, 0x1

    :try_start_7
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$f$conditionalUpdate":I
    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v6    # "result$iv":Z
    .end local v7    # "oldList$iv":Ljava/lang/Object;
    .end local v8    # "currentModification$iv":I
    .end local v9    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v25    # "$i$f$update":I
    .end local p1    # "structural":Z
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v21    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v22    # "lock$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$conditionalUpdate":I
    .restart local v4    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v6    # "result$iv":Z
    .restart local v7    # "oldList$iv":Ljava/lang/Object;
    .restart local v8    # "currentModification$iv":I
    .restart local v9    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v25    # "$i$f$update":I
    .restart local p1    # "structural":Z
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v13

    goto :goto_4

    .end local v25    # "$i$f$update":I
    .local v1, "$i$f$update":I
    :catchall_3
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v16, v13

    .end local v1    # "$i$f$update":I
    .restart local v25    # "$i$f$update":I
    goto :goto_4

    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$update":I
    .restart local v1    # "$i$f$update":I
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v13, v16

    .end local v1    # "$i$f$update":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v25    # "$i$f$update":I
    goto :goto_4

    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$update":I
    .restart local v1    # "$i$f$update":I
    .restart local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move/from16 v25, v1

    .end local v1    # "$i$f$update":I
    .restart local v25    # "$i$f$update":I
    :goto_4
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .end local v12    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v25    # "$i$f$update":I
    .restart local v1    # "$i$f$update":I
    .local v9, "lock$iv$iv":Ljava/lang/Object;
    .local v10, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move-object/from16 v11, p2

    move/from16 v25, v1

    .end local v1    # "$i$f$update":I
    .restart local v25    # "$i$f$update":I
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v9

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method static synthetic update$default(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 25
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .param p1, "structural"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 190
    const/4 v1, 0x1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    move v2, v0

    .end local p1    # "structural":Z
    .local v0, "structural":Z
    goto :goto_0

    .line 190
    .end local v0    # "structural":Z
    .restart local p1    # "structural":Z
    :cond_0
    move/from16 v2, p1

    .end local p1    # "structural":Z
    .local v2, "structural":Z
    :goto_0
    const/4 v3, 0x0

    .line 194
    .local v3, "$i$f$update":I
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v5, 0x0

    .line 1006
    .local v5, "$i$f$conditionalUpdate":I
    move-object v6, v4

    .local v6, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v7, 0x0

    .line 1007
    .local v7, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v8, 0x0

    .line 1008
    .local v8, "result$iv":Z
    :goto_1
    nop

    .line 1009
    const/4 v9, 0x0

    .line 1010
    .local v9, "oldList$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1011
    .local v10, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v11

    .local v11, "lock$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 971
    .local v12, "$i$f$synchronized":I
    monitor-enter v11

    const/4 v0, 0x0

    .line 1012
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v13, v6

    .local v13, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v14, 0x0

    .line 1013
    .local v14, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v15

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v15, Landroidx/compose/runtime/snapshots/StateRecord;

    move-object v1, v15

    .local v1, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 1014
    .local v15, "$i$f$withCurrent":I
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v16

    check-cast v16, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v16, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v17, 0x0

    .line 1012
    .local v17, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 1014
    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v17    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 1013
    .end local v1    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$withCurrent":I
    nop

    .line 1012
    .end local v13    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v14    # "$i$f$withCurrent":I
    move-object/from16 v1, v16

    .line 1015
    .local v1, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v13

    move v10, v13

    .line 1016
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v13

    move-object v9, v13

    .line 1017
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v1    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 971
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v11

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1018
    .end local v11    # "lock$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$synchronized":I
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 1019
    .local v11, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    const/4 v0, 0x0

    .line 1021
    .end local v8    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 p1, v2

    move/from16 v23, v3

    goto/16 :goto_3

    .line 1023
    .end local v0    # "result$iv":Z
    .restart local v8    # "result$iv":Z
    :cond_1
    move-object v12, v6

    .local v12, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v13, 0x0

    .line 1024
    .local v13, "$i$f$writable":I
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 1025
    .local v15, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 1026
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1027
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 971
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 1028
    .local v20, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 p1, v0

    .line 1029
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local p1, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :try_start_2
    move-object v0, v12

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v1, p1

    .end local p1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v1, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :try_start_3
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 p1, v0

    .local p1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v16, 0x0

    .line 1030
    .local v16, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 971
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v0, 0x0

    .line 1031
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 p3, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local p3, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v10, :cond_3

    .line 1032
    move/from16 v23, v3

    move-object/from16 v3, p1

    .end local p1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v3, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v23, "$i$f$update":I
    :try_start_5
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 1033
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v24, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 1034
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v24, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1035
    const/4 v0, 0x1

    goto :goto_2

    .line 971
    .end local p3    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    move/from16 p1, v2

    goto :goto_4

    .line 1036
    .end local v23    # "$i$f$update":I
    .local v3, "$i$f$update":I
    .restart local p1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local p3    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_3
    move/from16 v23, v3

    move-object/from16 v3, p1

    .end local p1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v3, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$f$update":I
    const/4 v0, 0x0

    .line 1031
    :goto_2
    nop

    .line 971
    .end local p3    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    const/16 v24, 0x1

    :try_start_6
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1030
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 1029
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v16    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 971
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1027
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 1037
    .end local v17    # "$i$f$sync":I
    move v3, v0

    .local v3, "it$iv$iv$iv":Z
    const/16 v16, 0x0

    .line 1038
    .local v16, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move/from16 p1, v2

    .end local v2    # "structural":Z
    .local p1, "structural":Z
    move-object v2, v12

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 1039
    nop

    .line 1037
    .end local v3    # "it$iv$iv$iv":Z
    .end local v16    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 1026
    nop

    .line 1024
    .end local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 1023
    .end local v12    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$writable":I
    if-eqz v0, :cond_4

    .line 1040
    const/4 v0, 0x1

    .line 1041
    .end local v8    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 1044
    .end local v9    # "oldList$iv":Ljava/lang/Object;
    .end local v10    # "currentModification$iv":I
    .end local v11    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_3
    nop

    .line 1006
    .end local v0    # "result$iv":Z
    .end local v6    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v7    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 1045
    nop

    .line 195
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$f$conditionalUpdate":I
    return-void

    .line 1023
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$f$conditionalUpdate":I
    .restart local v6    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v7    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v8    # "result$iv":Z
    .restart local v9    # "oldList$iv":Ljava/lang/Object;
    .restart local v10    # "currentModification$iv":I
    .restart local v11    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :cond_4
    move/from16 v2, p1

    move/from16 v3, v23

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 971
    .end local p1    # "structural":Z
    .restart local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v2    # "structural":Z
    .restart local v12    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 p1, v2

    move-object/from16 v16, v1

    .end local v2    # "structural":Z
    .restart local p1    # "structural":Z
    goto :goto_5

    .end local v23    # "$i$f$update":I
    .restart local v2    # "structural":Z
    .local v3, "$i$f$update":I
    .local v16, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    .local p1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    :catchall_2
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v3, p1

    move/from16 p1, v2

    .end local v2    # "structural":Z
    .local v3, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$f$update":I
    .local p1, "structural":Z
    :goto_4
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v21

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$f$conditionalUpdate":I
    .end local v6    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v7    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v8    # "result$iv":Z
    .end local v9    # "oldList$iv":Ljava/lang/Object;
    .end local v10    # "currentModification$iv":I
    .end local v11    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v12    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v23    # "$i$f$update":I
    .end local p0    # "$this":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p1    # "structural":Z
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v16    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$f$conditionalUpdate":I
    .restart local v6    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v7    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v8    # "result$iv":Z
    .restart local v9    # "oldList$iv":Ljava/lang/Object;
    .restart local v10    # "currentModification$iv":I
    .restart local v11    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v12    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v23    # "$i$f$update":I
    .restart local p0    # "$this":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p1    # "structural":Z
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    .end local v23    # "$i$f$update":I
    .end local p1    # "structural":Z
    .restart local v2    # "structural":Z
    .local v3, "$i$f$update":I
    :catchall_4
    move-exception v0

    move/from16 p1, v2

    move/from16 v23, v3

    move-object/from16 v16, v1

    .end local v2    # "structural":Z
    .end local v3    # "$i$f$update":I
    .restart local v23    # "$i$f$update":I
    .restart local p1    # "structural":Z
    goto :goto_5

    .end local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$update":I
    .restart local v2    # "structural":Z
    .restart local v3    # "$i$f$update":I
    .local p1, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v1, p1

    move/from16 p1, v2

    move/from16 v23, v3

    move-object/from16 v16, v1

    .end local v2    # "structural":Z
    .end local v3    # "$i$f$update":I
    .restart local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$update":I
    .local p1, "structural":Z
    goto :goto_5

    .end local v1    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$update":I
    .end local p1    # "structural":Z
    .restart local v2    # "structural":Z
    .restart local v3    # "$i$f$update":I
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move/from16 p1, v2

    move/from16 v23, v3

    .end local v2    # "structural":Z
    .end local v3    # "$i$f$update":I
    .restart local v23    # "$i$f$update":I
    .restart local p1    # "structural":Z
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v23    # "$i$f$update":I
    .end local p1    # "structural":Z
    .restart local v2    # "structural":Z
    .restart local v3    # "$i$f$update":I
    .local v11, "lock$iv$iv":Ljava/lang/Object;
    .local v12, "$i$f$synchronized":I
    :catchall_7
    move-exception v0

    move/from16 p1, v2

    move/from16 v23, v3

    .end local v2    # "structural":Z
    .end local v3    # "$i$f$update":I
    .restart local v23    # "$i$f$update":I
    .restart local p1    # "structural":Z
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v11

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private final withCurrent(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    .local v0, "$i$f$withCurrent":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 915
    .local v2, "$i$f$withCurrent":I
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .end local v1    # "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v2    # "$i$f$withCurrent":I
    return-object v1
.end method

.method private final writable(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$f$writable":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 906
    .local v2, "$i$f$writable":I
    const/4 v3, 0x0

    .local v3, "snapshot$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 907
    const/4 v4, 0x0

    .line 908
    .local v4, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 909
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v7, 0x0

    .line 910
    .local v7, "$i$a$-sync-SnapshotKt$writable$3$iv":I
    const/4 v8, 0x1

    :try_start_0
    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object v3, v9

    .line 911
    move-object v9, p0

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v9, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    .end local v7    # "$i$a$-sync-SnapshotKt$writable$3$iv":I
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 908
    .end local v5    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 912
    .end local v4    # "$i$f$sync":I
    move-object v4, v9

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 913
    .local v5, "$i$a$-also-SnapshotKt$writable$4$iv":I
    move-object v6, p0

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v3, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 914
    nop

    .line 912
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-also-SnapshotKt$writable$4$iv":I
    nop

    .line 907
    nop

    .line 154
    .end local v1    # "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v2    # "$i$f$writable":I
    .end local v3    # "snapshot$iv":Ljava/lang/Object;
    return-object v9

    .line 909
    .restart local v1    # "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v2    # "$i$f$writable":I
    .restart local v3    # "snapshot$iv":Ljava/lang/Object;
    .local v4, "$i$f$sync":I
    .local v5, "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    :catchall_0
    move-exception v7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v7
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 28
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 106
    nop

    .line 532
    nop

    .line 533
    const/4 v1, 0x1

    .line 532
    .local v1, "structural$iv":Z
    const/4 v2, 0x0

    .line 536
    .local v2, "$i$f$update":I
    move-object/from16 v3, p0

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v4, 0x0

    .line 543
    .local v4, "$i$f$conditionalUpdate":I
    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v5, "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v6, 0x0

    .line 544
    .local v6, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    const/4 v7, 0x0

    .line 545
    .local v7, "result$iv$iv":Z
    :goto_0
    nop

    .line 546
    const/4 v8, 0x0

    .line 547
    .local v8, "oldList$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 548
    .local v9, "currentModification$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v10

    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 549
    .local v11, "$i$f$synchronized":I
    monitor-enter v10

    const/4 v0, 0x0

    .line 550
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    move-object v12, v5

    .local v12, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v13, 0x0

    .line 551
    .local v13, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 552
    .local v15, "$i$f$withCurrent":I
    invoke-static {v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v16

    check-cast v16, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v16, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v17, 0x0

    .line 550
    .local v17, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 552
    .end local v16    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v17    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 551
    .end local v14    # "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$withCurrent":I
    nop

    .line 550
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$withCurrent":I
    move-object/from16 v12, v16

    .line 553
    .local v12, "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v13

    move v9, v13

    .line 554
    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v13

    move-object v8, v13

    .line 555
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    .end local v12    # "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 549
    monitor-exit v10

    .line 556
    .end local v10    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$synchronized":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v8

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v10, 0x0

    .line 106
    .local v10, "$i$a$-update$default-SnapshotStateList$add$2":I
    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-interface {v0, v12, v13}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->add(ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    .line 556
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v10    # "$i$a$-update$default-SnapshotStateList$add$2":I
    move-object v10, v0

    .line 557
    .local v10, "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 559
    .end local v7    # "result$iv$iv":Z
    .local v0, "result$iv$iv":Z
    move/from16 v22, v1

    move/from16 v27, v2

    goto/16 :goto_2

    .line 561
    .end local v0    # "result$iv$iv":Z
    .restart local v7    # "result$iv$iv":Z
    :cond_0
    move-object v11, v5

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v14, 0x0

    .line 562
    .local v14, "$i$f$writable":I
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v15, v0

    check-cast v15, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v15, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/16 v16, 0x0

    .line 563
    .local v16, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v17

    .line 564
    .end local v0    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v17, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 565
    .local v18, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v19

    .local v19, "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 549
    .local v20, "$i$f$synchronized":I
    monitor-enter v19

    const/16 v21, 0x0

    .line 566
    .local v21, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v17, v0

    .line 567
    :try_start_2
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v22, v1

    move-object/from16 v1, v17

    .end local v17    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v22, "structural$iv":Z
    :try_start_3
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v17, v0

    .local v17, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v23, 0x0

    .line 568
    .local v23, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    .local v24, "lock$iv$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 549
    .local v25, "$i$f$synchronized":I
    monitor-enter v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    .line 569
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    move/from16 v26, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    .local v26, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v9, :cond_1

    .line 570
    move/from16 v27, v2

    move-object/from16 v2, v17

    .end local v17    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v2, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v27, "$i$f$update":I
    :try_start_5
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 571
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 572
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 573
    goto :goto_1

    .line 549
    .end local v26    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 574
    .end local v27    # "$i$f$update":I
    .local v2, "$i$f$update":I
    .restart local v17    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v26    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :cond_1
    move/from16 v27, v2

    move-object/from16 v2, v17

    .end local v17    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v2, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v27    # "$i$f$update":I
    const/16 v17, 0x0

    .line 569
    :goto_1
    nop

    .line 549
    .end local v26    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 568
    .end local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    nop

    .line 567
    .end local v2    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v23    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    nop

    .line 549
    .end local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    monitor-exit v19

    .line 565
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    nop

    .line 575
    .end local v18    # "$i$f$sync":I
    move/from16 v0, v17

    .local v0, "it$iv$iv$iv$iv":Z
    const/4 v2, 0x0

    .line 576
    .local v2, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    move/from16 v18, v0

    .end local v0    # "it$iv$iv$iv$iv":Z
    .local v18, "it$iv$iv$iv$iv":Z
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 577
    nop

    .line 575
    .end local v2    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    .end local v18    # "it$iv$iv$iv$iv":Z
    nop

    .line 564
    nop

    .line 562
    .end local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v16    # "$i$f$writable":I
    nop

    .line 561
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v14    # "$i$f$writable":I
    if-eqz v17, :cond_2

    .line 578
    const/4 v0, 0x1

    .line 579
    .end local v7    # "result$iv$iv":Z
    .local v0, "result$iv$iv":Z
    nop

    .line 582
    .end local v8    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 543
    .end local v0    # "result$iv$iv":Z
    .end local v5    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v6    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    nop

    .line 583
    nop

    .line 584
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$f$conditionalUpdate":I
    nop

    .line 106
    .end local v22    # "structural$iv":Z
    .end local v27    # "$i$f$update":I
    return-void

    .line 561
    .restart local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$f$conditionalUpdate":I
    .restart local v5    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v6    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v7    # "result$iv$iv":Z
    .restart local v8    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .restart local v10    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v22    # "structural$iv":Z
    .restart local v27    # "$i$f$update":I
    :cond_2
    move/from16 v1, v22

    move/from16 v2, v27

    goto/16 :goto_0

    .line 549
    .end local v27    # "$i$f$update":I
    .restart local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v2, "$i$f$update":I
    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v16    # "$i$f$writable":I
    .restart local v17    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v18, "$i$f$sync":I
    .restart local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$synchronized":I
    .restart local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .restart local v23    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .restart local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v25    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v2, v17

    .end local v17    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v2, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v27    # "$i$f$update":I
    :goto_3
    :try_start_7
    monitor-exit v24

    .end local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$f$conditionalUpdate":I
    .end local v5    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v6    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .end local v7    # "result$iv$iv":Z
    .end local v8    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v9    # "currentModification$iv$iv":I
    .end local v10    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v14    # "$i$f$writable":I
    .end local v15    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v16    # "$i$f$writable":I
    .end local v18    # "$i$f$sync":I
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    .end local v22    # "structural$iv":Z
    .end local v27    # "$i$f$update":I
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v2    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v21    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .end local v23    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .end local v24    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    .restart local v1    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$f$conditionalUpdate":I
    .restart local v5    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v6    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v7    # "result$iv$iv":Z
    .restart local v8    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v9    # "currentModification$iv$iv":I
    .restart local v10    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v14    # "$i$f$writable":I
    .restart local v15    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v16    # "$i$f$writable":I
    .restart local v18    # "$i$f$sync":I
    .restart local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$synchronized":I
    .restart local v22    # "structural$iv":Z
    .restart local v27    # "$i$f$update":I
    .restart local p1    # "index":I
    .restart local p2    # "element":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_4

    .end local v27    # "$i$f$update":I
    .local v2, "$i$f$update":I
    :catchall_3
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v17, v1

    .end local v2    # "$i$f$update":I
    .restart local v27    # "$i$f$update":I
    goto :goto_4

    .end local v22    # "structural$iv":Z
    .end local v27    # "$i$f$update":I
    .local v1, "structural$iv":Z
    .restart local v2    # "$i$f$update":I
    .local v17, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v22, v1

    move/from16 v27, v2

    move-object/from16 v1, v17

    .end local v2    # "$i$f$update":I
    .end local v17    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v22    # "structural$iv":Z
    .restart local v27    # "$i$f$update":I
    goto :goto_4

    .end local v22    # "structural$iv":Z
    .end local v27    # "$i$f$update":I
    .local v1, "structural$iv":Z
    .restart local v2    # "$i$f$update":I
    .restart local v17    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move/from16 v22, v1

    move/from16 v27, v2

    .end local v1    # "structural$iv":Z
    .end local v2    # "$i$f$update":I
    .restart local v22    # "structural$iv":Z
    .restart local v27    # "$i$f$update":I
    :goto_4
    monitor-exit v19

    throw v0

    .end local v14    # "$i$f$writable":I
    .end local v15    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v16    # "$i$f$writable":I
    .end local v17    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$sync":I
    .end local v19    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$synchronized":I
    .end local v22    # "structural$iv":Z
    .end local v27    # "$i$f$update":I
    .restart local v1    # "structural$iv":Z
    .restart local v2    # "$i$f$update":I
    .local v10, "lock$iv$iv$iv":Ljava/lang/Object;
    .local v11, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v22, v1

    move/from16 v27, v2

    .end local v1    # "structural$iv":Z
    .end local v2    # "$i$f$update":I
    .restart local v22    # "structural$iv":Z
    .restart local v27    # "$i$f$update":I
    monitor-exit v10

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 25
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 105
    nop

    .line 487
    nop

    .line 488
    const/4 v1, 0x1

    .line 487
    .local v1, "structural$iv":Z
    const/4 v2, 0x0

    .line 491
    .local v2, "$i$f$conditionalUpdate":I
    move-object/from16 v3, p0

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v3, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v4, 0x0

    .line 492
    .local v4, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v5, 0x0

    .line 493
    .local v5, "result$iv":Z
    :goto_0
    nop

    .line 494
    const/4 v6, 0x0

    .line 495
    .local v6, "oldList$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 496
    .local v7, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 497
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 498
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v10, v3

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 499
    .local v11, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 500
    .local v13, "$i$f$withCurrent":I
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v14, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v15, 0x0

    .line 498
    .local v15, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 500
    .end local v14    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 499
    .end local v12    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$withCurrent":I
    nop

    .line 498
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$withCurrent":I
    move-object v10, v14

    .line 501
    .local v10, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v11

    move v7, v11

    .line 502
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v11

    move-object v6, v11

    .line 503
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v10    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 497
    monitor-exit v8

    .line 504
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v6

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v8, 0x0

    .line 105
    .local v8, "$i$a$-conditionalUpdate$default-SnapshotStateList$add$1":I
    move-object/from16 v10, p1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    .line 504
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "$i$a$-conditionalUpdate$default-SnapshotStateList$add$1":I
    move-object v8, v0

    .line 505
    .local v8, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 507
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 v24, v1

    goto/16 :goto_2

    .line 509
    .end local v0    # "result$iv":Z
    .restart local v5    # "result$iv":Z
    :cond_0
    move-object v9, v3

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 510
    .local v11, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 511
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 512
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 513
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 497
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 514
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 515
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 516
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 497
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 517
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_1

    .line 518
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v24, "structural$iv":Z
    :try_start_3
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 519
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 520
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 521
    goto :goto_1

    .line 497
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 522
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_1
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    const/16 v19, 0x0

    .line 517
    :goto_1
    nop

    .line 497
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 516
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 515
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 497
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 513
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 523
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 524
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v9

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 525
    nop

    .line 523
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 512
    nop

    .line 510
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 509
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_2

    .line 526
    const/4 v0, 0x1

    .line 527
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 530
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 491
    .end local v0    # "result$iv":Z
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 531
    nop

    .line 105
    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v24    # "structural$iv":Z
    return v0

    .line 509
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v24    # "structural$iv":Z
    :cond_2
    move/from16 v1, v24

    goto/16 :goto_0

    .line 497
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    :goto_3
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v5    # "result$iv":Z
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .end local p1    # "element":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "structural$iv":Z
    .restart local p1    # "element":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    :goto_4
    monitor-exit v16

    throw v0

    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .restart local v1    # "structural$iv":Z
    .local v8, "lock$iv$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    monitor-exit v8

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 107
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;-><init>(ILjava/util/Collection;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->mutateBoolean(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 109
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 25
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 111
    nop

    .line 585
    nop

    .line 586
    const/4 v1, 0x1

    .line 585
    .local v1, "structural$iv":Z
    const/4 v2, 0x0

    .line 589
    .local v2, "$i$f$conditionalUpdate":I
    move-object/from16 v3, p0

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v3, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v4, 0x0

    .line 590
    .local v4, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v5, 0x0

    .line 591
    .local v5, "result$iv":Z
    :goto_0
    nop

    .line 592
    const/4 v6, 0x0

    .line 593
    .local v6, "oldList$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 594
    .local v7, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 595
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 596
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v10, v3

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 597
    .local v11, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 598
    .local v13, "$i$f$withCurrent":I
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v14, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v15, 0x0

    .line 596
    .local v15, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 598
    .end local v14    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 597
    .end local v12    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$withCurrent":I
    nop

    .line 596
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$withCurrent":I
    move-object v10, v14

    .line 599
    .local v10, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v11

    move v7, v11

    .line 600
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v11

    move-object v6, v11

    .line 601
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v10    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 595
    monitor-exit v8

    .line 602
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v6

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$a$-conditionalUpdate$default-SnapshotStateList$addAll$2":I
    move-object/from16 v10, p1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->addAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    .line 602
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "$i$a$-conditionalUpdate$default-SnapshotStateList$addAll$2":I
    move-object v8, v0

    .line 603
    .local v8, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 605
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 v24, v1

    goto/16 :goto_2

    .line 607
    .end local v0    # "result$iv":Z
    .restart local v5    # "result$iv":Z
    :cond_0
    move-object v9, v3

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 608
    .local v11, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 609
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 610
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 611
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 595
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 612
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 613
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 614
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 595
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 615
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_1

    .line 616
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v24, "structural$iv":Z
    :try_start_3
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 617
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 618
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    goto :goto_1

    .line 595
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 620
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_1
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    const/16 v19, 0x0

    .line 615
    :goto_1
    nop

    .line 595
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 614
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 613
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 595
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 611
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 621
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 622
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v9

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 623
    nop

    .line 621
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 610
    nop

    .line 608
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 607
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_2

    .line 624
    const/4 v0, 0x1

    .line 625
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 628
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 589
    .end local v0    # "result$iv":Z
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 629
    nop

    .line 111
    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v24    # "structural$iv":Z
    return v0

    .line 607
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v24    # "structural$iv":Z
    :cond_2
    move/from16 v1, v24

    goto/16 :goto_0

    .line 595
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    :goto_3
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v5    # "result$iv":Z
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .end local p1    # "elements":Ljava/util/Collection;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "structural$iv":Z
    .restart local p1    # "elements":Ljava/util/Collection;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    :goto_4
    monitor-exit v16

    throw v0

    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .restart local v1    # "structural$iv":Z
    .local v8, "lock$iv$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    monitor-exit v8

    throw v0
.end method

.method public clear()V
    .locals 16

    .line 113
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v2, 0x0

    .line 630
    .local v2, "$i$f$writable":I
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v3, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v4, 0x0

    .line 631
    .local v4, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    .line 632
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v5, "snapshot$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 633
    .local v6, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v7

    .local v7, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 634
    .local v8, "$i$f$synchronized":I
    monitor-enter v7

    const/4 v9, 0x0

    .line 635
    .local v9, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v5, v0

    .line 636
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v3, v0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v10, v0

    .local v10, "$this$clear_u24lambda_u246":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v11, 0x0

    .line 114
    .local v11, "$i$a$-writable-SnapshotStateList$clear$1":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    .local v12, "lock$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 637
    .local v13, "$i$f$synchronized":I
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 115
    .local v0, "$i$a$-synchronized-SnapshotStateList$clear$1$1":I
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentListOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 116
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V

    .line 117
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    .end local v0    # "$i$a$-synchronized-SnapshotStateList$clear$1$1":I
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .end local v12    # "lock$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    nop

    .line 636
    .end local v10    # "$this$clear_u24lambda_u246":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v11    # "$i$a$-writable-SnapshotStateList$clear$1":I
    nop

    .line 634
    .end local v9    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    monitor-exit v7

    .line 633
    .end local v7    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$synchronized":I
    nop

    .line 638
    .end local v6    # "$i$f$sync":I
    move v0, v14

    .local v0, "it$iv$iv":I
    const/4 v6, 0x0

    .line 639
    .local v6, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move-object v7, v1

    check-cast v7, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v5, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 640
    nop

    .line 638
    .end local v0    # "it$iv$iv":I
    .end local v6    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    nop

    .line 632
    nop

    .line 630
    .end local v3    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v4    # "$i$f$writable":I
    .end local v5    # "snapshot$iv$iv":Ljava/lang/Object;
    nop

    .line 120
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v2    # "$i$f$writable":I
    return-void

    .line 637
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v2    # "$i$f$writable":I
    .restart local v3    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v4    # "$i$f$writable":I
    .restart local v5    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v6, "$i$f$sync":I
    .restart local v7    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v8    # "$i$f$synchronized":I
    .restart local v9    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .restart local v10    # "$this$clear_u24lambda_u246":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v11    # "$i$a$-writable-SnapshotStateList$clear$1":I
    .restart local v12    # "lock$iv":Ljava/lang/Object;
    .restart local v13    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v2    # "$i$f$writable":I
    .end local v3    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v4    # "$i$f$writable":I
    .end local v5    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$sync":I
    .end local v7    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$synchronized":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 634
    .end local v9    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v10    # "$this$clear_u24lambda_u246":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v11    # "$i$a$-writable-SnapshotStateList$clear$1":I
    .end local v12    # "lock$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v2    # "$i$f$writable":I
    .restart local v3    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v4    # "$i$f$writable":I
    .restart local v5    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$sync":I
    .restart local v7    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v8    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getDebuggerDisplayValue()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 150
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v1, 0x0

    .line 904
    .local v1, "$i$f$withCurrent":I
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v2, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v2, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v3, 0x0

    .line 905
    .local v3, "$i$f$withCurrent":I
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v4, "$this$_get_debuggerDisplayValue__u24lambda_u2415":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$a$-withCurrent-SnapshotStateList$debuggerDisplayValue$1":I
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v4

    .line 905
    .end local v4    # "$this$_get_debuggerDisplayValue__u24lambda_u2415":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v5    # "$i$a$-withCurrent-SnapshotStateList$debuggerDisplayValue$1":I
    nop

    .line 904
    .end local v2    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v3    # "$i$f$withCurrent":I
    nop

    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v1    # "$i$f$withCurrent":I
    check-cast v4, Ljava/util/List;

    .line 150
    return-object v4
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    return-object v0
.end method

.method public final getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord<",
            "TT;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->size()I

    move-result v0

    return v0
.end method

.method public final getStructure$runtime_release()I
    .locals 6

    .line 62
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v1, 0x0

    .line 485
    .local v1, "$i$f$withCurrent":I
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v2, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v2, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v3, 0x0

    .line 486
    .local v3, "$i$f$withCurrent":I
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v4, "$this$_get_structure__u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v5, 0x0

    .line 62
    .local v5, "$i$a$-withCurrent-SnapshotStateList$structure$1":I
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v4

    .line 486
    .end local v4    # "$this$_get_structure__u24lambda_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v5    # "$i$a$-withCurrent-SnapshotStateList$structure$1":I
    nop

    .line 485
    .end local v2    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v3    # "$i$f$withCurrent":I
    nop

    .line 62
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v1    # "$i$f$withCurrent":I
    return v4
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroidx/compose/runtime/snapshots/StateListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/StateListIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/snapshots/StateListIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/runtime/snapshots/StateRecord;

    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime_release(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 42
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 43
    return-void
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 25
    .param p1, "element"    # Ljava/lang/Object;

    .line 121
    nop

    .line 641
    nop

    .line 642
    const/4 v1, 0x1

    .line 641
    .local v1, "structural$iv":Z
    const/4 v2, 0x0

    .line 645
    .local v2, "$i$f$conditionalUpdate":I
    move-object/from16 v3, p0

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v3, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v4, 0x0

    .line 646
    .local v4, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v5, 0x0

    .line 647
    .local v5, "result$iv":Z
    :goto_0
    nop

    .line 648
    const/4 v6, 0x0

    .line 649
    .local v6, "oldList$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 650
    .local v7, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 651
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 652
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v10, v3

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 653
    .local v11, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 654
    .local v13, "$i$f$withCurrent":I
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v14, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v15, 0x0

    .line 652
    .local v15, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 654
    .end local v14    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 653
    .end local v12    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$withCurrent":I
    nop

    .line 652
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$withCurrent":I
    move-object v10, v14

    .line 655
    .local v10, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v11

    move v7, v11

    .line 656
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v11

    move-object v6, v11

    .line 657
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v10    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 651
    monitor-exit v8

    .line 658
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v6

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$a$-conditionalUpdate$default-SnapshotStateList$remove$1":I
    move-object/from16 v10, p1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    .line 658
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "$i$a$-conditionalUpdate$default-SnapshotStateList$remove$1":I
    move-object v8, v0

    .line 659
    .local v8, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 661
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 v24, v1

    goto/16 :goto_2

    .line 663
    .end local v0    # "result$iv":Z
    .restart local v5    # "result$iv":Z
    :cond_0
    move-object v9, v3

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 664
    .local v11, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 665
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 666
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 667
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 651
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 668
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 669
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 670
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 651
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 671
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_1

    .line 672
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v24, "structural$iv":Z
    :try_start_3
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 673
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 674
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    goto :goto_1

    .line 651
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 676
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_1
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    const/16 v19, 0x0

    .line 671
    :goto_1
    nop

    .line 651
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 670
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 669
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 651
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 667
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 677
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 678
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v9

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 679
    nop

    .line 677
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 666
    nop

    .line 664
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 663
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_2

    .line 680
    const/4 v0, 0x1

    .line 681
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 684
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 645
    .end local v0    # "result$iv":Z
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 685
    nop

    .line 121
    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v24    # "structural$iv":Z
    return v0

    .line 663
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v24    # "structural$iv":Z
    :cond_2
    move/from16 v1, v24

    goto/16 :goto_0

    .line 651
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    :goto_3
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v5    # "result$iv":Z
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .end local p1    # "element":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "structural$iv":Z
    .restart local p1    # "element":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    :goto_4
    monitor-exit v16

    throw v0

    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .restart local v1    # "structural$iv":Z
    .local v8, "lock$iv$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    monitor-exit v8

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 25
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 122
    nop

    .line 686
    nop

    .line 687
    const/4 v1, 0x1

    .line 686
    .local v1, "structural$iv":Z
    const/4 v2, 0x0

    .line 690
    .local v2, "$i$f$conditionalUpdate":I
    move-object/from16 v3, p0

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v3, "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v4, 0x0

    .line 691
    .local v4, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    const/4 v5, 0x0

    .line 692
    .local v5, "result$iv":Z
    :goto_0
    nop

    .line 693
    const/4 v6, 0x0

    .line 694
    .local v6, "oldList$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 695
    .local v7, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 696
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 697
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    move-object v10, v3

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 698
    .local v11, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 699
    .local v13, "$i$f$withCurrent":I
    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v14, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v15, 0x0

    .line 697
    .local v15, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 699
    .end local v14    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv":I
    nop

    .line 698
    .end local v12    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$withCurrent":I
    nop

    .line 697
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$withCurrent":I
    move-object v10, v14

    .line 700
    .local v10, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v11

    move v7, v11

    .line 701
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v11

    move-object v6, v11

    .line 702
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv":I
    .end local v10    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 696
    monitor-exit v8

    .line 703
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v6

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v8, 0x0

    .line 122
    .local v8, "$i$a$-conditionalUpdate$default-SnapshotStateList$removeAll$1":I
    move-object/from16 v10, p1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->removeAll(Ljava/util/Collection;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    .line 703
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v8    # "$i$a$-conditionalUpdate$default-SnapshotStateList$removeAll$1":I
    move-object v8, v0

    .line 704
    .local v8, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 706
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    move/from16 v24, v1

    goto/16 :goto_2

    .line 708
    .end local v0    # "result$iv":Z
    .restart local v5    # "result$iv":Z
    :cond_0
    move-object v9, v3

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 709
    .local v11, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 710
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 711
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 712
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 696
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 713
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 714
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 715
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 696
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 716
    .local v0, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_1

    .line 717
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v24, "structural$iv":Z
    :try_start_3
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 718
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 719
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 720
    goto :goto_1

    .line 696
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 721
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :cond_1
    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    const/16 v19, 0x0

    .line 716
    :goto_1
    nop

    .line 696
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 715
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 714
    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    nop

    .line 696
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 712
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 722
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 723
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v9

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 724
    nop

    .line 722
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 711
    nop

    .line 709
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 708
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_2

    .line 725
    const/4 v0, 0x1

    .line 726
    .end local v5    # "result$iv":Z
    .local v0, "result$iv":Z
    nop

    .line 729
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 690
    .end local v0    # "result$iv":Z
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    nop

    .line 730
    nop

    .line 122
    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v24    # "structural$iv":Z
    return v0

    .line 708
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v24    # "structural$iv":Z
    :cond_2
    move/from16 v1, v24

    goto/16 :goto_0

    .line 696
    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "structural$iv":Z
    :goto_3
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$conditionalUpdate":I
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .end local v5    # "result$iv":Z
    .end local v6    # "oldList$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .end local p1    # "elements":Ljava/util/Collection;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$conditionalUpdate":I
    .restart local v3    # "$this$conditionalUpdate_u24lambda_u2424$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv":I
    .restart local v5    # "result$iv":Z
    .restart local v6    # "oldList$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "structural$iv":Z
    .restart local p1    # "elements":Ljava/util/Collection;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "structural$iv":Z
    .local v1, "structural$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    :goto_4
    monitor-exit v16

    throw v0

    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "structural$iv":Z
    .restart local v1    # "structural$iv":Z
    .local v8, "lock$iv$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v24, v1

    .end local v1    # "structural$iv":Z
    .restart local v24    # "structural$iv":Z
    monitor-exit v8

    throw v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 30
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 123
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 731
    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 123
    .local v2, "$i$a$-also-SnapshotStateList$removeAt$1":I
    nop

    .line 732
    nop

    .line 733
    const/4 v3, 0x1

    .line 732
    .local v3, "structural$iv":Z
    const/4 v4, 0x0

    .line 736
    .local v4, "$i$f$update":I
    move-object/from16 v5, p0

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v6, 0x0

    .line 743
    .local v6, "$i$f$conditionalUpdate":I
    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v7, "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v8, 0x0

    .line 744
    .local v8, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    const/4 v9, 0x0

    .line 745
    .local v9, "result$iv$iv":Z
    :goto_0
    nop

    .line 746
    const/4 v10, 0x0

    .line 747
    .local v10, "oldList$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 748
    .local v11, "currentModification$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v12

    .local v12, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 749
    .local v13, "$i$f$synchronized":I
    monitor-enter v12

    const/4 v14, 0x0

    .line 750
    .local v14, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    move-object v15, v7

    .local v15, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v16, 0x0

    .line 751
    .local v16, "$i$f$withCurrent":I
    move-object/from16 v17, v1

    .end local v1    # "it":Ljava/lang/Object;
    .local v17, "it":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move/from16 v18, v2

    .end local v2    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .local v18, "$i$a$-also-SnapshotStateList$removeAt$1":I
    :try_start_1
    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 752
    .local v2, "$i$f$withCurrent":I
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v19

    check-cast v19, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v19, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 750
    .local v20, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 752
    .end local v19    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 751
    .end local v1    # "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v2    # "$i$f$withCurrent":I
    nop

    .line 750
    .end local v15    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v16    # "$i$f$withCurrent":I
    move-object/from16 v1, v19

    .line 753
    .local v1, "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v2

    move v11, v2

    .line 754
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v2

    move-object v10, v2

    .line 755
    nop

    .end local v1    # "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v14    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 749
    monitor-exit v12

    .line 756
    .end local v12    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v10

    .local v1, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v2, 0x0

    .line 123
    .local v2, "$i$a$-update$default-SnapshotStateList$removeAt$1$1":I
    move/from16 v14, p1

    invoke-interface {v1, v14}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->removeAt(I)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v1

    .line 756
    .end local v1    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v2    # "$i$a$-update$default-SnapshotStateList$removeAt$1$1":I
    nop

    .line 757
    .local v1, "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    const/4 v2, 0x0

    .line 759
    .end local v9    # "result$iv$iv":Z
    .local v2, "result$iv$iv":Z
    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    goto/16 :goto_2

    .line 761
    .end local v2    # "result$iv$iv":Z
    .restart local v9    # "result$iv$iv":Z
    :cond_0
    move-object v2, v7

    .local v2, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v12, 0x0

    .line 762
    .local v12, "$i$f$writable":I
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v13

    const-string/jumbo v15, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v13, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v13, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 763
    .local v15, "$i$f$writable":I
    const/16 v16, 0x0

    .local v16, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 764
    const/16 v19, 0x0

    .line 765
    .local v19, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v20

    .local v20, "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 749
    .local v21, "$i$f$synchronized":I
    monitor-enter v20

    const/16 v22, 0x0

    .line 766
    .local v22, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    :try_start_2
    sget-object v23, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v16, v23

    .line 767
    move/from16 v23, v3

    .end local v3    # "structural$iv":Z
    .local v23, "structural$iv":Z
    :try_start_3
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v24, v4

    move-object/from16 v4, v16

    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v4, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v24, "$i$f$update":I
    :try_start_4
    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v3, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v16, 0x0

    .line 768
    .local v16, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v25

    .local v25, "lock$iv$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 749
    .local v26, "$i$f$synchronized":I
    monitor-enter v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v27, 0x0

    .line 769
    .local v27, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    move-object/from16 v28, v5

    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v28, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :try_start_5
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v5, v11, :cond_1

    .line 770
    :try_start_6
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 771
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v5

    const/16 v29, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V

    .line 772
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 773
    goto :goto_1

    .line 749
    .end local v27    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v27, v1

    goto :goto_3

    .line 774
    .restart local v27    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :cond_1
    const/16 v29, 0x0

    .line 769
    :goto_1
    nop

    .line 749
    .end local v27    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 768
    .end local v25    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v26    # "$i$f$synchronized":I
    nop

    .line 767
    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v16    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    nop

    .line 749
    .end local v22    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    monitor-exit v20

    .line 765
    .end local v20    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 775
    .end local v19    # "$i$f$sync":I
    move/from16 v3, v29

    .local v3, "it$iv$iv$iv$iv":Z
    const/4 v5, 0x0

    .line 776
    .local v5, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    move-object/from16 v27, v1

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v27, "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v4, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 777
    nop

    .line 775
    .end local v3    # "it$iv$iv$iv$iv":Z
    .end local v5    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    nop

    .line 764
    nop

    .line 762
    .end local v4    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 761
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v12    # "$i$f$writable":I
    if-eqz v29, :cond_2

    .line 778
    const/4 v2, 0x1

    .line 779
    .end local v9    # "result$iv$iv":Z
    .local v2, "result$iv$iv":Z
    nop

    .line 782
    .end local v10    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v11    # "currentModification$iv$iv":I
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 743
    .end local v2    # "result$iv$iv":Z
    .end local v7    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v8    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    nop

    .line 783
    nop

    .line 784
    .end local v6    # "$i$f$conditionalUpdate":I
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    nop

    .line 123
    .end local v23    # "structural$iv":Z
    .end local v24    # "$i$f$update":I
    nop

    .end local v17    # "it":Ljava/lang/Object;
    .end local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    return-object v0

    .line 761
    .restart local v6    # "$i$f$conditionalUpdate":I
    .restart local v7    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v8    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v9    # "result$iv$iv":Z
    .restart local v10    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v11    # "currentModification$iv$iv":I
    .restart local v17    # "it":Ljava/lang/Object;
    .restart local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .restart local v23    # "structural$iv":Z
    .restart local v24    # "$i$f$update":I
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_2
    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    move-object/from16 v5, v28

    goto/16 :goto_0

    .line 749
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v2, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v19    # "$i$f$sync":I
    .restart local v20    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v16, v4

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    goto :goto_4

    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v3, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v16    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .restart local v22    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .restart local v25    # "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "$i$f$synchronized":I
    :catchall_2
    move-exception v0

    move-object/from16 v27, v1

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_3
    :try_start_8
    monitor-exit v25

    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v4    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$conditionalUpdate":I
    .end local v7    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v8    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .end local v9    # "result$iv$iv":Z
    .end local v10    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v11    # "currentModification$iv$iv":I
    .end local v12    # "$i$f$writable":I
    .end local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v17    # "it":Ljava/lang/Object;
    .end local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .end local v19    # "$i$f$sync":I
    .end local v20    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .end local v23    # "structural$iv":Z
    .end local v24    # "$i$f$update":I
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p1    # "index":I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v3    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v16    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .end local v22    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .end local v25    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v26    # "$i$f$synchronized":I
    .restart local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v4    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$conditionalUpdate":I
    .restart local v7    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v8    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v9    # "result$iv$iv":Z
    .restart local v10    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v11    # "currentModification$iv$iv":I
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "it":Ljava/lang/Object;
    .restart local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .restart local v19    # "$i$f$sync":I
    .restart local v20    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    .restart local v23    # "structural$iv":Z
    .restart local v24    # "$i$f$update":I
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p1    # "index":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_4

    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v5, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :catchall_4
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v28, v5

    move-object/from16 v16, v4

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    goto :goto_4

    .end local v24    # "$i$f$update":I
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v4, "$i$f$update":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v16, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v27, v1

    move/from16 v24, v4

    move-object/from16 v28, v5

    move-object/from16 v4, v16

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v4, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "$i$f$update":I
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    goto :goto_4

    .end local v23    # "structural$iv":Z
    .end local v24    # "$i$f$update":I
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v3, "structural$iv":Z
    .local v4, "$i$f$update":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v27, v1

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v3    # "structural$iv":Z
    .end local v4    # "$i$f$update":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v23    # "structural$iv":Z
    .restart local v24    # "$i$f$update":I
    .restart local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_4
    monitor-exit v20

    throw v0

    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$sync":I
    .end local v20    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .end local v23    # "structural$iv":Z
    .end local v24    # "$i$f$update":I
    .end local v27    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "structural$iv":Z
    .restart local v4    # "$i$f$update":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v12, "lock$iv$iv$iv":Ljava/lang/Object;
    .local v13, "$i$f$synchronized":I
    :catchall_7
    move-exception v0

    move/from16 v14, p1

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    .end local v3    # "structural$iv":Z
    .end local v4    # "$i$f$update":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v23    # "structural$iv":Z
    .restart local v24    # "$i$f$update":I
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    goto :goto_5

    .end local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .end local v23    # "structural$iv":Z
    .end local v24    # "$i$f$update":I
    .end local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v2, "$i$a$-also-SnapshotStateList$removeAt$1":I
    .restart local v3    # "structural$iv":Z
    .restart local v4    # "$i$f$update":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :catchall_8
    move-exception v0

    move/from16 v14, p1

    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v28, v5

    .end local v2    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .end local v3    # "structural$iv":Z
    .end local v4    # "$i$f$update":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v18    # "$i$a$-also-SnapshotStateList$removeAt$1":I
    .restart local v23    # "structural$iv":Z
    .restart local v24    # "$i$f$update":I
    .restart local v28    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_5
    monitor-exit v12

    throw v0
.end method

.method public final removeRange(II)V
    .locals 25
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 130
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v2, 0x0

    .line 834
    .local v2, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v3, v0

    .line 835
    .local v3, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 836
    const/4 v4, 0x0

    .line 837
    .local v4, "oldList$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 838
    .local v5, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 839
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 840
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v9, 0x0

    .line 841
    .local v9, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 842
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v12, "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v13, 0x0

    .line 840
    .local v13, "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 842
    .end local v12    # "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 841
    .end local v10    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 840
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v9    # "$i$f$withCurrent":I
    move-object v8, v12

    .line 843
    .local v8, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v9

    move v5, v9

    .line 844
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v9

    move-object v4, v9

    .line 845
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    .end local v8    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 839
    monitor-exit v6

    .line 846
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    move-result-object v6

    .line 847
    .local v6, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .local v0, "it":Ljava/util/List;
    const/4 v7, 0x0

    .line 131
    .local v7, "$i$a$-mutate-SnapshotStateList$removeRange$1":I
    move/from16 v8, p1

    move/from16 v9, p2

    invoke-interface {v0, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 132
    nop

    .end local v0    # "it":Ljava/util/List;
    .end local v7    # "$i$a$-mutate-SnapshotStateList$removeRange$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 847
    move-object v3, v0

    .line 848
    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v7

    .line 849
    .local v7, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v1

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v11, 0x0

    .line 850
    .local v11, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 851
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 852
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 853
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 839
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 854
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 855
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 856
    .local v20, "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 839
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 857
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v5, :cond_0

    .line 858
    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v24, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :try_start_3
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 859
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V

    .line 860
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    goto :goto_1

    .line 839
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 862
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v19    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :cond_0
    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v19, 0x0

    .line 857
    :goto_1
    nop

    .line 839
    .end local v23    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 856
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 855
    .end local v1    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    nop

    .line 839
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 853
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 863
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 864
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v10

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 865
    nop

    .line 863
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 852
    nop

    .line 850
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 849
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 839
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v1, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_2
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v4    # "oldList$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldList$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .restart local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .restart local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_3
    monitor-exit v16

    throw v0

    .line 849
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_2
    move-object/from16 v24, v1

    .line 866
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_4
    nop

    .line 868
    .end local v4    # "oldList$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v7    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    nop

    .line 133
    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    return-void

    .line 839
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldList$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .local v6, "lock$iv$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v24, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    monitor-exit v6

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 124
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$retainAll$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$retainAll$1;-><init>(Ljava/util/Collection;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->mutateBoolean(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public final retainAllInRange$runtime_release(Ljava/util/Collection;II)I
    .locals 27
    .param p1, "elements"    # Ljava/util/Collection;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;II)I"
        }
    .end annotation

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    .line 137
    .local v1, "startSize":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v3, 0x0

    .line 869
    .local v3, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v4, v0

    .line 870
    .local v4, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 871
    const/4 v5, 0x0

    .line 872
    .local v5, "oldList$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 873
    .local v6, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v7

    .local v7, "lock$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 874
    .local v8, "$i$f$synchronized":I
    monitor-enter v7

    const/4 v0, 0x0

    .line 875
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    move-object v9, v2

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v10, 0x0

    .line 876
    .local v10, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v11

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 877
    .local v12, "$i$f$withCurrent":I
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v13, "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/4 v14, 0x0

    .line 875
    .local v14, "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 877
    .end local v13    # "$this$mutate_u24lambda_u2417_u24lambda_u2416$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v14    # "$i$a$-withCurrent-SnapshotStateList$mutate$1$current$1$iv":I
    nop

    .line 876
    .end local v11    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$withCurrent":I
    nop

    .line 875
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v10    # "$i$f$withCurrent":I
    move-object v9, v13

    .line 878
    .local v9, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v10

    move v6, v10

    .line 879
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v10

    move-object v5, v10

    .line 880
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$1$iv":I
    .end local v9    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 874
    monitor-exit v7

    .line 881
    .end local v7    # "lock$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$synchronized":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    move-result-object v7

    .line 882
    .local v7, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .local v0, "it":Ljava/util/List;
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-mutate-SnapshotStateList$retainAllInRange$1":I
    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface {v0, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-interface {v11, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 139
    nop

    .end local v0    # "it":Ljava/util/List;
    .end local v8    # "$i$a$-mutate-SnapshotStateList$retainAllInRange$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 882
    move-object v4, v0

    .line 883
    invoke-interface {v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v8

    .line 884
    .local v8, "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v11, v2

    .local v11, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v13, 0x0

    .line 885
    .local v13, "$i$f$writable":I
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 886
    .local v15, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 887
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 888
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 874
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 889
    .local v20, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v0

    .line 890
    :try_start_2
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v2, "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v21, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :try_start_3
    invoke-static {v14, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-object/from16 v16, v0

    .local v16, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v22, 0x0

    .line 891
    .local v22, "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    .local v23, "lock$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 874
    .local v24, "$i$f$synchronized":I
    monitor-enter v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    .line 892
    .local v0, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    move/from16 v25, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    .local v25, "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v6, :cond_0

    .line 893
    move/from16 v26, v3

    move-object/from16 v3, v16

    .end local v16    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v3, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v26, "$i$f$mutate":I
    :try_start_5
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 894
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V

    .line 895
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getStructuralChange$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setStructuralChange$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 896
    goto :goto_1

    .line 874
    .end local v25    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 897
    .end local v26    # "$i$f$mutate":I
    .local v3, "$i$f$mutate":I
    .restart local v16    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v25    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :cond_0
    move/from16 v26, v3

    move-object/from16 v3, v16

    .end local v16    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v3, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v26    # "$i$f$mutate":I
    const/16 v16, 0x0

    .line 892
    :goto_1
    nop

    .line 874
    .end local v25    # "$i$a$-synchronized-SnapshotStateList$mutate$2$1$iv":I
    :try_start_6
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 891
    .end local v23    # "lock$iv$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    nop

    .line 890
    .end local v3    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v22    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    nop

    .line 874
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v18

    .line 888
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 898
    .end local v17    # "$i$f$sync":I
    move/from16 v0, v16

    .local v0, "it$iv$iv$iv":Z
    const/4 v3, 0x0

    .line 899
    .local v3, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move/from16 v17, v0

    .end local v0    # "it$iv$iv$iv":Z
    .local v17, "it$iv$iv$iv":Z
    move-object v0, v11

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 900
    nop

    .line 898
    .end local v3    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    .end local v17    # "it$iv$iv$iv":Z
    nop

    .line 887
    nop

    .line 885
    .end local v2    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 884
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$writable":I
    if-eqz v16, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v2, v21

    move/from16 v3, v26

    goto/16 :goto_0

    .line 874
    .end local v26    # "$i$f$mutate":I
    .restart local v2    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v3, "$i$f$mutate":I
    .restart local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v16    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v17, "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v22    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .restart local v23    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v24    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v3, v16

    .end local v16    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .local v3, "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v26    # "$i$f$mutate":I
    :goto_2
    :try_start_7
    monitor-exit v23

    .end local v1    # "startSize":I
    .end local v2    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v5    # "oldList$iv":Ljava/lang/Object;
    .end local v6    # "currentModification$iv":I
    .end local v7    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$mutate":I
    .end local p1    # "elements":Ljava/util/Collection;
    .end local p2    # "start":I
    .end local p3    # "end":I
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v3    # "$this$mutate_u24lambda_u2419$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v22    # "$i$a$-writable-SnapshotStateList$mutate$2$iv":I
    .end local v23    # "lock$iv$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    .restart local v1    # "startSize":I
    .restart local v2    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "oldList$iv":Ljava/lang/Object;
    .restart local v6    # "currentModification$iv":I
    .restart local v7    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .restart local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$mutate":I
    .restart local p1    # "elements":Ljava/util/Collection;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_3

    .end local v26    # "$i$f$mutate":I
    .local v3, "$i$f$mutate":I
    :catchall_3
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v16, v2

    .end local v3    # "$i$f$mutate":I
    .restart local v26    # "$i$f$mutate":I
    goto :goto_3

    .end local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$mutate":I
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$mutate":I
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v26, v3

    move-object/from16 v2, v16

    .end local v3    # "$i$f$mutate":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v2, "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$mutate":I
    goto :goto_3

    .end local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$mutate":I
    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$mutate":I
    .restart local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v26, v3

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$f$mutate":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$mutate":I
    :goto_3
    monitor-exit v18

    throw v0

    .line 884
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$mutate":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$mutate":I
    :cond_2
    move-object/from16 v21, v2

    move/from16 v26, v3

    .line 901
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$f$mutate":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$mutate":I
    :goto_4
    nop

    .line 903
    .end local v5    # "oldList$iv":Ljava/lang/Object;
    .end local v6    # "currentModification$iv":I
    .end local v7    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;
    .end local v8    # "newList$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    nop

    .line 140
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$mutate":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    sub-int v0, v1, v0

    return v0

    .line 874
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v3    # "$i$f$mutate":I
    .restart local v4    # "result$iv":Ljava/lang/Object;
    .restart local v5    # "oldList$iv":Ljava/lang/Object;
    .restart local v6    # "currentModification$iv":I
    .local v7, "lock$iv$iv":Ljava/lang/Object;
    .local v8, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v21, v2

    move/from16 v26, v3

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v3    # "$i$f$mutate":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$mutate":I
    monitor-exit v7

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 125
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$a$-also-SnapshotStateList$set$1":I
    const/4 v3, 0x0

    .local v3, "structural$iv":Z
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v5, 0x0

    .line 785
    .local v5, "$i$f$update":I
    move-object v6, v4

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v7, 0x0

    .line 792
    .local v7, "$i$f$conditionalUpdate":I
    move-object v8, v6

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v8, "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v9, 0x0

    .line 793
    .local v9, "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    const/4 v10, 0x0

    .line 794
    .local v10, "result$iv$iv":Z
    :goto_0
    nop

    .line 795
    const/4 v11, 0x0

    .line 796
    .local v11, "oldList$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 797
    .local v12, "currentModification$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v13

    .local v13, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 798
    .local v14, "$i$f$synchronized":I
    monitor-enter v13

    const/4 v15, 0x0

    .line 799
    .local v15, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    move-object/from16 v16, v8

    .local v16, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v17, 0x0

    .line 800
    .local v17, "$i$f$withCurrent":I
    move-object/from16 v18, v1

    .end local v1    # "it":Ljava/lang/Object;
    .local v18, "it":Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move/from16 v19, v2

    .end local v2    # "$i$a$-also-SnapshotStateList$set$1":I
    .local v19, "$i$a$-also-SnapshotStateList$set$1":I
    :try_start_1
    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 801
    .local v2, "$i$f$withCurrent":I
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v20

    check-cast v20, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v20, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v21, 0x0

    .line 799
    .local v21, "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 801
    .end local v20    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2421_u24lambda_u2420$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v21    # "$i$a$-withCurrent-SnapshotStateList$conditionalUpdate$1$1$current$1$iv$iv":I
    nop

    .line 800
    .end local v1    # "$this$withCurrent$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v2    # "$i$f$withCurrent":I
    nop

    .line 799
    .end local v16    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v17    # "$i$f$withCurrent":I
    move-object/from16 v1, v20

    .line 802
    .local v1, "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v2

    move v12, v2

    .line 803
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v2

    move-object v11, v2

    .line 804
    nop

    .end local v1    # "current$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v15    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$1$iv$iv":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 798
    monitor-exit v13

    .line 805
    .end local v13    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$synchronized":I
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v11

    .local v1, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$a$-update-SnapshotStateList$set$1$1":I
    move/from16 v15, p1

    move-object/from16 v13, p2

    invoke-interface {v1, v15, v13}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->set(ILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v1

    .line 805
    .end local v1    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v2    # "$i$a$-update-SnapshotStateList$set$1$1":I
    nop

    .line 806
    .local v1, "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    const/4 v2, 0x0

    .line 808
    .end local v10    # "result$iv$iv":Z
    .local v2, "result$iv$iv":Z
    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v26, v5

    goto/16 :goto_2

    .line 810
    .end local v2    # "result$iv$iv":Z
    .restart local v10    # "result$iv$iv":Z
    :cond_0
    move-object v2, v8

    .local v2, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/4 v14, 0x0

    .line 811
    .local v14, "$i$f$writable":I
    move/from16 v16, v3

    .end local v3    # "structural$iv":Z
    .local v16, "structural$iv":Z
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    move-object/from16 v17, v4

    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v17, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const-string/jumbo v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    check-cast v3, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v3, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v4, 0x0

    .line 812
    .local v4, "$i$f$writable":I
    const/16 v20, 0x0

    .local v20, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v20

    .line 813
    const/16 v21, 0x0

    .line 814
    .local v21, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v22

    .local v22, "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 798
    .local v23, "$i$f$synchronized":I
    monitor-enter v22

    const/16 v24, 0x0

    .line 815
    .local v24, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    :try_start_2
    sget-object v25, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v20, v25

    .line 816
    move/from16 v25, v4

    .end local v4    # "$i$f$writable":I
    .local v25, "$i$f$writable":I
    :try_start_3
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v26, v5

    move-object/from16 v5, v20

    .end local v20    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v5, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v26, "$i$f$update":I
    :try_start_4
    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    .local v4, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    const/16 v20, 0x0

    .line 817
    .local v20, "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v27

    .local v27, "lock$iv$iv$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 798
    .local v28, "$i$f$synchronized":I
    monitor-enter v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v29, 0x0

    .line 818
    .local v29, "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    move-object/from16 v30, v3

    .end local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .local v30, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :try_start_5
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v3, v12, :cond_1

    .line 819
    :try_start_6
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setList$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 820
    nop

    .line 821
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getModification$runtime_release()I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->setModification$runtime_release(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 822
    goto :goto_1

    .line 798
    .end local v29    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v29, v1

    goto :goto_3

    .line 823
    .restart local v29    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :cond_1
    const/16 v31, 0x0

    .line 818
    :goto_1
    nop

    .line 798
    .end local v29    # "$i$a$-synchronized-SnapshotStateList$conditionalUpdate$1$2$1$iv$iv":I
    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 817
    .end local v27    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v28    # "$i$f$synchronized":I
    nop

    .line 816
    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    nop

    .line 798
    .end local v24    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    monitor-exit v22

    .line 814
    .end local v22    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    nop

    .line 824
    .end local v21    # "$i$f$sync":I
    move/from16 v3, v31

    .local v3, "it$iv$iv$iv$iv":Z
    const/4 v4, 0x0

    .line 825
    .local v4, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    move-object/from16 v29, v1

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v29, "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 826
    nop

    .line 824
    .end local v3    # "it$iv$iv$iv$iv":Z
    .end local v4    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv$iv":I
    nop

    .line 813
    nop

    .line 811
    .end local v5    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$writable":I
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    nop

    .line 810
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v14    # "$i$f$writable":I
    if-eqz v31, :cond_2

    .line 827
    const/4 v2, 0x1

    .line 828
    .end local v10    # "result$iv$iv":Z
    .local v2, "result$iv$iv":Z
    nop

    .line 831
    .end local v11    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v12    # "currentModification$iv$iv":I
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_2
    nop

    .line 792
    .end local v2    # "result$iv$iv":Z
    .end local v8    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v9    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    nop

    .line 832
    nop

    .line 833
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v7    # "$i$f$conditionalUpdate":I
    nop

    .line 127
    .end local v16    # "structural$iv":Z
    .end local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v26    # "$i$f$update":I
    nop

    .line 125
    .end local v18    # "it":Ljava/lang/Object;
    .end local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    nop

    .line 127
    return-object v0

    .line 810
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v7    # "$i$f$conditionalUpdate":I
    .restart local v8    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v9    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v10    # "result$iv$iv":Z
    .restart local v11    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v12    # "currentModification$iv$iv":I
    .restart local v16    # "structural$iv":Z
    .restart local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v18    # "it":Ljava/lang/Object;
    .restart local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    .restart local v26    # "$i$f$update":I
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :cond_2
    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v5, v26

    goto/16 :goto_0

    .line 798
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v2, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$writable":I
    .restart local v21    # "$i$f$sync":I
    .restart local v22    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    .restart local v25    # "$i$f$writable":I
    .restart local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v20, v5

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    goto :goto_4

    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v4, "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .restart local v24    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .restart local v27    # "lock$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "$i$f$synchronized":I
    :catchall_2
    move-exception v0

    move-object/from16 v29, v1

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    :goto_3
    :try_start_8
    monitor-exit v27

    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v7    # "$i$f$conditionalUpdate":I
    .end local v8    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v9    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .end local v10    # "result$iv$iv":Z
    .end local v11    # "oldList$iv$iv":Ljava/lang/Object;
    .end local v12    # "currentModification$iv$iv":I
    .end local v14    # "$i$f$writable":I
    .end local v16    # "structural$iv":Z
    .end local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v18    # "it":Ljava/lang/Object;
    .end local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    .end local v21    # "$i$f$sync":I
    .end local v22    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .end local v25    # "$i$f$writable":I
    .end local v26    # "$i$f$update":I
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v4    # "$this$conditionalUpdate_u24lambda_u2424_u24lambda_u2423$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateList$conditionalUpdate$1$2$iv$iv":I
    .end local v24    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv$iv":I
    .end local v27    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v28    # "$i$f$synchronized":I
    .restart local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v7    # "$i$f$conditionalUpdate":I
    .restart local v8    # "$this$conditionalUpdate_u24lambda_u2424$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v9    # "$i$a$-run-SnapshotStateList$conditionalUpdate$1$iv$iv":I
    .restart local v10    # "result$iv$iv":Z
    .restart local v11    # "oldList$iv$iv":Ljava/lang/Object;
    .restart local v12    # "currentModification$iv$iv":I
    .restart local v14    # "$i$f$writable":I
    .restart local v16    # "structural$iv":Z
    .restart local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v18    # "it":Ljava/lang/Object;
    .restart local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    .restart local v21    # "$i$f$sync":I
    .restart local v22    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    .restart local v25    # "$i$f$writable":I
    .restart local v26    # "$i$f$update":I
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local p1    # "index":I
    .restart local p2    # "element":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_4

    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .local v3, "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :catchall_4
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move-object/from16 v20, v5

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    goto :goto_4

    .end local v26    # "$i$f$update":I
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .local v5, "$i$f$update":I
    .local v20, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move/from16 v26, v5

    move-object/from16 v5, v20

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v20    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .local v5, "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "$i$f$update":I
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    goto :goto_4

    .end local v25    # "$i$f$writable":I
    .end local v26    # "$i$f$update":I
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .local v4, "$i$f$writable":I
    .local v5, "$i$f$update":I
    .restart local v20    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move/from16 v25, v4

    move/from16 v26, v5

    .end local v1    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v3    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v4    # "$i$f$writable":I
    .end local v5    # "$i$f$update":I
    .restart local v25    # "$i$f$writable":I
    .restart local v26    # "$i$f$update":I
    .restart local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .restart local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    :goto_4
    monitor-exit v22

    throw v0

    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v16    # "structural$iv":Z
    .end local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v20    # "snapshot$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$sync":I
    .end local v22    # "lock$iv$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .end local v25    # "$i$f$writable":I
    .end local v26    # "$i$f$update":I
    .end local v29    # "newList$iv$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v30    # "$this$writable$iv$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .local v3, "structural$iv":Z
    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$f$update":I
    .restart local v13    # "lock$iv$iv$iv":Ljava/lang/Object;
    .local v14, "$i$f$synchronized":I
    :catchall_7
    move-exception v0

    move/from16 v15, p1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v26, v5

    .end local v3    # "structural$iv":Z
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$f$update":I
    .restart local v16    # "structural$iv":Z
    .restart local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v26    # "$i$f$update":I
    goto :goto_5

    .end local v16    # "structural$iv":Z
    .end local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    .end local v26    # "$i$f$update":I
    .local v2, "$i$a$-also-SnapshotStateList$set$1":I
    .restart local v3    # "structural$iv":Z
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v5    # "$i$f$update":I
    :catchall_8
    move-exception v0

    move/from16 v15, p1

    move/from16 v19, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v26, v5

    .end local v2    # "$i$a$-also-SnapshotStateList$set$1":I
    .end local v3    # "structural$iv":Z
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v5    # "$i$f$update":I
    .restart local v16    # "structural$iv":Z
    .restart local v17    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v19    # "$i$a$-also-SnapshotStateList$set$1":I
    .restart local v26    # "$i$f$update":I
    :goto_5
    monitor-exit v13

    throw v0
.end method

.method public final bridge size()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getSize()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Landroidx/compose/runtime/snapshots/SubList;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/runtime/snapshots/SubList;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$a$-require-SnapshotStateList$subList$1":I
    nop

    .line 99
    .end local v0    # "$i$a$-require-SnapshotStateList$subList$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex or toIndex are out of bounds"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->getList$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
