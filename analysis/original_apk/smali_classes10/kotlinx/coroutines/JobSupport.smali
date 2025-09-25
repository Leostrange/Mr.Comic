.class public Lkotlinx/coroutines/JobSupport;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;
.implements Lkotlinx/coroutines/ChildJob;
.implements Lkotlinx/coroutines/ParentJob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/JobSupport$AwaitContinuation;,
        Lkotlinx/coroutines/JobSupport$ChildCompletion;,
        Lkotlinx/coroutines/JobSupport$Finishing;,
        Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;,
        Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1461:1\n713#1,2:1468\n364#1,2:1477\n366#1,4:1482\n370#1,4:1487\n374#1,2:1494\n364#1,2:1496\n366#1,4:1501\n370#1,4:1506\n374#1,2:1513\n175#1,2:1521\n714#1:1523\n175#1,2:1524\n175#1,2:1540\n175#1,2:1553\n713#1,2:1555\n713#1,2:1557\n175#1,2:1559\n713#1,2:1561\n175#1,2:1563\n175#1,2:1570\n175#1,2:1572\n1#2:1462\n1#2:1486\n1#2:1505\n24#3,4:1463\n24#3,4:1526\n24#3,4:1565\n24#3,4:1574\n16#4:1467\n16#4:1530\n16#4:1569\n16#4:1578\n288#5,2:1470\n288#5,2:1472\n18#6:1474\n159#7:1475\n159#7:1476\n149#7,4:1579\n336#8,3:1479\n339#8,3:1491\n336#8,3:1498\n339#8,3:1510\n336#8,6:1515\n132#9:1531\n70#9,3:1532\n133#9,5:1535\n318#10,11:1542\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n247#1:1468,2\n329#1:1477,2\n329#1:1482,4\n329#1:1487,4\n329#1:1494,2\n361#1:1496,2\n361#1:1501,4\n361#1:1506,4\n361#1:1513,2\n378#1:1521,2\n423#1:1523\n468#1:1524,2\n560#1:1540,2\n601#1:1553,2\n628#1:1555,2\n637#1:1557,2\n701#1:1559,2\n730#1:1561,2\n743#1:1563,2\n816#1:1570,2\n838#1:1572,2\n329#1:1486\n361#1:1505\n210#1:1463,4\n485#1:1526,4\n746#1:1565,4\n891#1:1574,4\n210#1:1467\n485#1:1530\n746#1:1569\n891#1:1578\n258#1:1470,2\n262#1:1472,2\n270#1:1474\n276#1:1475\n278#1:1476\n1225#1:1579,4\n329#1:1479,3\n329#1:1491,3\n361#1:1498,3\n361#1:1510,3\n365#1:1515,6\n533#1:1531\n533#1:1532,3\n533#1:1535,5\n566#1:1542,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
    message = "This is internal API and may be removed in the future releases"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u00b5\u0001\u00b6\u0001\u00b7\u0001\u00b8\u0001\u00b9\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010A\u001a\u00020\u00052\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0002J\u001e\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00112\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010L\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\u000e\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u0002J\u0010\u0010O\u001a\u0004\u0018\u00010\u000bH\u0084@\u00a2\u0006\u0002\u0010PJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0082@\u00a2\u0006\u0002\u0010PJ\u0012\u0010R\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0017J\u0018\u0010R\u001a\u00020H2\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UH\u0016J\u0010\u0010V\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u0011J\u0017\u0010W\u001a\u00020\u00052\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008XJ\u0010\u0010Y\u001a\u00020H2\u0006\u0010S\u001a\u00020\u0011H\u0016J\u0014\u0010Z\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010[\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0002J\u0008\u0010\\\u001a\u00020]H\u0014J\u0010\u0010^\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0016J\u001a\u0010_\u001a\u00020H2\u0006\u00108\u001a\u00020?2\u0008\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010a\u001a\u00020H2\u0006\u00108\u001a\u00020b2\u0006\u0010c\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010f\u001a\u00020\u00112\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J&\u0010g\u001a\u00020h2\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010]2\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u0011H\u0080\u0008\u00a2\u0006\u0002\u0008jJ\u001c\u0010k\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010l\u001a\u0004\u0018\u00010d2\u0006\u00108\u001a\u00020?H\u0002J\n\u0010m\u001a\u00060Tj\u0002`UJ\u000c\u0010n\u001a\u00060Tj\u0002`UH\u0016J\u000f\u0010o\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008pJ\u0008\u0010q\u001a\u0004\u0018\u00010\u0011J \u0010r\u001a\u0004\u0018\u00010\u00112\u0006\u00108\u001a\u00020b2\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010s\u001a\u0004\u0018\u00010D2\u0006\u00108\u001a\u00020?H\u0002J\u0010\u0010t\u001a\u00020\u00052\u0006\u0010u\u001a\u00020\u0011H\u0014J\u0015\u0010v\u001a\u00020H2\u0006\u0010u\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008wJ\u0012\u0010x\u001a\u00020H2\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u0004JA\u0010y\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011\u00a2\u0006\r\u0008\u007f\u0012\t\u0008\u0080\u0001\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J1\u0010y\u001a\u00020z2)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011\u00a2\u0006\r\u0008\u007f\u0012\t\u0008\u0080\u0001\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J(\u0010\u0082\u0001\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052\u0007\u0010}\u001a\u00030\u0083\u0001H\u0000\u00a2\u0006\u0003\u0008\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020HH\u0086@\u00a2\u0006\u0002\u0010PJ\t\u0010\u0086\u0001\u001a\u00020\u0005H\u0002J\u000f\u0010\u0087\u0001\u001a\u00020HH\u0082@\u00a2\u0006\u0002\u0010PJ\"\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0015\u0010\u008a\u0001\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020H0~H\u0082\u0008J\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u008c\u0001\u001a\u00020\u00052\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0003\u0008\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\u001a\u0010\u0090\u0001\u001a\u00020F2\u0007\u0010}\u001a\u00030\u0083\u00012\u0006\u0010{\u001a\u00020\u0005H\u0002J\u000f\u0010\u0091\u0001\u001a\u00020]H\u0010\u00a2\u0006\u0003\u0008\u0092\u0001J\u0019\u0010\u0093\u0001\u001a\u00020H2\u0006\u0010C\u001a\u00020D2\u0006\u0010S\u001a\u00020\u0011H\u0002J)\u0010\u0094\u0001\u001a\u00020H\"\u000b\u0008\u0000\u0010\u0095\u0001\u0018\u0001*\u00020F2\u0006\u0010C\u001a\u00020D2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0082\u0008J!\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010\u0099\u0001\u001a\u00020H2\u000c\u0010\u009a\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010{\u001a\u00020H2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0014J\u0013\u0010\u009c\u0001\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\t\u0010\u009d\u0001\u001a\u00020HH\u0014J\u0010\u0010\u009e\u0001\u001a\u00020H2\u0007\u0010\u009f\u0001\u001a\u00020\u0003J\u0012\u0010\u00a0\u0001\u001a\u00020H2\u0007\u00108\u001a\u00030\u00a1\u0001H\u0002J\u0011\u0010\u00a2\u0001\u001a\u00020H2\u0006\u00108\u001a\u00020FH\u0002J\"\u0010\u00a3\u0001\u001a\u00020H2\u000c\u0010\u009a\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0017\u0010\u00a4\u0001\u001a\u00020H2\u0006\u0010E\u001a\u00020FH\u0000\u00a2\u0006\u0003\u0008\u00a5\u0001J\u0007\u0010\u00a6\u0001\u001a\u00020\u0005J\u0014\u0010\u00a7\u0001\u001a\u00030\u00a8\u00012\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\u0013\u0010\u00a9\u0001\u001a\u00020]2\u0008\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\t\u0010\u00aa\u0001\u001a\u00020]H\u0007J\t\u0010\u00ab\u0001\u001a\u00020]H\u0016J\u001b\u0010\u00ac\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\u0008\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u00ad\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\u0006\u0010I\u001a\u00020\u0011H\u0002J\u001f\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u00108\u001a\u0004\u0018\u00010\u000b2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u001d\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020?2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J$\u0010\u00b0\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020b2\u0006\u0010N\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010\u000bH\u0082\u0010J\u0010\u0010\u00b1\u0001\u001a\u0004\u0018\u00010d*\u00030\u00b2\u0001H\u0002J\u0017\u0010\u00b3\u0001\u001a\u00020H*\u00020D2\u0008\u0010S\u001a\u0004\u0018\u00010\u0011H\u0002J\u001d\u0010\u00b4\u0001\u001a\u00060Tj\u0002`U*\u00020\u00112\n\u0008\u0002\u0010i\u001a\u0004\u0018\u00010]H\u0004R\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008X\u0082\u0004R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0016R\u0011\u0010\u001a\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u001b\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\u001c\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0016R\u0014\u0010\u001d\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0016R\u0015\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030#8DX\u0084\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0016R\u0017\u0010*\u001a\u00020+8F\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010%\u001a\u0004\u0008-\u0010.R\u0016\u0010/\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R(\u00103\u001a\u0004\u0018\u00010\t2\u0008\u00102\u001a\u0004\u0018\u00010\t8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u0016\u00108\u001a\u0004\u0018\u00010\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0018\u0010>\u001a\u00020\u0005*\u00020?8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010@\u00a8\u0006\u00ba\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/ChildJob;",
        "Lkotlinx/coroutines/ParentJob;",
        "active",
        "",
        "(Z)V",
        "_parentHandle",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/ChildHandle;",
        "_state",
        "",
        "children",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "completionCause",
        "",
        "getCompletionCause",
        "()Ljava/lang/Throwable;",
        "completionCauseHandled",
        "getCompletionCauseHandled",
        "()Z",
        "handlesException",
        "getHandlesException$kotlinx_coroutines_core",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "isScopedCoroutine",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "onAwaitInternal",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnAwaitInternal$annotations",
        "()V",
        "getOnAwaitInternal",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onCancelComplete",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onJoin",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "getOnJoin$annotations",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "parent",
        "getParent",
        "()Lkotlinx/coroutines/Job;",
        "value",
        "parentHandle",
        "getParentHandle$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/ChildHandle;",
        "setParentHandle$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/ChildHandle;)V",
        "state",
        "getState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "exceptionOrNull",
        "getExceptionOrNull",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "isCancelling",
        "Lkotlinx/coroutines/Incomplete;",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "addLastAtomic",
        "expect",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "node",
        "Lkotlinx/coroutines/JobNode;",
        "addSuppressedExceptions",
        "",
        "rootCause",
        "exceptions",
        "",
        "afterCompletion",
        "attachChild",
        "child",
        "awaitInternal",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitSuspend",
        "cancel",
        "cause",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelCoroutine",
        "cancelImpl",
        "cancelImpl$kotlinx_coroutines_core",
        "cancelInternal",
        "cancelMakeCompleting",
        "cancelParent",
        "cancellationExceptionMessage",
        "",
        "childCancelled",
        "completeStateFinalization",
        "update",
        "continueCompleting",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "lastChild",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "proposedUpdate",
        "createCauseException",
        "defaultCancellationException",
        "Lkotlinx/coroutines/JobCancellationException;",
        "message",
        "defaultCancellationException$kotlinx_coroutines_core",
        "finalizeFinishingState",
        "firstChild",
        "getCancellationException",
        "getChildJobCancellationCause",
        "getCompletedInternal",
        "getCompletedInternal$kotlinx_coroutines_core",
        "getCompletionExceptionOrNull",
        "getFinalRootCause",
        "getOrPromoteCancellingList",
        "handleJobException",
        "exception",
        "handleOnCompletionException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "initParentJob",
        "invokeOnCompletion",
        "Lkotlinx/coroutines/DisposableHandle;",
        "onCancelling",
        "invokeImmediately",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "invokeOnCompletionInternal",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "invokeOnCompletionInternal$kotlinx_coroutines_core",
        "join",
        "joinInternal",
        "joinSuspend",
        "loopOnState",
        "",
        "block",
        "makeCancelling",
        "makeCompleting",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompletingOnce",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "makeNode",
        "nameString",
        "nameString$kotlinx_coroutines_core",
        "notifyCancelling",
        "notifyHandlers",
        "T",
        "onAwaitInternalProcessResFunc",
        "ignoredParam",
        "result",
        "onAwaitInternalRegFunc",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "onCompletionInternal",
        "onStart",
        "parentCancelled",
        "parentJob",
        "promoteEmptyToNodeList",
        "Lkotlinx/coroutines/Empty;",
        "promoteSingleToNodeList",
        "registerSelectForOnJoin",
        "removeNode",
        "removeNode$kotlinx_coroutines_core",
        "start",
        "startInternal",
        "",
        "stateString",
        "toDebugString",
        "toString",
        "tryFinalizeSimpleState",
        "tryMakeCancelling",
        "tryMakeCompleting",
        "tryMakeCompletingSlowPath",
        "tryWaitForChild",
        "nextChild",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "notifyCompletion",
        "toCancellationException",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "SelectOnAwaitCompletionHandler",
        "SelectOnJoinCompletionHandler",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lkotlinx/coroutines/JobSupport;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v1, "_parentHandle$volatile"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_NEW$p()Lkotlinx/coroutines/Empty;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/JobSupport;->_state$volatile:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static final synthetic access$awaitSuspend(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;

    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->cancellationExceptionMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "lastChild"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->continueCompleting(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$joinSuspend(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->joinSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onAwaitInternalProcessResFunc(Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onAwaitInternalRegFunc(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$registerSelectForOnJoin(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method private final addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z
    .locals 6
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "list"    # Lkotlinx/coroutines/NodeList;
    .param p3, "node"    # Lkotlinx/coroutines/JobNode;

    .line 533
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v1, 0x0

    .line 1531
    .local v1, "$i$f$addLastIf":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    const/4 v3, 0x0

    .line 1532
    .local v3, "$i$f$makeCondAddOp":I
    new-instance v4, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;

    move-object v5, p3

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v4, v5, p0, p1}, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 1534
    nop

    .line 1531
    .end local v2    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$makeCondAddOp":I
    move-object v2, v4

    .line 1535
    .local v2, "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    nop

    .line 1536
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    .line 1537
    .local v3, "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v4, p3

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v3, v4, v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1539
    .end local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    goto :goto_0

    .restart local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1538
    :pswitch_1
    const/4 v4, 0x1

    .line 533
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v1    # "$i$f$addLastIf":I
    .end local v2    # "condAdd$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v3    # "prev$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final addSuppressedExceptions(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 6
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "exceptions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "expectedSize$iv":I
    const/4 v1, 0x0

    .line 1474
    .local v1, "$i$f$identitySet":I
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 270
    .end local v0    # "expectedSize$iv":I
    .end local v1    # "$i$f$identitySet":I
    nop

    .line 276
    .local v0, "seenExceptions":Ljava/util/Set;
    const/4 v1, 0x0

    .line 1475
    .local v1, "$i$f$unwrap":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 276
    .end local v1    # "$i$f$unwrap":I
    :goto_0
    move-object v1, v2

    .line 277
    .local v1, "unwrappedCause":Ljava/lang/Throwable;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 278
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1476
    .local v4, "$i$f$unwrap":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    .line 278
    .end local v4    # "$i$f$unwrap":I
    :goto_2
    move-object v4, v5

    .line 279
    .local v4, "unwrapped":Ljava/lang/Throwable;
    if-eq v4, p1, :cond_2

    if-eq v4, v1, :cond_2

    .line 280
    instance-of v5, v4, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v3    # "exception":Ljava/lang/Throwable;
    .end local v4    # "unwrapped":Ljava/lang/Throwable;
    goto :goto_1

    .line 284
    :cond_4
    return-void
.end method

.method private final awaitSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1235
    move-object v0, p1

    .local v0, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 1241
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-JobSupport$awaitSuspend$2":I
    new-instance v2, Lkotlinx/coroutines/JobSupport$AwaitContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V

    .line 1243
    .local v2, "cont":Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->initCancellability()V

    .line 1244
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/Job;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lkotlinx/coroutines/ResumeAwaitOnCompletion;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-direct {v7, v8}, Lkotlinx/coroutines/ResumeAwaitOnCompletion;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v7, Lkotlinx/coroutines/InternalCompletionHandler;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 1245
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 1235
    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-JobSupport$awaitSuspend$2":I
    .end local v2    # "cont":Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 1246
    :cond_0
    return-object v0
.end method

.method private final cancelMakeCompleting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "cause"    # Ljava/lang/Object;

    .line 701
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1559
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1560
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 702
    .local v3, "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v4, :cond_2

    instance-of v4, v2, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v4}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v6, v7}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 707
    .local v4, "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    invoke-direct {p0, v2, v4}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 708
    .local v5, "finalState":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-eq v5, v6, :cond_1

    return-object v5

    .line 709
    :cond_1
    nop

    .line 1560
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    .end local v4    # "proposedUpdate":Lkotlinx/coroutines/CompletedExceptionally;
    .end local v5    # "finalState":Ljava/lang/Object;
    goto :goto_0

    .line 704
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$cancelMakeCompleting$1":I
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    return-object v4
.end method

.method private final cancelParent(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 343
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isScopedCoroutine()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 349
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 350
    .local v0, "isCancellation":Z
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v2

    .line 352
    .local v2, "parent":Lkotlinx/coroutines/ChildHandle;
    if-eqz v2, :cond_4

    sget-object v3, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/ChildHandle;->childCancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    .line 353
    :cond_4
    :goto_1
    return v0
.end method

.method private final completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "update"    # Ljava/lang/Object;

    .line 306
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lkotlinx/coroutines/ChildHandle;
    const/4 v1, 0x0

    .line 307
    .local v1, "$i$a$-let-JobSupport$completeStateFinalization$1":I
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->dispose()V

    .line 308
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v2, Lkotlinx/coroutines/ChildHandle;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->setParentHandle$kotlinx_coroutines_core(Lkotlinx/coroutines/ChildHandle;)V

    .line 309
    nop

    .line 306
    .end local v0    # "it":Lkotlinx/coroutines/ChildHandle;
    .end local v1    # "$i$a$-let-JobSupport$completeStateFinalization$1":I
    nop

    .line 310
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_2
    move-object v0, v1

    .line 315
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v1, :cond_3

    .line 316
    nop

    .line 317
    :try_start_0
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/JobNode;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 318
    :catchall_0
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in completion handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 322
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/JobSupport;->notifyCompletion(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 324
    :cond_4
    :goto_1
    return-void
.end method

.method private final continueCompleting(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "lastChild"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 940
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    const/4 v0, 0x0

    .line 940
    .local v0, "$i$a$-assert-JobSupport$continueCompleting$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-JobSupport$continueCompleting$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 942
    :cond_2
    :goto_1
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v0

    .line 944
    .local v0, "waitChild":Lkotlinx/coroutines/ChildHandleNode;
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0, p3}, Lkotlinx/coroutines/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 946
    :cond_3
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/JobSupport;->finalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 947
    .local v1, "finalState":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->afterCompletion(Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method private final createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 6
    .param p1, "cause"    # Ljava/lang/Object;

    .line 729
    nop

    .line 730
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 1561
    const/4 v0, 0x0

    .local v0, "message$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1562
    .local v2, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-direct {v3, v4, v1, v5}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "message$iv":Ljava/lang/String;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    move-object v0, v3

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    .line 731
    :cond_1
    const-string/jumbo v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ParentJob;

    invoke-interface {v0}, Lkotlinx/coroutines/ParentJob;->getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 732
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static synthetic defaultCancellationException$kotlinx_coroutines_core$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/JobCancellationException;
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/JobSupport;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 713
    if-nez p4, :cond_3

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 p3, 0x0

    .line 714
    .local p3, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance p4, Lkotlinx/coroutines/JobCancellationException;

    if-nez p1, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-direct {p4, v0, p2, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object p4

    .line 713
    .end local p3    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    :cond_3
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    const-string p4, "Super calls with default arguments not supported in this target, function: defaultCancellationException"

    invoke-direct {p3, p4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private final finalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .line 204
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1462
    const/4 v0, 0x0

    .line 204
    .local v0, "$i$a$-assert-JobSupport$finalizeFinishingState$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .end local v0    # "$i$a$-assert-JobSupport$finalizeFinishingState$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 205
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1462
    const/4 v0, 0x0

    .line 205
    .local v0, "$i$a$-assert-JobSupport$finalizeFinishingState$2":I
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v3

    .end local v0    # "$i$a$-assert-JobSupport$finalizeFinishingState$2":I
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_4
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1462
    const/4 v0, 0x0

    .line 206
    .local v0, "$i$a$-assert-JobSupport$finalizeFinishingState$3":I
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v0

    .end local v0    # "$i$a$-assert-JobSupport$finalizeFinishingState$3":I
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_6
    :goto_3
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_8

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_5

    :cond_8
    move-object v0, v3

    .line 209
    .local v0, "proposedException":Ljava/lang/Throwable;
    :goto_5
    const/4 v4, 0x0

    .line 210
    .local v4, "wasCancelling":Z
    const/4 v5, 0x0

    .line 1463
    .local v5, "$i$f$synchronized":I
    nop

    .line 1466
    const/4 v6, 0x0

    .line 1467
    .local v6, "$i$f$synchronizedImpl":I
    monitor-enter p1

    const/4 v7, 0x0

    .line 211
    .local v7, "$i$a$-synchronized-JobSupport$finalizeFinishingState$finalException$1":I
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v8

    move v4, v8

    .line 212
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport$Finishing;->sealLocked(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v8

    .line 213
    .local v8, "exceptions":Ljava/util/List;
    invoke-direct {p0, p1, v8}, Lkotlinx/coroutines/JobSupport;->getFinalRootCause(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v9

    .line 214
    .local v9, "finalCause":Ljava/lang/Throwable;
    if-eqz v9, :cond_9

    invoke-direct {p0, v9, v8}, Lkotlinx/coroutines/JobSupport;->addSuppressedExceptions(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_9
    nop

    .line 1467
    .end local v7    # "$i$a$-synchronized-JobSupport$finalizeFinishingState$finalException$1":I
    .end local v8    # "exceptions":Ljava/util/List;
    .end local v9    # "finalCause":Ljava/lang/Throwable;
    monitor-exit p1

    .line 1466
    .end local v6    # "$i$f$synchronizedImpl":I
    nop

    .line 210
    .end local v5    # "$i$f$synchronized":I
    move-object v5, v9

    .line 218
    .local v5, "finalException":Ljava/lang/Throwable;
    nop

    .line 220
    if-nez v5, :cond_a

    goto :goto_6

    .line 222
    :cond_a
    if-ne v5, v0, :cond_b

    .line 218
    :goto_6
    move-object v6, p2

    goto :goto_7

    .line 224
    :cond_b
    new-instance v6, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v2, v7, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 218
    :goto_7
    move-object v3, v6

    .line 227
    .local v3, "finalState":Ljava/lang/Object;
    if-eqz v5, :cond_e

    .line 228
    invoke-direct {p0, v5}, Lkotlinx/coroutines/JobSupport;->cancelParent(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/JobSupport;->handleJobException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    move v1, v2

    .line 229
    .local v1, "handled":Z
    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    const-string/jumbo v2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    .line 233
    .end local v1    # "handled":Z
    :cond_e
    if-nez v4, :cond_f

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 234
    :cond_f
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->onCompletionInternal(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 236
    invoke-static {v3}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 237
    .local v1, "casSuccess":Z
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1462
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$a$-assert-JobSupport$finalizeFinishingState$4":I
    nop

    .end local v2    # "$i$a$-assert-JobSupport$finalizeFinishingState$4":I
    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 239
    :cond_11
    :goto_9
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/JobSupport;->completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V

    .line 240
    return-object v3

    .line 1467
    .end local v1    # "casSuccess":Z
    .end local v3    # "finalState":Ljava/lang/Object;
    .local v5, "$i$f$synchronized":I
    .restart local v6    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method private final firstChild(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;

    .line 924
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "$this$exceptionOrNull"    # Ljava/lang/Object;

    .line 921
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method private final getFinalRootCause(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 12
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "exceptions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport$Finishing;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 245
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    const/4 v0, 0x0

    .local v0, "message$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1469
    .local v2, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-direct {v3, v4, v1, v5}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "message$iv":Ljava/lang/String;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    check-cast v3, Ljava/lang/Throwable;

    .line 247
    return-object v3

    .line 248
    :cond_0
    return-object v1

    .line 258
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1470
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    .local v6, "it":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 258
    .local v7, "$i$a$-firstOrNull-JobSupport$getFinalRootCause$firstNonCancellation$1":I
    instance-of v8, v6, Ljava/util/concurrent/CancellationException;

    .line 1470
    .end local v6    # "it":Ljava/lang/Throwable;
    .end local v7    # "$i$a$-firstOrNull-JobSupport$getFinalRootCause$firstNonCancellation$1":I
    xor-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1471
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object v4, v1

    .line 258
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Throwable;

    .line 259
    .local v0, "firstNonCancellation":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    return-object v0

    .line 260
    :cond_4
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 261
    .local v3, "first":Ljava/lang/Throwable;
    instance-of v4, v3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_8

    .line 262
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1472
    .local v6, "$i$f$firstOrNull":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/Throwable;

    .local v9, "it":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 262
    .local v10, "$i$a$-firstOrNull-JobSupport$getFinalRootCause$detailedTimeoutException$1":I
    if-eq v9, v3, :cond_6

    instance-of v11, v9, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v11, :cond_6

    move v9, v5

    goto :goto_1

    :cond_6
    move v9, v2

    .line 1472
    .end local v9    # "it":Ljava/lang/Throwable;
    .end local v10    # "$i$a$-firstOrNull-JobSupport$getFinalRootCause$detailedTimeoutException$1":I
    :goto_1
    if-eqz v9, :cond_5

    move-object v1, v8

    goto :goto_2

    .line 1473
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_7
    nop

    .line 262
    .end local v4    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v1, Ljava/lang/Throwable;

    .line 263
    .local v1, "detailedTimeoutException":Ljava/lang/Throwable;
    if-eqz v1, :cond_8

    return-object v1

    .line 265
    .end local v1    # "detailedTimeoutException":Ljava/lang/Throwable;
    :cond_8
    return-object v3
.end method

.method protected static synthetic getOnAwaitInternal$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnJoin$annotations()V
    .locals 0

    return-void
.end method

.method private final getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;

    .line 784
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 785
    nop

    .line 786
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    goto :goto_0

    .line 787
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_1

    .line 790
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V

    .line 791
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final synthetic get_parentHandle$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_state$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->_state$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/JobSupport;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final isCancelling(Lkotlinx/coroutines/Incomplete;)Z
    .locals 1
    .param p1, "$this$isCancelling"    # Lkotlinx/coroutines/Incomplete;

    .line 1156
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final joinInternal()Z
    .locals 5

    .line 560
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1540
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1541
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 561
    .local v3, "$i$a$-loopOnState-JobSupport$joinInternal$1":I
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 562
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 563
    :cond_1
    nop

    .line 1541
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$joinInternal$1":I
    goto :goto_0
.end method

.method private final joinSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    .line 566
    const/4 v0, 0x0

    .line 1542
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 1543
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1549
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1550
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 568
    .local v5, "$i$a$-suspendCancellableCoroutine-JobSupport$joinSuspend$2":I
    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/Job;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lkotlinx/coroutines/ResumeOnCompletion;

    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    invoke-direct {v9, v10}, Lkotlinx/coroutines/ResumeOnCompletion;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlinx/coroutines/InternalCompletionHandler;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 569
    nop

    .line 1550
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-JobSupport$joinSuspend$2":I
    nop

    .line 1551
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 1542
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    .line 1552
    :cond_1
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 569
    return-object v0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final loopOnState(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    .local v0, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 176
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final makeCancelling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "cause"    # Ljava/lang/Object;

    .line 742
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 743
    .local v0, "causeExceptionCache":Ljava/lang/Object;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v3, 0x0

    move-object v4, v0

    .line 1563
    .end local v0    # "causeExceptionCache":Ljava/lang/Object;
    .local v3, "$i$f$loopOnState":I
    .local v4, "causeExceptionCache":Ljava/lang/Object;
    :goto_0
    nop

    .line 1564
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v5

    .local v5, "state":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 744
    .local v6, "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    nop

    .line 745
    instance-of v0, v5, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    .line 746
    const/4 v9, 0x0

    .line 1565
    .local v9, "$i$f$synchronized":I
    nop

    .line 1568
    const/4 v10, 0x0

    .line 1569
    .local v10, "$i$f$synchronizedImpl":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 747
    .local v0, "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    :try_start_0
    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    .end local v9    # "$i$f$synchronized":I
    .end local v10    # "$i$f$synchronizedImpl":I
    monitor-exit v5

    return-object v7

    .line 749
    .restart local v0    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    .restart local v9    # "$i$f$synchronized":I
    .restart local v10    # "$i$f$synchronizedImpl":I
    :cond_0
    :try_start_1
    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v11

    .line 751
    .local v11, "wasCancelling":Z
    if-nez p1, :cond_1

    if-nez v11, :cond_3

    .line 752
    :cond_1
    if-nez v4, :cond_2

    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v12

    .line 1462
    .local v13, "it":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 752
    .local v14, "$i$a$-also-JobSupport$makeCancelling$1$notifyRootCause$1$causeException$1":I
    move-object v4, v13

    move-object v15, v12

    move-object v12, v4

    move-object v4, v15

    .end local v13    # "it":Ljava/lang/Throwable;
    .end local v14    # "$i$a$-also-JobSupport$makeCancelling$1$notifyRootCause$1$causeException$1":I
    goto :goto_1

    :cond_2
    move-object v12, v4

    .line 753
    .local v4, "causeException":Ljava/lang/Throwable;
    .local v12, "causeExceptionCache":Ljava/lang/Object;
    :goto_1
    :try_start_2
    move-object v13, v5

    check-cast v13, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v13, v4}, Lkotlinx/coroutines/JobSupport$Finishing;->addExceptionLocked(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v12

    .line 756
    .end local v12    # "causeExceptionCache":Ljava/lang/Object;
    .local v4, "causeExceptionCache":Ljava/lang/Object;
    :cond_3
    :try_start_3
    move-object v12, v5

    check-cast v12, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v12}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    .line 1462
    .restart local v13    # "it":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 756
    .local v14, "$i$a$-takeIf-JobSupport$makeCancelling$1$notifyRootCause$1$1":I
    if-nez v11, :cond_4

    const/4 v8, 0x1

    .end local v13    # "it":Ljava/lang/Throwable;
    .end local v14    # "$i$a$-takeIf-JobSupport$makeCancelling$1$notifyRootCause$1$1":I
    :cond_4
    if-eqz v8, :cond_5

    move-object v7, v12

    .line 1569
    .end local v0    # "$i$a$-synchronized-JobSupport$makeCancelling$1$notifyRootCause$1":I
    .end local v11    # "wasCancelling":Z
    :cond_5
    monitor-exit v5

    .line 1568
    .end local v10    # "$i$f$synchronizedImpl":I
    nop

    .line 746
    .end local v9    # "$i$f$synchronized":I
    move-object v0, v7

    .line 758
    .local v0, "notifyRootCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    move-object v7, v0

    .line 1462
    .local v7, "it":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 758
    .local v8, "$i$a$-let-JobSupport$makeCancelling$1$1":I
    move-object v9, v5

    check-cast v9, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v9}, Lkotlinx/coroutines/JobSupport$Finishing;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v9

    invoke-direct {v1, v9, v7}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 759
    .end local v7    # "it":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-let-JobSupport$makeCancelling$1$1":I
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    return-object v7

    .line 1569
    .end local v0    # "notifyRootCause":Ljava/lang/Throwable;
    .end local v4    # "causeExceptionCache":Ljava/lang/Object;
    .restart local v9    # "$i$f$synchronized":I
    .restart local v10    # "$i$f$synchronizedImpl":I
    .restart local v12    # "causeExceptionCache":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v4, v12

    goto :goto_2

    .end local v12    # "causeExceptionCache":Ljava/lang/Object;
    .restart local v4    # "causeExceptionCache":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v5

    throw v0

    .line 761
    .end local v9    # "$i$f$synchronized":I
    .end local v10    # "$i$f$synchronizedImpl":I
    :cond_7
    instance-of v0, v5, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_d

    .line 763
    if-nez v4, :cond_8

    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/JobSupport;->createCauseException(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    move-object v9, v0

    .line 1462
    .local v9, "it":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 763
    .local v10, "$i$a$-also-JobSupport$makeCancelling$1$causeException$1":I
    move-object v4, v9

    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    .end local v9    # "it":Ljava/lang/Throwable;
    .end local v10    # "$i$a$-also-JobSupport$makeCancelling$1$causeException$1":I
    goto :goto_3

    :cond_8
    move-object v0, v4

    .line 764
    .local v0, "causeExceptionCache":Ljava/lang/Object;
    .local v4, "causeException":Ljava/lang/Throwable;
    :goto_3
    move-object v9, v5

    check-cast v9, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v9}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 766
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/Incomplete;

    invoke-direct {v1, v7, v4}, Lkotlinx/coroutines/JobSupport;->tryMakeCancelling(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    return-object v7

    .line 779
    .end local v4    # "causeException":Ljava/lang/Throwable;
    :cond_9
    goto :goto_4

    .line 769
    .restart local v4    # "causeException":Ljava/lang/Throwable;
    :cond_a
    new-instance v9, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v10, 0x2

    invoke-direct {v9, v4, v8, v10, v7}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v5, v9}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 770
    .local v7, "finalState":Ljava/lang/Object;
    nop

    .line 771
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    if-eq v7, v8, :cond_c

    .line 772
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    if-eq v7, v8, :cond_b

    .line 773
    return-object v7

    .line 1564
    .end local v4    # "causeException":Ljava/lang/Throwable;
    .end local v5    # "state":Ljava/lang/Object;
    .end local v6    # "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    .end local v7    # "finalState":Ljava/lang/Object;
    :cond_b
    :goto_4
    move-object v4, v0

    goto/16 :goto_0

    .line 771
    .restart local v4    # "causeException":Ljava/lang/Throwable;
    .restart local v5    # "state":Ljava/lang/Object;
    .restart local v6    # "$i$a$-loopOnState-JobSupport$makeCancelling$1":I
    .restart local v7    # "finalState":Ljava/lang/Object;
    :cond_c
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot happen in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 777
    .end local v0    # "causeExceptionCache":Ljava/lang/Object;
    .end local v7    # "finalState":Ljava/lang/Object;
    .local v4, "causeExceptionCache":Ljava/lang/Object;
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private final makeNode(Lkotlinx/coroutines/InternalCompletionHandler;Z)Lkotlinx/coroutines/JobNode;
    .locals 5
    .param p1, "handler"    # Lkotlinx/coroutines/InternalCompletionHandler;
    .param p2, "onCancelling"    # Z

    .line 520
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 521
    instance-of v1, p1, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobCancellingNode;

    :cond_0
    if-nez v0, :cond_1

    .line 522
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancelling;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancelling;-><init>(Lkotlinx/coroutines/InternalCompletionHandler;)V

    check-cast v0, Lkotlinx/coroutines/JobCancellingNode;

    :cond_1
    check-cast v0, Lkotlinx/coroutines/JobNode;

    goto :goto_1

    .line 524
    :cond_2
    instance-of v1, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobNode;

    .line 525
    :cond_3
    if-eqz v0, :cond_6

    .line 524
    nop

    .line 525
    move-object v1, v0

    .line 1462
    .local v1, "it":Lkotlinx/coroutines/JobNode;
    const/4 v2, 0x0

    .line 525
    .local v2, "$i$a$-also-JobSupport$makeNode$node$1":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1462
    const/4 v3, 0x0

    .line 525
    .local v3, "$i$a$-assert-JobSupport$makeNode$node$1$1":I
    instance-of v4, v1, Lkotlinx/coroutines/JobCancellingNode;

    .end local v3    # "$i$a$-assert-JobSupport$makeNode$node$1$1":I
    xor-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    .end local v1    # "it":Lkotlinx/coroutines/JobNode;
    .end local v2    # "$i$a$-also-JobSupport$makeNode$node$1":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 526
    :cond_6
    new-instance v0, Lkotlinx/coroutines/InvokeOnCompletion;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCompletion;-><init>(Lkotlinx/coroutines/InternalCompletionHandler;)V

    check-cast v0, Lkotlinx/coroutines/JobNode;

    .line 520
    :goto_1
    nop

    .line 528
    .local v0, "node":Lkotlinx/coroutines/JobNode;
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobNode;->setJob(Lkotlinx/coroutines/JobSupport;)V

    .line 529
    return-object v0
.end method

.method private final nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 2
    .param p1, "$this$nextChild"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 951
    move-object v0, p1

    .line 952
    .local v0, "cur":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_0

    .line 953
    :cond_0
    nop

    .line 954
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    instance-of v1, v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ChildHandleNode;

    return-object v1

    .line 957
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/NodeList;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1
.end method

.method private final notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "list"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 328
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 329
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v4, 0x0

    .line 1477
    .local v4, "$i$f$notifyHandlers":I
    const/4 v0, 0x0

    .line 1478
    .local v0, "exception$iv":Ljava/lang/Object;
    move-object/from16 v5, p1

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v5, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v6, 0x0

    .line 1479
    .local v6, "$i$f$forEach":I
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v8, v7

    move-object v7, v0

    .line 1480
    .end local v0    # "exception$iv":Ljava/lang/Object;
    .local v7, "exception$iv":Ljava/lang/Object;
    .local v8, "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1481
    instance-of v0, v8, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v0, :cond_2

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/JobNode;

    .local v9, "node$iv":Lkotlinx/coroutines/JobNode;
    const/4 v10, 0x0

    .line 1482
    .local v10, "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    nop

    .line 1483
    :try_start_0
    invoke-virtual {v9, v2}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1484
    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 1485
    .local v0, "ex$iv":Ljava/lang/Throwable;
    move-object v11, v7

    check-cast v11, Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    move-object v12, v11

    .line 1486
    .local v12, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412$iv":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 1485
    .local v13, "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    invoke-static {v12, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v12    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412$iv":Ljava/lang/Throwable;
    .end local v13    # "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    if-nez v11, :cond_1

    :cond_0
    move-object v11, v3

    .local v11, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v12, 0x0

    .line 1487
    .local v12, "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    new-instance v13, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in completion handler "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v13

    .line 1488
    nop

    .line 1485
    .end local v11    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413$iv":Lkotlinx/coroutines/JobSupport;
    .end local v12    # "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1490
    .end local v0    # "ex$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 1481
    .end local v9    # "node$iv":Lkotlinx/coroutines/JobNode;
    .end local v10    # "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    nop

    .line 1491
    :cond_2
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v8

    goto :goto_0

    .line 1493
    :cond_3
    nop

    .line 1494
    .end local v5    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v0, v7

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 1486
    .local v0, "it$iv":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1494
    .local v5, "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1495
    .end local v0    # "it$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    :cond_4
    nop

    .line 331
    .end local v3    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .end local v4    # "$i$f$notifyHandlers":I
    .end local v7    # "exception$iv":Ljava/lang/Object;
    invoke-direct {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancelParent(Ljava/lang/Throwable;)Z

    .line 332
    return-void
.end method

.method private final notifyCompletion(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 15
    .param p1, "$this$notifyCompletion"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 361
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v2, 0x0

    .line 1496
    .local v2, "$i$f$notifyHandlers":I
    const/4 v0, 0x0

    .line 1497
    .local v0, "exception$iv":Ljava/lang/Object;
    move-object/from16 v3, p1

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v3, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v4, 0x0

    .line 1498
    .local v4, "$i$f$forEach":I
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v6, v5

    move-object v5, v0

    .line 1499
    .end local v0    # "exception$iv":Ljava/lang/Object;
    .local v5, "exception$iv":Ljava/lang/Object;
    .local v6, "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1500
    instance-of v0, v6, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_2

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/JobNode;

    .local v7, "node$iv":Lkotlinx/coroutines/JobNode;
    const/4 v8, 0x0

    .line 1501
    .local v8, "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    nop

    .line 1502
    move-object/from16 v9, p2

    :try_start_0
    invoke-virtual {v7, v9}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1503
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 1504
    .local v0, "ex$iv":Ljava/lang/Throwable;
    move-object v10, v5

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    move-object v11, v10

    .line 1505
    .local v11, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412$iv":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 1504
    .local v12, "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v11    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412$iv":Ljava/lang/Throwable;
    .end local v12    # "$i$a$-apply-JobSupport$notifyHandlers$1$1$iv":I
    if-nez v10, :cond_1

    :cond_0
    move-object v10, v1

    .local v10, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v11, 0x0

    .line 1506
    .local v11, "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    new-instance v12, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in completion handler "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v12

    .line 1507
    nop

    .line 1504
    .end local v10    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413$iv":Lkotlinx/coroutines/JobSupport;
    .end local v11    # "$i$a$-run-JobSupport$notifyHandlers$1$2$iv":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1509
    .end local v0    # "ex$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .end local v7    # "node$iv":Lkotlinx/coroutines/JobNode;
    .end local v8    # "$i$a$-forEach-JobSupport$notifyHandlers$1$iv":I
    goto :goto_2

    .line 1500
    :cond_2
    move-object/from16 v9, p2

    :goto_2
    nop

    .line 1510
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v6

    goto :goto_0

    .line 1512
    :cond_3
    move-object/from16 v9, p2

    .line 1513
    .end local v3    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v4    # "$i$f$forEach":I
    .end local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v0, v5

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 1505
    .local v0, "it$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1513
    .local v3, "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 1514
    .end local v0    # "it$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$notifyHandlers$2$iv":I
    :cond_4
    nop

    .line 361
    .end local v1    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .end local v2    # "$i$f$notifyHandlers":I
    .end local v5    # "exception$iv":Ljava/lang/Object;
    return-void
.end method

.method private final synthetic notifyHandlers(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "list"    # Lkotlinx/coroutines/NodeList;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/JobNode;",
            ">(",
            "Lkotlinx/coroutines/NodeList;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 364
    .local v0, "$i$f$notifyHandlers":I
    const/4 v1, 0x0

    .line 365
    .local v1, "exception":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v2, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v3, 0x0

    .line 1515
    .local v3, "$i$f$forEach":I
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1516
    .local v4, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1517
    const/4 v5, 0x3

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v5, v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/JobNode;

    .local v5, "node":Lkotlinx/coroutines/JobNode;
    const/4 v6, 0x0

    .line 366
    .local v6, "$i$a$-forEach-JobSupport$notifyHandlers$1":I
    nop

    .line 367
    :try_start_0
    invoke-virtual {v5, p2}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 368
    :catchall_0
    move-exception v7

    .line 369
    .local v7, "ex":Ljava/lang/Throwable;
    move-object v8, v1

    check-cast v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_0

    move-object v9, v8

    check-cast v9, Ljava/lang/Throwable;

    .line 1462
    .local v9, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 369
    .local v10, "$i$a$-apply-JobSupport$notifyHandlers$1$1":I
    invoke-static {v9, v7}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v9    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2412":Ljava/lang/Throwable;
    .end local v10    # "$i$a$-apply-JobSupport$notifyHandlers$1$1":I
    move-object v9, v8

    check-cast v9, Ljava/lang/Throwable;

    if-nez v8, :cond_1

    :cond_0
    move-object v8, p0

    check-cast v8, Lkotlinx/coroutines/JobSupport;

    .local v8, "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413":Lkotlinx/coroutines/JobSupport;
    const/4 v9, 0x0

    .line 370
    .local v9, "$i$a$-run-JobSupport$notifyHandlers$1$2":I
    new-instance v10, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in completion handler "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v10

    .line 371
    nop

    .line 369
    .end local v8    # "$this$notifyHandlers_u24lambda_u2414_u24lambda_u2413":Lkotlinx/coroutines/JobSupport;
    .end local v9    # "$i$a$-run-JobSupport$notifyHandlers$1$2":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 1517
    .end local v5    # "node":Lkotlinx/coroutines/JobNode;
    .end local v6    # "$i$a$-forEach-JobSupport$notifyHandlers$1":I
    nop

    .line 1518
    :cond_2
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    goto :goto_0

    .line 1520
    :cond_3
    nop

    .line 374
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Throwable;

    .line 1462
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 374
    .local v3, "$i$a$-let-JobSupport$notifyHandlers$2":I
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    .line 375
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$notifyHandlers$2":I
    :cond_4
    return-void
.end method

.method private final onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .line 1272
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_0

    .line 1273
    return-object p2

    .line 1272
    :cond_0
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw v0
.end method

.method private final onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 8
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1257
    nop

    :cond_0
    nop

    .line 1258
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1259
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_2

    .line 1260
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1261
    .local v1, "result":Ljava/lang/Object;
    :goto_0
    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 1262
    return-void

    .line 1264
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1266
    .end local v0    # "state":Ljava/lang/Object;
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/InternalCompletionHandler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 1267
    .local v0, "disposableHandle":Lkotlinx/coroutines/DisposableHandle;
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V

    .line 1268
    return-void
.end method

.method private final promoteEmptyToNodeList(Lkotlinx/coroutines/Empty;)V
    .locals 3
    .param p1, "state"    # Lkotlinx/coroutines/Empty;

    .line 537
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    .line 538
    .local v0, "list":Lkotlinx/coroutines/NodeList;
    invoke-virtual {p1}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/InactiveNodeList;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/InactiveNodeList;-><init>(Lkotlinx/coroutines/NodeList;)V

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    .local v1, "update":Lkotlinx/coroutines/Incomplete;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 539
    invoke-static {v2, p0, p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method private final promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V
    .locals 2
    .param p1, "state"    # Lkotlinx/coroutines/JobNode;

    .line 544
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobNode;->addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 546
    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .local v0, "list":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 548
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method private final registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 7
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->joinInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 582
    return-void

    .line 584
    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/InternalCompletionHandler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 585
    .local v0, "disposableHandle":Lkotlinx/coroutines/DisposableHandle;
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V

    .line 586
    return-void
.end method

.method private final synthetic set_parentHandle$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_state$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final startInternal(Ljava/lang/Object;)I
    .locals 4
    .param p1, "state"    # Ljava/lang/Object;

    .line 391
    nop

    .line 392
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 393
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Empty;

    invoke-virtual {v0}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 394
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 395
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->onStart()V

    .line 396
    return v2

    .line 398
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/InactiveNodeList;

    if-eqz v0, :cond_4

    .line 399
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/InactiveNodeList;

    invoke-virtual {v3}, Lkotlinx/coroutines/InactiveNodeList;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 400
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->onStart()V

    .line 401
    return v2

    .line 403
    :cond_4
    return v3
.end method

.method private final stateString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .line 1071
    nop

    .line 1072
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v1, "Active"

    if-eqz v0, :cond_2

    .line 1073
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 1074
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "Completing"

    goto :goto_0

    .line 1075
    :cond_1
    goto :goto_0

    .line 1077
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "New"

    goto :goto_0

    .line 1078
    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_5

    const-string v1, "Cancelled"

    goto :goto_0

    .line 1079
    :cond_5
    const-string v1, "Completed"

    .line 1080
    :goto_0
    return-object v1
.end method

.method public static synthetic toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    .line 422
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final tryFinalizeSimpleState(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "update"    # Ljava/lang/Object;

    .line 289
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1462
    const/4 v0, 0x0

    .line 289
    .local v0, "$i$a$-assert-JobSupport$tryFinalizeSimpleState$1":I
    instance-of v3, p1, Lkotlinx/coroutines/Empty;

    if-nez v3, :cond_1

    instance-of v3, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .end local v0    # "$i$a$-assert-JobSupport$tryFinalizeSimpleState$1":I
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1462
    const/4 v0, 0x0

    .line 290
    .local v0, "$i$a$-assert-JobSupport$tryFinalizeSimpleState$2":I
    instance-of v3, p2, Lkotlinx/coroutines/CompletedExceptionally;

    .end local v0    # "$i$a$-assert-JobSupport$tryFinalizeSimpleState$2":I
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_5
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->boxIncomplete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 292
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->onCancelling(Ljava/lang/Throwable;)V

    .line 293
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->onCompletionInternal(Ljava/lang/Object;)V

    .line 294
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->completeStateFinalization(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V

    .line 295
    return v2
.end method

.method private final tryMakeCancelling(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 798
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1462
    const/4 v0, 0x0

    .line 798
    .local v0, "$i$a$-assert-JobSupport$tryMakeCancelling$1":I
    instance-of v2, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    .end local v0    # "$i$a$-assert-JobSupport$tryMakeCancelling$1":I
    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 799
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1462
    const/4 v0, 0x0

    .line 799
    .local v0, "$i$a$-assert-JobSupport$tryMakeCancelling$2":I
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    .end local v0    # "$i$a$-assert-JobSupport$tryMakeCancelling$2":I
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 801
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    return v2

    .line 803
    .local v0, "list":Lkotlinx/coroutines/NodeList;
    :cond_4
    new-instance v3, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    .line 804
    .local v3, "cancelling":Lkotlinx/coroutines/JobSupport$Finishing;
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    .line 806
    :cond_5
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 807
    return v1
.end method

.method private final tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .line 858
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-nez v0, :cond_0

    .line 859
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0

    .line 866
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_3

    .line 867
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->tryFinalizeSimpleState(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    return-object p2

    .line 871
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0

    .line 874
    :cond_3
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->tryMakeCompletingSlowPath(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final tryMakeCompletingSlowPath(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "state"    # Lkotlinx/coroutines/Incomplete;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;

    .line 884
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->getOrPromoteCancellingList(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0

    .line 888
    .local v0, "list":Lkotlinx/coroutines/NodeList;
    :cond_0
    instance-of v1, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    .line 890
    .local v1, "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 891
    .local v4, "notifyRootCause":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v5, 0x0

    .line 1574
    .local v5, "$i$f$synchronized":I
    nop

    .line 1577
    const/4 v6, 0x0

    .line 1578
    .local v6, "$i$f$synchronizedImpl":I
    monitor-enter v1

    const/4 v7, 0x0

    .line 893
    .local v7, "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    :try_start_0
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "$i$f$synchronized":I
    .end local v6    # "$i$f$synchronizedImpl":I
    .end local v7    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    monitor-exit v1

    return-object v2

    .line 895
    .restart local v5    # "$i$f$synchronized":I
    .restart local v6    # "$i$f$synchronizedImpl":I
    .restart local v7    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    :cond_3
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v1, v8}, Lkotlinx/coroutines/JobSupport$Finishing;->setCompleting(Z)V

    .line 899
    if-eq v1, p1, :cond_4

    .line 900
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    invoke-static {v9, p0, p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "$i$f$synchronized":I
    .end local v6    # "$i$f$synchronizedImpl":I
    .end local v7    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    monitor-exit v1

    return-object v2

    .line 903
    .restart local v5    # "$i$f$synchronized":I
    .restart local v6    # "$i$f$synchronizedImpl":I
    .restart local v7    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    :cond_4
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1462
    const/4 v9, 0x0

    .line 903
    .local v9, "$i$a$-assert-JobSupport$tryMakeCompletingSlowPath$1$1":I
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->isSealed()Z

    move-result v10

    .end local v9    # "$i$a$-assert-JobSupport$tryMakeCompletingSlowPath$1$1":I
    xor-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "list":Lkotlinx/coroutines/NodeList;
    .end local v1    # "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    .end local v4    # "notifyRootCause":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "$i$f$synchronized":I
    .end local v6    # "$i$f$synchronizedImpl":I
    .end local p1    # "state":Lkotlinx/coroutines/Incomplete;
    .end local p2    # "proposedUpdate":Ljava/lang/Object;
    throw v2

    .line 905
    .restart local v0    # "list":Lkotlinx/coroutines/NodeList;
    .restart local v1    # "finishing":Lkotlinx/coroutines/JobSupport$Finishing;
    .restart local v4    # "notifyRootCause":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "$i$f$synchronized":I
    .restart local v6    # "$i$f$synchronizedImpl":I
    .restart local p1    # "state":Lkotlinx/coroutines/Incomplete;
    .restart local p2    # "proposedUpdate":Ljava/lang/Object;
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v9

    .line 906
    .local v9, "wasCancelling":Z
    instance-of v10, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v10, :cond_7

    move-object v10, p2

    check-cast v10, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_2

    :cond_7
    move-object v10, v2

    :goto_2
    if-eqz v10, :cond_8

    .line 1462
    .local v10, "it":Lkotlinx/coroutines/CompletedExceptionally;
    const/4 v11, 0x0

    .line 906
    .local v11, "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$1$2":I
    iget-object v12, v10, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1, v12}, Lkotlinx/coroutines/JobSupport$Finishing;->addExceptionLocked(Ljava/lang/Throwable;)V

    .line 908
    .end local v10    # "it":Lkotlinx/coroutines/CompletedExceptionally;
    .end local v11    # "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$1$2":I
    :cond_8
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 1462
    move-object v11, v10

    .local v11, "it":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 908
    .local v12, "$i$a$-takeIf-JobSupport$tryMakeCompletingSlowPath$1$3":I
    if-nez v9, :cond_9

    move v3, v8

    .end local v11    # "it":Ljava/lang/Throwable;
    .end local v12    # "$i$a$-takeIf-JobSupport$tryMakeCompletingSlowPath$1$3":I
    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v2, v10

    :cond_a
    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 909
    nop

    .end local v7    # "$i$a$-synchronized-JobSupport$tryMakeCompletingSlowPath$1":I
    .end local v9    # "wasCancelling":Z
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1578
    monitor-exit v1

    .line 1577
    .end local v6    # "$i$f$synchronizedImpl":I
    nop

    .line 911
    .end local v5    # "$i$f$synchronized":I
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_b

    .line 1462
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 911
    .local v3, "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$2":I
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/JobSupport;->notifyCancelling(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 913
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$tryMakeCompletingSlowPath$2":I
    :cond_b
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->firstChild(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v2

    .line 914
    .local v2, "child":Lkotlinx/coroutines/ChildHandleNode;
    if-eqz v2, :cond_c

    invoke-direct {p0, v1, v2, p2}, Lkotlinx/coroutines/JobSupport;->tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 915
    sget-object v3, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    return-object v3

    .line 917
    :cond_c
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/JobSupport;->finalizeFinishingState(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1578
    .end local v2    # "child":Lkotlinx/coroutines/ChildHandleNode;
    .restart local v5    # "$i$f$synchronized":I
    .restart local v6    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private final tryWaitForChild(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "state"    # Lkotlinx/coroutines/JobSupport$Finishing;
    .param p2, "child"    # Lkotlinx/coroutines/ChildHandleNode;
    .param p3, "proposedUpdate"    # Ljava/lang/Object;

    .line 929
    nop

    :goto_0
    iget-object v0, p2, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    .line 930
    const/4 v3, 0x0

    .line 931
    new-instance v0, Lkotlinx/coroutines/JobSupport$ChildCompletion;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$ChildCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/InternalCompletionHandler;

    .line 929
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 933
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 934
    :cond_0
    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->nextChild(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 935
    .local v1, "nextChild":Lkotlinx/coroutines/ChildHandleNode;
    :cond_1
    move-object p2, v1

    .end local v0    # "handle":Lkotlinx/coroutines/DisposableHandle;
    .end local v1    # "nextChild":Lkotlinx/coroutines/ChildHandleNode;
    goto :goto_0
.end method


# virtual methods
.method protected afterCompletion(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .line 1057
    return-void
.end method

.method public final attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .locals 6
    .param p1, "child"    # Lkotlinx/coroutines/ChildJob;

    .line 981
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/ChildHandleNode;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/ChildHandleNode;-><init>(Lkotlinx/coroutines/ChildJob;)V

    check-cast v3, Lkotlinx/coroutines/InternalCompletionHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlinx/coroutines/InternalCompletionHandler;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    return-object v0
.end method

.method protected final awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1220
    nop

    :cond_0
    nop

    .line 1221
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1222
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    .line 1224
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_3

    .line 1225
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v1, "exception$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1579
    .local v2, "$i$f$recoverAndThrow":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1580
    move-object v3, p1

    .local v3, "it$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 1581
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    instance-of v5, v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v5, :cond_1

    throw v1

    .line 1582
    :cond_1
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v5}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v5

    throw v5

    .line 1579
    .end local v3    # "it$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    :cond_2
    throw v1

    .line 1227
    .end local v1    # "exception$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$recoverAndThrow":I
    :cond_3
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1230
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1232
    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 22
    invoke-static {p0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 6
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 628
    if-nez p1, :cond_0

    .line 1555
    const/4 v0, 0x0

    .local v0, "message$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1556
    .local v2, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-direct {v3, v4, v1, v5}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "message$iv":Ljava/lang/String;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    check-cast v3, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    .line 628
    :cond_0
    move-object v3, p1

    .line 1556
    :goto_0
    check-cast v3, Ljava/lang/Throwable;

    .line 628
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)V

    .line 629
    return-void
.end method

.method public synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 637
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1557
    :cond_0
    const/4 v1, 0x0

    .local v1, "message$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "cause$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1558
    .local v3, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v4, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/Job;

    invoke-direct {v4, v5, v2, v6}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v1    # "message$iv":Ljava/lang/String;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    move-object v1, v4

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_1
    check-cast v1, Ljava/lang/Throwable;

    .line 637
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)V

    .line 638
    return v0
.end method

.method public final cancelCoroutine(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 669
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Object;

    .line 674
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .line 675
    .local v0, "finalState":Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getOnCancelComplete$kotlinx_coroutines_core()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 678
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelMakeCompleting(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 679
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    return v2

    .line 681
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 682
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCancelling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 684
    :cond_1
    nop

    .line 685
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 686
    :cond_2
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 687
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getTOO_LATE_TO_CANCEL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 689
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->afterCompletion(Ljava/lang/Object;)V

    .line 690
    nop

    .line 684
    :goto_0
    return v2
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 643
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method protected cancellationExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 631
    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 661
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final defaultCancellationException$kotlinx_coroutines_core(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 714
    .local v0, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/Job;

    invoke-direct {v1, v2, p2, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object v1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->fold(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->get(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    return-object v0
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 414
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is cancelling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lkotlinx/coroutines/JobSupport;->toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 418
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v2}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    goto :goto_0

    .line 419
    :cond_2
    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has completed normally"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v1, v3, v2, v4}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v1, Ljava/util/concurrent/CancellationException;

    .line 420
    .end local v0    # "state":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 417
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 718
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 719
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 720
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 721
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_0

    .line 722
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    .line 723
    move-object v1, v2

    .line 719
    :goto_0
    nop

    .line 725
    .local v1, "rootCause":Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->stateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v2, v3, v1, v4}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_3
    return-object v2

    .line 722
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getChildren()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation

    .line 961
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 968
    return-object v0
.end method

.method public final getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .line 1209
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1210
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1211
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_0

    .line 1212
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1211
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw v1

    .line 1462
    :cond_1
    const/4 v1, 0x0

    .line 1210
    .local v1, "$i$a$-check-JobSupport$getCompletedInternal$1":I
    nop

    .end local v1    # "$i$a$-check-JobSupport$getCompletedInternal$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This job has not completed yet"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final getCompletionCause()Ljava/lang/Throwable;
    .locals 4

    .line 432
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 433
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 436
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_0

    .line 437
    :cond_2
    const/4 v1, 0x0

    .line 438
    .end local v0    # "state":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 435
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final getCompletionCauseHandled()Z
    .locals 3

    .line 444
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1462
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$a$-let-JobSupport$completionCauseHandled$1":I
    instance-of v2, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/CompletedExceptionally;->getHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-JobSupport$completionCauseHandled$1":I
    :goto_0
    return v2
.end method

.method public final getCompletionExceptionOrNull()Ljava/lang/Throwable;
    .locals 3

    .line 1200
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1201
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1202
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 1462
    :cond_0
    const/4 v1, 0x0

    .line 1201
    .local v1, "$i$a$-check-JobSupport$getCompletionExceptionOrNull$1":I
    nop

    .end local v1    # "$i$a$-check-JobSupport$getCompletionExceptionOrNull$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This job has not completed yet"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 1

    .line 1026
    const/4 v0, 0x1

    return v0
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 24
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    return-object v0
.end method

.method protected final getOnAwaitInternal()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "*>;"
        }
    .end annotation

    .line 1249
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1250
    nop

    .line 1251
    sget-object v0, Lkotlinx/coroutines/JobSupport$onAwaitInternal$1;->INSTANCE:Lkotlinx/coroutines/JobSupport$onAwaitInternal$1;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1252
    sget-object v0, Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;->INSTANCE:Lkotlinx/coroutines/JobSupport$onAwaitInternal$2;

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 1249
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1253
    return-object v7
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 1

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public final getOnJoin()Lkotlinx/coroutines/selects/SelectClause0;
    .locals 7

    .line 573
    new-instance v6, Lkotlinx/coroutines/selects/SelectClause0Impl;

    .line 574
    nop

    .line 575
    sget-object v0, Lkotlinx/coroutines/JobSupport$onJoin$1;->INSTANCE:Lkotlinx/coroutines/JobSupport$onJoin$1;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 573
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/selects/SelectClause0Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lkotlinx/coroutines/selects/SelectClause0;

    .line 576
    return-object v6
.end method

.method public getParent()Lkotlinx/coroutines/Job;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 5

    .line 164
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .local v0, "handler$atomicfu$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/JobSupport;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 166
    .local v3, "$i$a$-loop$atomicfu-JobSupport$state$1":I
    instance-of v4, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v4, :cond_0

    return-object v2

    .line 167
    :cond_0
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    nop

    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop$atomicfu-JobSupport$state$1":I
    goto :goto_0
.end method

.method protected handleJobException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnCompletionException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 991
    throw p1
.end method

.method protected final initParentJob(Lkotlinx/coroutines/Job;)V
    .locals 2
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    .line 142
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    const/4 v0, 0x0

    .line 142
    .local v0, "$i$a$-assert-JobSupport$initParentJob$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-JobSupport$initParentJob$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 144
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->setParentHandle$kotlinx_coroutines_core(Lkotlinx/coroutines/ChildHandle;)V

    .line 145
    return-void

    .line 147
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    .line 149
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ChildJob;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    .line 150
    .local v0, "handle":Lkotlinx/coroutines/ChildHandle;
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->setParentHandle$kotlinx_coroutines_core(Lkotlinx/coroutines/ChildHandle;)V

    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->dispose()V

    .line 154
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/ChildHandle;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->setParentHandle$kotlinx_coroutines_core(Lkotlinx/coroutines/ChildHandle;)V

    .line 156
    :cond_4
    return-void
.end method

.method public final invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 3
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    .line 447
    nop

    .line 448
    nop

    .line 449
    nop

    .line 450
    new-instance v0, Lkotlinx/coroutines/InternalCompletionHandler$UserSupplied;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InternalCompletionHandler$UserSupplied;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/InternalCompletionHandler;

    .line 447
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletionInternal$kotlinx_coroutines_core(ZZLkotlinx/coroutines/InternalCompletionHandler;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 451
    return-object v0
.end method

.method public final invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1
    .param p1, "onCancelling"    # Z
    .param p2, "invokeImmediately"    # Z
    .param p3, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    .line 454
    nop

    .line 455
    nop

    .line 456
    nop

    .line 457
    new-instance v0, Lkotlinx/coroutines/InternalCompletionHandler$UserSupplied;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/InternalCompletionHandler$UserSupplied;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/InternalCompletionHandler;

    .line 454
    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletionInternal$kotlinx_coroutines_core(ZZLkotlinx/coroutines/InternalCompletionHandler;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 458
    return-object v0
.end method

.method public final invokeOnCompletionInternal$kotlinx_coroutines_core(ZZLkotlinx/coroutines/InternalCompletionHandler;)Lkotlinx/coroutines/DisposableHandle;
    .locals 12
    .param p1, "onCancelling"    # Z
    .param p2, "invokeImmediately"    # Z
    .param p3, "handler"    # Lkotlinx/coroutines/InternalCompletionHandler;

    .line 467
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->makeNode(Lkotlinx/coroutines/InternalCompletionHandler;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v0

    .line 468
    .local v0, "node":Lkotlinx/coroutines/JobNode;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v2, 0x0

    .line 1524
    .local v2, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1525
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v3

    .local v3, "state":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 469
    .local v4, "$i$a$-loopOnState-JobSupport$invokeOnCompletionInternal$1":I
    nop

    .line 470
    instance-of v5, v3, Lkotlinx/coroutines/Empty;

    if-eqz v5, :cond_1

    .line 471
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Empty;

    invoke-virtual {v5}, Lkotlinx/coroutines/Empty;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-static {v5, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/DisposableHandle;

    return-object v5

    .line 475
    :cond_0
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Empty;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/JobSupport;->promoteEmptyToNodeList(Lkotlinx/coroutines/Empty;)V

    goto/16 :goto_2

    .line 477
    :cond_1
    instance-of v5, v3, Lkotlinx/coroutines/Incomplete;

    if-eqz v5, :cond_b

    .line 478
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v5}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v5

    .line 479
    .local v5, "list":Lkotlinx/coroutines/NodeList;
    if-nez v5, :cond_2

    .line 480
    const-string/jumbo v6, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/JobNode;

    invoke-direct {p0, v6}, Lkotlinx/coroutines/JobSupport;->promoteSingleToNodeList(Lkotlinx/coroutines/JobNode;)V

    goto :goto_2

    .line 482
    :cond_2
    const/4 v6, 0x0

    .line 483
    .local v6, "rootCause":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "handle":Ljava/lang/Object;
    sget-object v7, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    .line 484
    if-eqz p1, :cond_7

    instance-of v8, v3, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v8, :cond_7

    .line 485
    const/4 v8, 0x0

    .line 1526
    .local v8, "$i$f$synchronized":I
    nop

    .line 1529
    const/4 v9, 0x0

    .line 1530
    .local v9, "$i$f$synchronizedImpl":I
    monitor-enter v3

    const/4 v10, 0x0

    .line 487
    .local v10, "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    :try_start_0
    move-object v11, v3

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v11

    move-object v6, v11

    .line 490
    if-eqz v6, :cond_3

    instance-of v11, p3, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v11, :cond_6

    move-object v11, v3

    check-cast v11, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v11}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v11

    if-nez v11, :cond_6

    .line 492
    :cond_3
    invoke-direct {p0, v3, v5, v0}, Lkotlinx/coroutines/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    .end local v8    # "$i$f$synchronized":I
    .end local v9    # "$i$f$synchronizedImpl":I
    .end local v10    # "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    monitor-exit v3

    goto :goto_3

    .line 494
    .restart local v8    # "$i$f$synchronized":I
    .restart local v9    # "$i$f$synchronizedImpl":I
    .restart local v10    # "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    :cond_4
    if-nez v6, :cond_5

    :try_start_1
    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/DisposableHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8    # "$i$f$synchronized":I
    .end local v9    # "$i$f$synchronizedImpl":I
    .end local v10    # "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    monitor-exit v3

    return-object v11

    .line 496
    .restart local v8    # "$i$f$synchronized":I
    .restart local v9    # "$i$f$synchronizedImpl":I
    .restart local v10    # "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    :cond_5
    move-object v7, v0

    .line 498
    :cond_6
    nop

    .end local v10    # "$i$a$-synchronized-JobSupport$invokeOnCompletionInternal$1$1":I
    :try_start_2
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    monitor-exit v3

    .line 1529
    .end local v9    # "$i$f$synchronizedImpl":I
    goto :goto_1

    .line 1530
    .restart local v9    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v10

    monitor-exit v3

    throw v10

    .line 500
    .end local v8    # "$i$f$synchronized":I
    .end local v9    # "$i$f$synchronizedImpl":I
    :cond_7
    :goto_1
    if-eqz v6, :cond_9

    .line 502
    if-eqz p2, :cond_8

    invoke-interface {p3, v6}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V

    .line 503
    :cond_8
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/DisposableHandle;

    return-object v8

    .line 505
    :cond_9
    invoke-direct {p0, v3, v5, v0}, Lkotlinx/coroutines/JobSupport;->addLastAtomic(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/DisposableHandle;

    return-object v8

    .line 516
    .end local v5    # "list":Lkotlinx/coroutines/NodeList;
    .end local v6    # "rootCause":Ljava/lang/Object;
    .end local v7    # "handle":Ljava/lang/Object;
    :cond_a
    :goto_2
    nop

    .line 1525
    .end local v3    # "state":Ljava/lang/Object;
    .end local v4    # "$i$a$-loopOnState-JobSupport$invokeOnCompletionInternal$1":I
    :goto_3
    goto/16 :goto_0

    .line 512
    .restart local v3    # "state":Ljava/lang/Object;
    .restart local v4    # "$i$a$-loopOnState-JobSupport$invokeOnCompletionInternal$1":I
    :cond_b
    if-eqz p2, :cond_e

    instance-of v5, v3, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_4

    :cond_c
    move-object v5, v6

    :goto_4
    if-eqz v5, :cond_d

    iget-object v6, v5, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_d
    invoke-interface {p3, v6}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V

    .line 513
    :cond_e
    sget-object v5, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v5, Lkotlinx/coroutines/DisposableHandle;

    return-object v5
.end method

.method public isActive()Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCancelled()Z
    .locals 2

    .line 188
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final isCompleted()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isCompletedExceptionally()Z
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CompletedExceptionally;

    return v0
.end method

.method protected isScopedCoroutine()Z
    .locals 1

    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public final join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 552
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->joinInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 554
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 556
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->joinSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    .line 816
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1570
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1571
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 817
    .local v3, "$i$a$-loopOnState-JobSupport$makeCompleting$1":I
    invoke-direct {p0, v2, p1}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 818
    .local v4, "finalState":Ljava/lang/Object;
    nop

    .line 819
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v5, 0x0

    return v5

    .line 820
    :cond_0
    sget-object v5, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    return v6

    .line 821
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 823
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->afterCompletion(Ljava/lang/Object;)V

    .line 824
    return v6

    .line 1571
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$makeCompleting$1":I
    .end local v4    # "finalState":Ljava/lang/Object;
    :cond_2
    goto :goto_0
.end method

.method public final makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    .line 838
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1572
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1573
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 839
    .local v3, "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    invoke-direct {p0, v2, p1}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 840
    .local v4, "finalState":Ljava/lang/Object;
    nop

    .line 841
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_ALREADY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 846
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getCOMPLETING_RETRY$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 847
    return-object v4

    .line 1573
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    .end local v4    # "finalState":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 842
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$makeCompletingOnce$1":I
    .restart local v4    # "finalState":Ljava/lang/Object;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Job "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already complete or completing, but is being completed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 844
    nop

    .line 843
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->getExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    .line 842
    invoke-direct {v5, v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->minusKey(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 1

    .line 1069
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelling(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1009
    return-void
.end method

.method protected onCompletionInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .line 1048
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 411
    return-void
.end method

.method public final parentCancelled(Lkotlinx/coroutines/ParentJob;)V
    .locals 0
    .param p1, "parentJob"    # Lkotlinx/coroutines/ParentJob;

    .line 648
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 22
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p1, "other"    # Lkotlinx/coroutines/Job;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/JobNode;)V
    .locals 6
    .param p1, "node"    # Lkotlinx/coroutines/JobNode;

    .line 601
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1553
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1554
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 602
    .local v3, "$i$a$-loopOnState-JobSupport$removeNode$1":I
    nop

    .line 603
    instance-of v4, v2, Lkotlinx/coroutines/JobNode;

    if-eqz v4, :cond_2

    .line 604
    if-eq v2, p1, :cond_0

    return-void

    .line 606
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_state$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getEMPTY_ACTIVE$p()Lkotlinx/coroutines/Empty;

    move-result-object v5

    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 615
    :cond_1
    nop

    .line 1554
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$removeNode$1":I
    goto :goto_0

    .line 608
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$removeNode$1":I
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v4, :cond_4

    .line 610
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v4}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->remove()Z

    .line 611
    :cond_3
    return-void

    .line 613
    :cond_4
    return-void
.end method

.method public final setParentHandle$kotlinx_coroutines_core(Lkotlinx/coroutines/ChildHandle;)V
    .locals 1
    .param p1, "value"    # Lkotlinx/coroutines/ChildHandle;

    invoke-static {}, Lkotlinx/coroutines/JobSupport;->get_parentHandle$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final start()Z
    .locals 5

    .line 378
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1521
    .local v1, "$i$f$loopOnState":I
    :goto_0
    nop

    .line 1522
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 379
    .local v3, "$i$a$-loopOnState-JobSupport$start$1":I
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 383
    nop

    .line 1522
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loopOnState-JobSupport$start$1":I
    goto :goto_0

    .line 381
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loopOnState-JobSupport$start$1":I
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 380
    :pswitch_1
    const/4 v4, 0x0

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final toCancellationException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 5
    .param p1, "$this$toCancellationException"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .line 423
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/JobSupport;
    const/4 v1, 0x0

    .line 1523
    .local v1, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v2, v3, p1, v4}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "this_$iv":Lkotlinx/coroutines/JobSupport;
    .end local v1    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 423
    :cond_2
    return-object v0
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 2

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->stateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
