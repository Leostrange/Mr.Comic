.class public final Landroidx/compose/runtime/snapshots/SnapshotStateMap;
.super Ljava/lang/Object;
.source "SnapshotStateMap.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,360:1\n154#1:361\n121#1:362\n155#1,2:364\n125#1:366\n157#1,3:373\n162#1:379\n128#1,5:380\n133#1:386\n121#1:387\n134#1,7:389\n125#1:396\n141#1,6:402\n149#1,3:411\n128#1,5:414\n133#1:420\n121#1:421\n134#1,7:423\n125#1:430\n141#1,6:436\n149#1,3:445\n128#1,5:448\n133#1:454\n121#1:455\n134#1,7:457\n125#1:464\n141#1,6:470\n149#1,3:479\n128#1,5:485\n133#1:491\n121#1:492\n134#1,7:494\n125#1:501\n141#1,6:507\n149#1,3:516\n121#1:519\n121#1:532\n125#1:534\n121#1:545\n125#1:547\n2283#2:363\n2176#2,2:367\n1714#2:369\n2178#2,2:371\n2180#2,3:376\n2283#2:388\n2176#2,2:397\n1714#2:399\n2178#2,2:400\n2180#2,3:408\n2283#2:422\n2176#2,2:431\n1714#2:433\n2178#2,2:434\n2180#2,3:442\n2283#2:456\n2176#2,2:465\n1714#2:467\n2178#2,2:468\n2180#2,3:476\n2283#2:493\n2176#2,2:502\n1714#2:504\n2178#2,2:505\n2180#2,3:513\n2283#2:520\n2283#2:521\n2176#2,2:522\n1714#2:524\n2178#2,5:526\n2283#2:533\n2176#2,2:535\n1714#2:537\n2178#2,2:539\n2180#2,3:542\n2283#2:546\n2176#2,2:548\n1714#2:550\n2178#2,2:552\n2180#2,3:555\n82#3:370\n82#3:385\n82#3:419\n82#3:453\n82#3:490\n82#3:525\n82#3:531\n82#3:538\n82#3:541\n82#3:551\n82#3:554\n288#4,2:482\n1#5:484\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n*L\n69#1:361\n69#1:362\n69#1:364,2\n69#1:366\n69#1:373,3\n69#1:379\n70#1:380,5\n70#1:386\n70#1:387\n70#1:389,7\n70#1:396\n70#1:402,6\n70#1:411,3\n71#1:414,5\n71#1:420\n71#1:421\n71#1:423,7\n71#1:430\n71#1:436,6\n71#1:445,3\n72#1:448,5\n72#1:454\n72#1:455\n72#1:457,7\n72#1:464\n72#1:470,6\n72#1:479,3\n85#1:485,5\n85#1:491\n85#1:492\n85#1:494,7\n85#1:501\n85#1:507,6\n85#1:516,3\n117#1:519\n133#1:532\n140#1:534\n154#1:545\n156#1:547\n69#1:363\n69#1:367,2\n69#1:369\n69#1:371,2\n69#1:376,3\n70#1:388\n70#1:397,2\n70#1:399\n70#1:400,2\n70#1:408,3\n71#1:422\n71#1:431,2\n71#1:433\n71#1:434,2\n71#1:442,3\n72#1:456\n72#1:465,2\n72#1:467\n72#1:468,2\n72#1:476,3\n85#1:493\n85#1:502,2\n85#1:504\n85#1:505,2\n85#1:513,3\n117#1:520\n121#1:521\n125#1:522,2\n125#1:524\n125#1:526,5\n133#1:533\n140#1:535,2\n140#1:537\n140#1:539,2\n140#1:542,3\n154#1:546\n156#1:548,2\n156#1:550\n156#1:552,2\n156#1:555,3\n69#1:370\n70#1:385\n71#1:419\n72#1:453\n85#1:490\n125#1:525\n132#1:531\n140#1:538\n141#1:541\n156#1:551\n157#1:554\n77#1:482,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001LB\u0005\u00a2\u0006\u0002\u0010\u0005J.\u0010&\u001a\u00020\'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010*\u0012\u0004\u0012\u00020\'0)H\u0080\u0008\u00a2\u0006\u0002\u0008+J.\u0010,\u001a\u00020\'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010*\u0012\u0004\u0012\u00020\'0)H\u0080\u0008\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016J\u0015\u00100\u001a\u00020\'2\u0006\u00101\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00102J\u0015\u00103\u001a\u00020\'2\u0006\u00104\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u00102J\u0018\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u00106J\u0008\u00107\u001a\u00020\'H\u0016J4\u00108\u001a\u0002H9\"\u0004\u0008\u0002\u001092\u001e\u0010:\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0004\u0012\u0002H90)H\u0082\u0008\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020/2\u0006\u00104\u001a\u00020\u0011H\u0016J\u001f\u0010=\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u00002\u0006\u00104\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010>J\u001e\u0010?\u001a\u00020/2\u0014\u0010@\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007H\u0016J\u0017\u0010A\u001a\u0004\u0018\u00018\u00012\u0006\u00101\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00106J.\u0010B\u001a\u00020\'2\u001e\u0010(\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\u0012\u0004\u0012\u00020\'0)H\u0080\u0008\u00a2\u0006\u0002\u0008CJ\u0017\u0010D\u001a\u00020\'2\u0006\u00104\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008E\u00102J\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007J5\u0010G\u001a\u00020/2*\u0010:\u001a&\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010H\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010H0)H\u0082\u0008J9\u0010I\u001a\u0002H9\"\u0004\u0008\u0002\u001092#\u0010:\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0004\u0012\u0002H90)\u00a2\u0006\u0002\u0008JH\u0082\u0008\u00a2\u0006\u0002\u0010;J9\u0010K\u001a\u0002H9\"\u0004\u0008\u0002\u001092#\u0010:\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c\u0012\u0004\u0012\u0002H90)\u00a2\u0006\u0002\u0008JH\u0082\u0008\u00a2\u0006\u0002\u0010;R&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00078AX\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00188@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR&\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c8@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u0005\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001aR\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00010#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateMap;",
        "K",
        "V",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "",
        "()V",
        "debuggerDisplayValue",
        "",
        "getDebuggerDisplayValue$annotations",
        "getDebuggerDisplayValue",
        "()Ljava/util/Map;",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "<set-?>",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "firstStateRecord",
        "getFirstStateRecord",
        "()Landroidx/compose/runtime/snapshots/StateRecord;",
        "keys",
        "getKeys",
        "modification",
        "",
        "getModification$runtime_release",
        "()I",
        "readable",
        "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;",
        "getReadable$runtime_release$annotations",
        "getReadable$runtime_release",
        "()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;",
        "size",
        "getSize",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "all",
        "",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "all$runtime_release",
        "any",
        "any$runtime_release",
        "clear",
        "",
        "containsKey",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "isEmpty",
        "mutate",
        "R",
        "block",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "prependStateRecord",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "from",
        "remove",
        "removeIf",
        "removeIf$runtime_release",
        "removeValue",
        "removeValue$runtime_release",
        "toMap",
        "update",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;",
        "withCurrent",
        "Lkotlin/ExtensionFunctionType;",
        "writable",
        "StateMapStateRecord",
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
.field private final entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


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
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentHashMapOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 65
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Ljava/util/Set;

    .line 66
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Ljava/util/Set;

    .line 67
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->values:Ljava/util/Collection;

    .line 34
    return-void
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
            "Ljava/util/Map<",
            "TK;TV;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v2, v0

    .line 129
    .local v2, "result":Ljava/lang/Object;
    :cond_0
    nop

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "oldMap":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 132
    .local v4, "currentModification":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 531
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 133
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v8, 0x0

    .line 532
    .local v8, "$i$f$withCurrent":I
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 533
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v12, "$this$mutate_u24lambda_u249_u24lambda_u248":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v13, 0x0

    .line 133
    .local v13, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1":I
    nop

    .line 533
    .end local v12    # "$this$mutate_u24lambda_u249_u24lambda_u248":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1":I
    nop

    .line 532
    .end local v10    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 133
    .end local v7    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v8    # "$i$f$withCurrent":I
    move-object v7, v12

    .line 134
    .local v7, "current":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v8

    move-object v3, v8

    .line 135
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v8

    move v4, v8

    .line 136
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1":I
    .end local v7    # "current":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 531
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 137
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v5

    .line 138
    .local v5, "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v6

    .line 140
    .local v6, "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v10, 0x0

    .line 534
    .local v10, "$i$f$writable":I
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 535
    .local v12, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 536
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 537
    .local v14, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v15

    .local v15, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 538
    .local v16, "$i$f$synchronized":I
    monitor-enter v15

    const/16 v17, 0x0

    .line 539
    .local v17, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v13, v0

    .line 540
    move-object v0, v8

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v18, v0

    .local v18, "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v19, 0x0

    .line 141
    .local v19, "$i$a$-writable-SnapshotStateMap$mutate$2":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "lock$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 541
    .local v21, "$i$f$synchronized":I
    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    .line 142
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v9, v4, :cond_1

    .line 143
    move-object/from16 v9, v18

    .end local v18    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v9, "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    :try_start_3
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 144
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v18

    move/from16 v23, v0

    const/16 v22, 0x1

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    .local v23, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    .end local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 146
    .end local v9    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    .restart local v18    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    :cond_1
    move/from16 v23, v0

    move-object/from16 v9, v18

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    .end local v18    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v9    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    const/4 v0, 0x0

    .line 142
    :goto_0
    nop

    .line 541
    .end local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1":I
    const/16 v18, 0x1

    :try_start_4
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v20

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 141
    .end local v20    # "lock$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 540
    .end local v9    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2":I
    nop

    .line 538
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v15

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 537
    .end local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    nop

    .line 542
    .end local v14    # "$i$f$sync":I
    move v9, v0

    .local v9, "it$iv$iv":Z
    const/4 v14, 0x0

    .line 543
    .local v14, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move-object v15, v8

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 544
    nop

    .line 542
    .end local v9    # "it$iv$iv":Z
    .end local v14    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    nop

    .line 536
    nop

    .line 534
    .end local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    nop

    .line 140
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    if-eqz v0, :cond_0

    goto :goto_2

    .line 541
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v14, "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .restart local v18    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2":I
    .restart local v20    # "lock$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v9, v18

    .end local v18    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v9, "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    :goto_1
    const/16 v18, 0x1

    :try_start_5
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v20

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v1    # "$i$f$mutate":I
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "oldMap":Ljava/lang/Object;
    .end local v4    # "currentModification":I
    .end local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v6    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
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

    .line 538
    .end local v9    # "$this$mutate_u24lambda_u2411":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2":I
    .end local v20    # "lock$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .restart local v1    # "$i$f$mutate":I
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "oldMap":Ljava/lang/Object;
    .restart local v4    # "currentModification":I
    .restart local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v6    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
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

    .line 149
    .end local v8    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
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

    .line 151
    .end local v3    # "oldMap":Ljava/lang/Object;
    .end local v4    # "currentModification":I
    .end local v5    # "builder":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v6    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    return-object v2

    .line 531
    .restart local v3    # "oldMap":Ljava/lang/Object;
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

.method private final update(Lkotlin/jvm/functions/Function1;)V
    .locals 26
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;+TV;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "TK;+TV;>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 154
    .local v1, "$i$f$update":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v3, 0x0

    .line 545
    .local v3, "$i$f$withCurrent":I
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v4, v0

    check-cast v4, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v4, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v5, 0x0

    .line 546
    .local v5, "$i$f$withCurrent":I
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v6, "$this$update_u24lambda_u2414":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v7, 0x0

    .line 155
    .local v7, "$i$a$-withCurrent-SnapshotStateMap$update$1":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 156
    .local v9, "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    if-eq v9, v0, :cond_0

    move-object/from16 v10, p0

    .local v10, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v11, 0x0

    .line 547
    .local v11, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 548
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 549
    .end local v0    # "snapshot$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 550
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 551
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 552
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    const/16 v19, 0x1

    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 553
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v20, v0

    .local v20, "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v21, 0x0

    .line 157
    .local v21, "$i$a$-writable-SnapshotStateMap$update$1$1":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    .local v22, "lock$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 554
    .local v23, "$i$f$synchronized":I
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 158
    .local v0, "$i$a$-synchronized-SnapshotStateMap$update$1$1$1":I
    move/from16 v24, v1

    move-object/from16 v1, v20

    .end local v20    # "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v24, "$i$f$update":I
    :try_start_1
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 159
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v20

    move/from16 v25, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$update$1$1$1":I
    .local v25, "$i$a$-synchronized-SnapshotStateMap$update$1$1$1":I
    add-int/lit8 v0, v20, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v25    # "$i$a$-synchronized-SnapshotStateMap$update$1$1$1":I
    :try_start_2
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    .end local v22    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    nop

    .line 553
    .end local v1    # "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v21    # "$i$a$-writable-SnapshotStateMap$update$1$1":I
    nop

    .line 551
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v16

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 550
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 555
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v20

    .local v0, "it$iv$iv":I
    const/4 v1, 0x0

    .line 556
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    move-object v15, v10

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 557
    nop

    .line 555
    .end local v0    # "it$iv$iv":I
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv":I
    nop

    .line 549
    nop

    .line 547
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 554
    .local v1, "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .restart local v21    # "$i$a$-writable-SnapshotStateMap$update$1$1":I
    .restart local v22    # "lock$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v3    # "$i$f$withCurrent":I
    .end local v4    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v5    # "$i$f$withCurrent":I
    .end local v6    # "$this$update_u24lambda_u2414":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v7    # "$i$a$-withCurrent-SnapshotStateMap$update$1":I
    .end local v9    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "$i$f$update":I
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 551
    .end local v1    # "$this$update_u24lambda_u2414_u24lambda_u2413":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv":I
    .end local v21    # "$i$a$-writable-SnapshotStateMap$update$1$1":I
    .end local v22    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v3    # "$i$f$withCurrent":I
    .restart local v4    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v5    # "$i$f$withCurrent":I
    .restart local v6    # "$this$update_u24lambda_u2414":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v7    # "$i$a$-withCurrent-SnapshotStateMap$update$1":I
    .restart local v9    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "$i$f$update":I
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v24    # "$i$f$update":I
    .local v1, "$i$f$update":I
    :catchall_2
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "$i$f$update":I
    .restart local v24    # "$i$f$update":I
    :goto_0
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v16

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 156
    .end local v10    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "$i$f$update":I
    .restart local v1    # "$i$f$update":I
    :cond_0
    move/from16 v24, v1

    .line 162
    .end local v1    # "$i$f$update":I
    .restart local v24    # "$i$f$update":I
    :goto_1
    nop

    .line 546
    .end local v6    # "$this$update_u24lambda_u2414":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v7    # "$i$a$-withCurrent-SnapshotStateMap$update$1":I
    .end local v9    # "newMap":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 545
    .end local v4    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v5    # "$i$f$withCurrent":I
    nop

    .line 162
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v3    # "$i$f$withCurrent":I
    return-void
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord<",
            "TK;TV;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$withCurrent":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$withCurrent$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 521
    .local v2, "$i$f$withCurrent":I
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 121
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord<",
            "TK;TV;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$writable":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v1, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v1, "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v2, 0x0

    .line 522
    .local v2, "$i$f$writable":I
    const/4 v3, 0x0

    .local v3, "snapshot$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 523
    const/4 v4, 0x0

    .line 524
    .local v4, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 525
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v7, 0x0

    .line 526
    .local v7, "$i$a$-sync-SnapshotKt$writable$3$iv":I
    const/4 v8, 0x1

    :try_start_0
    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    move-object v3, v9

    .line 527
    move-object v9, p0

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v1, v9, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v7    # "$i$a$-sync-SnapshotKt$writable$3$iv":I
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v5

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 524
    .end local v5    # "lock$iv$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 528
    .end local v4    # "$i$f$sync":I
    move-object v4, v9

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 529
    .local v5, "$i$a$-also-SnapshotKt$writable$4$iv":I
    move-object v6, p0

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v3, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 530
    nop

    .line 528
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-also-SnapshotKt$writable$4$iv":I
    nop

    .line 523
    nop

    .line 125
    .end local v1    # "$this$writable$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v2    # "$i$f$writable":I
    .end local v3    # "snapshot$iv":Ljava/lang/Object;
    return-object v9

    .line 525
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
.method public final all$runtime_release(Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$all$runtime_release":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;

    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    .line 107
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final any$runtime_release(Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    .local v0, "$i$f$any$runtime_release":I
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;

    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    .line 100
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public clear()V
    .locals 25

    .line 69
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v2, 0x0

    .line 361
    .local v2, "$i$f$update":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v4, 0x0

    .line 362
    .local v4, "$i$f$withCurrent":I
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v5, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v6, 0x0

    .line 363
    .local v6, "$i$f$withCurrent":I
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v7, "$this$update_u24lambda_u2414$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v8, 0x0

    .line 364
    .local v8, "$i$a$-withCurrent-SnapshotStateMap$update$1$iv":I
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    .local v0, "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    const/4 v9, 0x0

    .line 69
    .local v9, "$i$a$-update-SnapshotStateMap$clear$1":I
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentHashMapOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    .line 364
    .end local v0    # "it":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v9    # "$i$a$-update-SnapshotStateMap$clear$1":I
    move-object v9, v0

    .line 365
    .local v9, "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    if-eq v9, v0, :cond_0

    move-object v10, v1

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v11, 0x0

    .line 366
    .local v11, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 367
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 368
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 369
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 370
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 371
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 372
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v20, 0x0

    .line 373
    .local v20, "$i$a$-writable-SnapshotStateMap$update$1$1$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 370
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 374
    .local v0, "$i$a$-synchronized-SnapshotStateMap$update$1$1$1$iv":I
    move-object/from16 v23, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v23, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :try_start_1
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 375
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v19

    move/from16 v24, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$update$1$1$1$iv":I
    .local v24, "$i$a$-synchronized-SnapshotStateMap$update$1$1$1$iv":I
    add-int/lit8 v0, v19, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v24    # "$i$a$-synchronized-SnapshotStateMap$update$1$1$1$iv":I
    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 373
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 372
    .end local v1    # "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateMap$update$1$1$iv":I
    nop

    .line 370
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 369
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 376
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":I
    const/4 v1, 0x0

    .line 377
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v10

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 378
    nop

    .line 376
    .end local v0    # "it$iv$iv$iv":I
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 368
    nop

    .line 366
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 370
    .local v1, "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v20    # "$i$a$-writable-SnapshotStateMap$update$1$1$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v21

    .end local v2    # "$i$f$update":I
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v4    # "$i$f$withCurrent":I
    .end local v5    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v6    # "$i$f$withCurrent":I
    .end local v7    # "$this$update_u24lambda_u2414$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v8    # "$i$a$-withCurrent-SnapshotStateMap$update$1$iv":I
    .end local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "$this$update_u24lambda_u2414_u24lambda_u2413$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateMap$update$1$1$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$update":I
    .restart local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v4    # "$i$f$withCurrent":I
    .restart local v5    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v6    # "$i$f$withCurrent":I
    .restart local v7    # "$this$update_u24lambda_u2414$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v8    # "$i$a$-withCurrent-SnapshotStateMap$update$1$iv":I
    .restart local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_0
    monitor-exit v16

    throw v0

    .line 365
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_0
    move-object/from16 v23, v1

    .line 379
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_1
    nop

    .line 363
    .end local v7    # "$this$update_u24lambda_u2414$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v8    # "$i$a$-withCurrent-SnapshotStateMap$update$1$iv":I
    .end local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 362
    .end local v5    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v6    # "$i$f$withCurrent":I
    nop

    .line 379
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v4    # "$i$f$withCurrent":I
    nop

    .line 69
    .end local v2    # "$i$f$update":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getDebuggerDisplayValue()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 117
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v1, 0x0

    .line 519
    .local v1, "$i$f$withCurrent":I
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v2, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v2, "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v3, 0x0

    .line 520
    .local v3, "$i$f$withCurrent":I
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v4, "$this$_get_debuggerDisplayValue__u24lambda_u247":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v5, 0x0

    .line 117
    .local v5, "$i$a$-withCurrent-SnapshotStateMap$debuggerDisplayValue$1":I
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v4

    .line 520
    .end local v4    # "$this$_get_debuggerDisplayValue__u24lambda_u247":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v5    # "$i$a$-withCurrent-SnapshotStateMap$debuggerDisplayValue$1":I
    nop

    .line 519
    .end local v2    # "$this$withCurrent$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v3    # "$i$f$withCurrent":I
    nop

    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v1    # "$i$f$withCurrent":I
    check-cast v4, Ljava/util/Map;

    .line 117
    return-object v4
.end method

.method public getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Ljava/util/Set;

    return-object v0
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Ljava/util/Set;

    return-object v0
.end method

.method public final getModification$runtime_release()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    return v0
.end method

.method public final getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->size()I

    move-result v0

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->values:Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/runtime/snapshots/StateRecord;

    .line 41
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 42
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 70
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v3, v0

    .line 381
    .local v3, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 382
    const/4 v4, 0x0

    .line 383
    .local v4, "oldMap$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 384
    .local v5, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 385
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 386
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v9, 0x0

    .line 387
    .local v9, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 388
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v12, "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v13, 0x0

    .line 386
    .local v13, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 388
    .end local v12    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 387
    .end local v10    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 386
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v9    # "$i$f$withCurrent":I
    move-object v8, v12

    .line 389
    .local v8, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v9

    move-object v4, v9

    .line 390
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v9

    move v5, v9

    .line 391
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    .end local v8    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 385
    monitor-exit v6

    .line 392
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v6

    .line 393
    .local v6, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    .local v0, "it":Ljava/util/Map;
    const/4 v7, 0x0

    .line 70
    .local v7, "$i$a$-mutate-SnapshotStateMap$put$1":I
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    .end local v0    # "it":Ljava/util/Map;
    .end local v7    # "$i$a$-mutate-SnapshotStateMap$put$1":I
    move-object v3, v0

    .line 394
    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v7

    .line 395
    .local v7, "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v1

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v11, 0x0

    .line 396
    .local v11, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v12, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v12, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v13, 0x0

    .line 397
    .local v13, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v14

    .line 398
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v14, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 399
    .local v15, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v16

    .local v16, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 385
    .local v17, "$i$f$synchronized":I
    monitor-enter v16

    const/16 v18, 0x0

    .line 400
    .local v18, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v14, v0

    .line 401
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v0, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v19, v0

    .local v19, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v20, 0x0

    .line 402
    .local v20, "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "lock$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 385
    .local v22, "$i$f$synchronized":I
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 403
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    .local v23, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v5, :cond_0

    .line 404
    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v24, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :try_start_3
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 405
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    goto :goto_1

    .line 385
    .end local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 407
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v19    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :cond_0
    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/16 v19, 0x0

    .line 403
    :goto_1
    nop

    .line 385
    .end local v23    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 402
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    nop

    .line 401
    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v20    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    nop

    .line 385
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v16

    .line 399
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    nop

    .line 408
    .end local v15    # "$i$f$sync":I
    move/from16 v0, v19

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 409
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v15, v10

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 410
    nop

    .line 408
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 398
    nop

    .line 396
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 395
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    if-eqz v19, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v1, v24

    goto/16 :goto_0

    .line 385
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v19    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v20    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .restart local v21    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_2
    :try_start_5
    monitor-exit v21

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v18    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v20    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .end local v21    # "lock$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .restart local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v13    # "$i$f$writable":I
    .restart local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$sync":I
    .restart local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$synchronized":I
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_3
    monitor-exit v16

    throw v0

    .line 395
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "$i$f$writable":I
    .end local v14    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$sync":I
    .end local v16    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$synchronized":I
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_2
    move-object/from16 v24, v1

    .line 411
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_4
    nop

    .line 413
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 70
    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return-object v3

    .line 385
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .local v6, "lock$iv$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v24, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v24    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    monitor-exit v6

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 24
    .param p1, "from"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 71
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v3, v0

    .line 415
    .local v3, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, "oldMap$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 418
    .local v5, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 419
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 420
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v9, 0x0

    .line 421
    .local v9, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 422
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v12, "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v13, 0x0

    .line 420
    .local v13, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 422
    .end local v12    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 421
    .end local v10    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 420
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v9    # "$i$f$withCurrent":I
    move-object v8, v12

    .line 423
    .local v8, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v9

    move-object v4, v9

    .line 424
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v9

    move v5, v9

    .line 425
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    .end local v8    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 419
    monitor-exit v6

    .line 426
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v6

    .line 427
    .local v6, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    .local v0, "it":Ljava/util/Map;
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$a$-mutate-SnapshotStateMap$putAll$1":I
    move-object/from16 v8, p1

    invoke-interface {v0, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .end local v0    # "it":Ljava/util/Map;
    .end local v7    # "$i$a$-mutate-SnapshotStateMap$putAll$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 427
    move-object v3, v0

    .line 428
    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v7

    .line 429
    .local v7, "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v9, v1

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v10, 0x0

    .line 430
    .local v10, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 431
    .local v12, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 432
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 433
    .local v14, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v15

    .local v15, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 419
    .local v16, "$i$f$synchronized":I
    monitor-enter v15

    const/16 v17, 0x0

    .line 434
    .local v17, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v13, v0

    .line 435
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v18, v0

    .local v18, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v19, 0x0

    .line 436
    .local v19, "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "lock$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 419
    .local v21, "$i$f$synchronized":I
    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 437
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    move/from16 v22, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    .local v22, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v5, :cond_0

    .line 438
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v23, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :try_start_3
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 439
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    goto :goto_1

    .line 419
    .end local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 441
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :cond_0
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/16 v18, 0x0

    .line 437
    :goto_1
    nop

    .line 419
    .end local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 436
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 435
    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    nop

    .line 419
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v15

    .line 433
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    nop

    .line 442
    .end local v14    # "$i$f$sync":I
    move/from16 v0, v18

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 443
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v14, v9

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 444
    nop

    .line 442
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 432
    nop

    .line 430
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 429
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    if-eqz v18, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 419
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .restart local v20    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_2
    :try_start_5
    monitor-exit v20

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local p1    # "from":Ljava/util/Map;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .restart local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local p1    # "from":Ljava/util/Map;
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_3
    move-exception v0

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_3
    monitor-exit v15

    throw v0

    .line 429
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_2
    move-object/from16 v23, v1

    .line 445
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_4
    nop

    .line 447
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 71
    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return-void

    .line 419
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .local v6, "lock$iv$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    monitor-exit v6

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 72
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v2, 0x0

    .line 448
    .local v2, "$i$f$mutate":I
    const/4 v0, 0x0

    move-object v3, v0

    .line 449
    .local v3, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 450
    const/4 v4, 0x0

    .line 451
    .local v4, "oldMap$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 452
    .local v5, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v6

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 453
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 454
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v9, 0x0

    .line 455
    .local v9, "$i$f$withCurrent":I
    :try_start_0
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v10, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v10, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v11, 0x0

    .line 456
    .local v11, "$i$f$withCurrent":I
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v12, "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/4 v13, 0x0

    .line 454
    .local v13, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 456
    .end local v12    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v13    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 455
    .end local v10    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v11    # "$i$f$withCurrent":I
    nop

    .line 454
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v9    # "$i$f$withCurrent":I
    move-object v8, v12

    .line 457
    .local v8, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v9

    move-object v4, v9

    .line 458
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v9

    move v5, v9

    .line 459
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    .end local v8    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 453
    monitor-exit v6

    .line 460
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v6

    .line 461
    .local v6, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    .local v0, "it":Ljava/util/Map;
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-mutate-SnapshotStateMap$remove$1":I
    move-object/from16 v8, p1

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    .end local v0    # "it":Ljava/util/Map;
    .end local v7    # "$i$a$-mutate-SnapshotStateMap$remove$1":I
    move-object v3, v0

    .line 462
    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v7

    .line 463
    .local v7, "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v9, v1

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v10, 0x0

    .line 464
    .local v10, "$i$f$writable":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v11, v0

    check-cast v11, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v11, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v12, 0x0

    .line 465
    .local v12, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 466
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v13, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 467
    .local v14, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v15

    .local v15, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 453
    .local v16, "$i$f$synchronized":I
    monitor-enter v15

    const/16 v17, 0x0

    .line 468
    .local v17, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    move-object v13, v0

    .line 469
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v11, v0, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v18, v0

    .local v18, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v19, 0x0

    .line 470
    .local v19, "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "lock$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 453
    .local v21, "$i$f$synchronized":I
    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    .line 471
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    move/from16 v22, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    .local v22, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v5, :cond_0

    .line 472
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v23, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :try_start_3
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 473
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    goto :goto_1

    .line 453
    .end local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 475
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :cond_0
    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/16 v18, 0x0

    .line 471
    :goto_1
    nop

    .line 453
    .end local v22    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 470
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    nop

    .line 469
    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    nop

    .line 453
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    monitor-exit v15

    .line 467
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    nop

    .line 476
    .end local v14    # "$i$f$sync":I
    move/from16 v0, v18

    .local v0, "it$iv$iv$iv":Z
    const/4 v1, 0x0

    .line 477
    .local v1, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move-object v14, v9

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v13, v14}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 478
    nop

    .line 476
    .end local v0    # "it$iv$iv$iv":Z
    .end local v1    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    nop

    .line 466
    nop

    .line 464
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 463
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    if-eqz v18, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 453
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .restart local v20    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v1, v18

    .end local v18    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_2
    :try_start_5
    monitor-exit v20

    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local p1    # "key":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v17    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v19    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .end local v20    # "lock$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$synchronized":I
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .restart local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v10    # "$i$f$writable":I
    .restart local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v12    # "$i$f$writable":I
    .restart local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$sync":I
    .restart local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local p1    # "key":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :catchall_3
    move-exception v0

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_3
    monitor-exit v15

    throw v0

    .line 463
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v10    # "$i$f$writable":I
    .end local v11    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v12    # "$i$f$writable":I
    .end local v13    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$sync":I
    .end local v15    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$synchronized":I
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :cond_2
    move-object/from16 v23, v1

    .line 479
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    :goto_4
    nop

    .line 481
    .end local v4    # "oldMap$iv":Ljava/lang/Object;
    .end local v5    # "currentModification$iv":I
    .end local v6    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v7    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 72
    .end local v2    # "$i$f$mutate":I
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    return-object v3

    .line 453
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v2    # "$i$f$mutate":I
    .restart local v3    # "result$iv":Ljava/lang/Object;
    .restart local v4    # "oldMap$iv":Ljava/lang/Object;
    .restart local v5    # "currentModification$iv":I
    .local v6, "lock$iv$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :catchall_4
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v23    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    monitor-exit v6

    throw v0
.end method

.method public final removeIf$runtime_release(Lkotlin/jvm/functions/Function1;)Z
    .locals 26
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 84
    .local v1, "$i$f$removeIf$runtime_release":I
    const/4 v0, 0x0

    .line 85
    .local v0, "removed":Z
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v3, 0x0

    .line 485
    .local v3, "$i$f$mutate":I
    const/4 v4, 0x0

    move-object v5, v4

    move v4, v0

    .line 486
    .end local v0    # "removed":Z
    .local v4, "removed":Z
    .local v5, "result$iv":Ljava/lang/Object;
    :goto_0
    nop

    .line 487
    const/4 v6, 0x0

    .line 488
    .local v6, "oldMap$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 489
    .local v7, "currentModification$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v8

    .local v8, "lock$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 490
    .local v9, "$i$f$synchronized":I
    monitor-enter v8

    const/4 v0, 0x0

    .line 491
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    move-object v10, v2

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v11, 0x0

    .line 492
    .local v11, "$i$f$withCurrent":I
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v13

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    check-cast v13, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v13, "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v14, 0x0

    .line 493
    .local v14, "$i$f$withCurrent":I
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .local v15, "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v16, 0x0

    .line 491
    .local v16, "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 493
    .end local v15    # "$this$mutate_u24lambda_u249_u24lambda_u248$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v16    # "$i$a$-withCurrent-SnapshotStateMap$mutate$1$current$1$iv":I
    nop

    .line 492
    .end local v13    # "$this$withCurrent$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v14    # "$i$f$withCurrent":I
    nop

    .line 491
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$withCurrent":I
    move-object v10, v15

    .line 494
    .local v10, "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v11

    move-object v6, v11

    .line 495
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v11

    move v7, v11

    .line 496
    nop

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$1$iv":I
    .end local v10    # "current$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 490
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v8

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 497
    .end local v8    # "lock$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    move-result-object v8

    .line 498
    .local v8, "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .local v0, "it":Ljava/util/Map;
    const/4 v9, 0x0

    .line 86
    .local v9, "$i$a$-mutate-SnapshotStateMap$removeIf$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 87
    .local v11, "entry":Ljava/util/Map$Entry;
    move-object/from16 v13, p1

    invoke-interface {v13, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 88
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v4, 0x1

    .end local v11    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 92
    :cond_1
    move-object/from16 v13, p1

    .end local v0    # "it":Ljava/util/Map;
    .end local v9    # "$i$a$-mutate-SnapshotStateMap$removeIf$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 498
    move-object v5, v0

    .line 499
    invoke-interface {v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v9

    .line 500
    .local v9, "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v10, v2

    .local v10, "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    const/4 v11, 0x0

    .line 501
    .local v11, "$i$f$writable":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const-string/jumbo v14, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/snapshots/StateRecord;

    .local v14, "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    const/4 v15, 0x0

    .line 502
    .local v15, "$i$f$writable":I
    const/4 v0, 0x0

    .local v0, "snapshot$iv$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v16

    .line 503
    .end local v0    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 504
    .local v17, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v18

    .local v18, "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 490
    .local v19, "$i$f$synchronized":I
    monitor-enter v18

    const/16 v20, 0x0

    .line 505
    .local v20, "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v0

    .line 506
    :try_start_2
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v12, v16

    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .local v12, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :try_start_3
    invoke-static {v14, v0, v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-object/from16 v16, v0

    .local v16, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    const/16 v21, 0x0

    .line 507
    .local v21, "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->access$getSync$p()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    .local v22, "lock$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 490
    .local v23, "$i$f$synchronized":I
    monitor-enter v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    .line 508
    .local v0, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    move/from16 v24, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    .local v24, "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v7, :cond_2

    .line 509
    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v25, "$i$f$removeIf$runtime_release":I
    :try_start_5
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setMap$runtime_release(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 510
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getModification$runtime_release()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->setModification$runtime_release(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    const/4 v0, 0x1

    goto :goto_2

    .line 490
    .end local v24    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 512
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .local v1, "$i$f$removeIf$runtime_release":I
    .restart local v16    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v24    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    :cond_2
    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    const/4 v0, 0x0

    .line 508
    :goto_2
    nop

    .line 490
    .end local v24    # "$i$a$-synchronized-SnapshotStateMap$mutate$2$1$iv":I
    const/16 v16, 0x1

    :try_start_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 507
    .end local v22    # "lock$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    nop

    .line 506
    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v21    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    nop

    .line 490
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 504
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    nop

    .line 513
    .end local v17    # "$i$f$sync":I
    move v1, v0

    .local v1, "it$iv$iv$iv":Z
    const/16 v16, 0x0

    .line 514
    .local v16, "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    move/from16 v17, v1

    .end local v1    # "it$iv$iv$iv":Z
    .local v17, "it$iv$iv$iv":Z
    move-object v1, v10

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-static {v12, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 515
    nop

    .line 513
    .end local v16    # "$i$a$-also-SnapshotKt$writable$4$iv$iv$iv":I
    .end local v17    # "it$iv$iv$iv":Z
    nop

    .line 503
    nop

    .line 501
    .end local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    nop

    .line 500
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    move/from16 v1, v25

    goto/16 :goto_0

    .line 490
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .local v1, "$i$f$removeIf$runtime_release":I
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .local v16, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v17, "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .restart local v21    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .restart local v22    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .local v1, "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    :goto_3
    const/16 v16, 0x1

    :try_start_7
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v22

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v3    # "$i$f$mutate":I
    .end local v4    # "removed":Z
    .end local v5    # "result$iv":Ljava/lang/Object;
    .end local v6    # "oldMap$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .end local p1    # "predicate":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "$this$mutate_u24lambda_u2411$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .end local v20    # "$i$a$-sync-SnapshotKt$writable$3$iv$iv$iv":I
    .end local v21    # "$i$a$-writable-SnapshotStateMap$mutate$2$iv":I
    .end local v22    # "lock$iv$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v3    # "$i$f$mutate":I
    .restart local v4    # "removed":Z
    .restart local v5    # "result$iv":Ljava/lang/Object;
    .restart local v6    # "oldMap$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .restart local v8    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .restart local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .restart local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v11    # "$i$f$writable":I
    .restart local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .restart local v15    # "$i$f$writable":I
    .restart local v17    # "$i$f$sync":I
    .restart local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$synchronized":I
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    .restart local p1    # "predicate":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_4

    .end local v25    # "$i$f$removeIf$runtime_release":I
    .local v1, "$i$f$removeIf$runtime_release":I
    :catchall_3
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v16, v12

    .end local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    goto :goto_4

    .end local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .restart local v1    # "$i$f$removeIf$runtime_release":I
    .local v16, "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v25, v1

    move-object/from16 v12, v16

    .end local v1    # "$i$f$removeIf$runtime_release":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    goto :goto_4

    .end local v12    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .restart local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move/from16 v25, v1

    .end local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    :goto_4
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v18

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0

    .line 500
    .end local v10    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v11    # "$i$f$writable":I
    .end local v14    # "$this$writable$iv$iv$iv":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v15    # "$i$f$writable":I
    .end local v16    # "snapshot$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$sync":I
    .end local v18    # "lock$iv$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$synchronized":I
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .restart local v1    # "$i$f$removeIf$runtime_release":I
    :cond_4
    move/from16 v25, v1

    .line 516
    .end local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    :goto_5
    nop

    .line 518
    .end local v6    # "oldMap$iv":Ljava/lang/Object;
    .end local v7    # "currentModification$iv":I
    .end local v8    # "builder$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;
    .end local v9    # "newMap$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    nop

    .line 93
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .end local v3    # "$i$f$mutate":I
    .end local v5    # "result$iv":Ljava/lang/Object;
    return v4

    .line 490
    .end local v25    # "$i$f$removeIf$runtime_release":I
    .restart local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .restart local v3    # "$i$f$mutate":I
    .restart local v5    # "result$iv":Ljava/lang/Object;
    .restart local v6    # "oldMap$iv":Ljava/lang/Object;
    .restart local v7    # "currentModification$iv":I
    .local v8, "lock$iv$iv":Ljava/lang/Object;
    .local v9, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v25, v1

    .end local v1    # "$i$f$removeIf$runtime_release":I
    .restart local v25    # "$i$f$removeIf$runtime_release":I
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v8

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method public final removeValue$runtime_release(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 482
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "it":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 77
    .local v5, "$i$a$-firstOrNull-SnapshotStateMap$removeValue$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 482
    .end local v4    # "it":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-firstOrNull-SnapshotStateMap$removeValue$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 483
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 77
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    move-object v0, v3

    .line 484
    .local v0, "it":Ljava/util/Map$Entry;
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$a$-let-SnapshotStateMap$removeValue$2":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "it":Ljava/util/Map$Entry;
    .end local v1    # "$i$a$-let-SnapshotStateMap$removeValue$2":I
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->getMap$runtime_release()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
