.class public final Landroidx/compose/runtime/SlotWriter;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SlotWriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 6 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,3745:1\n4178#2,5:3746\n4178#2,5:3751\n4178#2,5:3756\n4178#2,5:3761\n4178#2,5:3774\n4178#2,5:3779\n4178#2,5:3784\n4178#2,5:3789\n4178#2,5:3794\n4178#2,5:3799\n4178#2,5:3804\n4178#2,5:3809\n4178#2,5:3814\n4178#2,5:3819\n4178#2,5:3824\n4178#2,5:3829\n4178#2,5:3834\n4178#2,5:3839\n4178#2,5:3866\n4178#2,5:3871\n4178#2,5:3876\n1#3:3766\n361#4,7:3767\n166#5,8:3844\n166#5,8:3852\n3616#6,6:3860\n33#7,6:3881\n82#7,3:3887\n33#7,4:3890\n85#7,2:3894\n38#7:3896\n87#7:3897\n231#7,3:3898\n64#7,4:3901\n234#7,2:3905\n69#7:3907\n236#7:3908\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1526#1:3746,5\n1550#1:3751,5\n1563#1:3756,5\n1566#1:3761,5\n1649#1:3774,5\n1670#1:3779,5\n1717#1:3784,5\n1722#1:3789,5\n1762#1:3794,5\n1773#1:3799,5\n1903#1:3804,5\n1967#1:3809,5\n1972#1:3814,5\n2004#1:3819,5\n2064#1:3824,5\n2065#1:3829,5\n2078#1:3834,5\n2172#1:3839,5\n2735#1:3866,5\n2747#1:3871,5\n2957#1:3876,5\n1611#1:3767,7\n2479#1:3844,8\n2520#1:3852,8\n2540#1:3860,6\n3058#1:3881,6\n3228#1:3887,3\n3228#1:3890,4\n3228#1:3894,2\n3228#1:3896\n3228#1:3897\n3231#1:3898,3\n3231#1:3901,4\n3231#1:3905,2\n3231#1:3907\n3231#1:3908\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00af\u00012\u00020\u0001:\u0002\u00af\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\nJ\u0010\u00109\u001a\u00020\u00072\u0008\u0008\u0002\u0010:\u001a\u00020\nJ\u000e\u0010;\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0007J\u0006\u0010<\u001a\u000207J\u0006\u0010=\u001a\u000207J\u0010\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\nH\u0002J\u0008\u0010@\u001a\u000207H\u0002J\u0006\u0010A\u001a\u000207J\u0010\u0010B\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\nH\u0002J\u0010\u0010C\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\nH\u0002J \u0010D\u001a\u00020\n2\u0006\u00109\u001a\u00020\n2\u0006\u0010E\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010F\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010G\u001a\u00020\n2\u0006\u0010F\u001a\u00020\nH\u0002J(\u0010H\u001a\u00020\n2\u0006\u0010:\u001a\u00020\n2\u0006\u0010I\u001a\u00020\n2\u0006\u0010E\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010J\u001a\u00020\nJ\u0006\u0010K\u001a\u000207J\u000e\u0010L\u001a\u0002072\u0006\u00109\u001a\u00020\u0007J\u000e\u0010L\u001a\u0002072\u0006\u0010:\u001a\u00020\nJ \u0010M\u001a\u0002072\u0006\u0010#\u001a\u00020\n2\u0006\u0010J\u001a\u00020\n2\u0006\u0010N\u001a\u00020\nH\u0002JK\u0010O\u001a\u0002072\u0006\u0010?\u001a\u00020\n28\u0010P\u001a4\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008R\u0012\u0008\u0008S\u0012\u0004\u0008\u0008(:\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008R\u0012\u0008\u0008S\u0012\u0004\u0008\u0008(T\u0012\u0004\u0012\u0002070QH\u0086\u0008J\u0010\u0010U\u001a\u0004\u0018\u00010\u00012\u0006\u0010:\u001a\u00020\nJ\u0010\u0010V\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nH\u0002J\u000e\u0010W\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nJ\u0010\u0010X\u001a\u0004\u0018\u00010\u00012\u0006\u0010:\u001a\u00020\nJ\u000e\u0010Y\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nJ\u000e\u0010Z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010[J\u001a\u0010\\\u001a\u0002012\u0006\u0010#\u001a\u00020\n2\u0008\u0010]\u001a\u0004\u0018\u00010^H\u0002J\u0006\u0010_\u001a\u00020^J\u000e\u0010`\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\nJ\u0016\u0010a\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\n2\u0006\u0010?\u001a\u00020\nJ\u000e\u0010b\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\nJ\u0010\u0010c\u001a\u0002072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u0010\u0010e\u001a\u0002072\u0006\u0010\'\u001a\u00020\nH\u0002J\u0018\u0010f\u001a\u0002072\u0006\u0010\'\u001a\u00020\n2\u0006\u0010?\u001a\u00020\nH\u0002J\u000e\u0010 \u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\nJ\u000e\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\n0hH\u0002J\u0010\u0010i\u001a\u0002072\u0008\u0008\u0002\u0010?\u001a\u00020\nJ \u0010j\u001a\u0002072\u0006\u0010k\u001a\u00020\n2\u0006\u0010l\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\nH\u0002J&\u0010m\u001a\u0008\u0012\u0004\u0012\u00020\u00070h2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\n2\u0008\u0008\u0002\u0010n\u001a\u00020\u000eJ\u000e\u0010o\u001a\u0002072\u0006\u0010p\u001a\u00020\nJ\u0010\u0010q\u001a\u0002072\u0006\u0010:\u001a\u00020\nH\u0002J$\u0010r\u001a\u0008\u0012\u0004\u0012\u00020\u00070h2\u0006\u0010p\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\nJ\u0018\u0010s\u001a\u0002072\u0006\u0010:\u001a\u00020\n2\u0006\u0010?\u001a\u00020\nH\u0002J$\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u00070h2\u0006\u00109\u001a\u00020\u00072\u0006\u0010p\u001a\u00020\n2\u0006\u0010u\u001a\u00020\u0000J\u0010\u0010v\u001a\u0004\u0018\u00010\u00012\u0006\u00109\u001a\u00020\u0007J\u0010\u0010v\u001a\u0004\u0018\u00010\u00012\u0006\u0010:\u001a\u00020\nJ\u000e\u0010!\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0007J\u000e\u0010#\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nJ\u0010\u0010w\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nH\u0002J\u0018\u0010x\u001a\u00020\n2\u0006\u0010:\u001a\u00020\n2\u0006\u0010I\u001a\u00020\nH\u0002J\u0008\u0010y\u001a\u000207H\u0002J\u000e\u0010z\u001a\u0002072\u0006\u0010]\u001a\u00020^J\u0006\u0010{\u001a\u000207J\u0016\u0010|\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\u0006\u0010d\u001a\u00020^J@\u0010~\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\n2&\u0010/\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u000201\u0018\u000100j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u000201\u0018\u0001`2H\u0002J\u0006\u0010\u007f\u001a\u00020\u000eJ\u001b\u0010\u0080\u0001\u001a\u00020\u000e2\u0007\u0010\u0081\u0001\u001a\u00020\n2\u0007\u0010\u0082\u0001\u001a\u00020\nH\u0002J#\u0010\u0083\u0001\u001a\u0002072\u0007\u0010\u0081\u0001\u001a\u00020\n2\u0007\u0010\u0082\u0001\u001a\u00020\n2\u0006\u0010?\u001a\u00020\nH\u0002J\u0007\u0010\u0084\u0001\u001a\u000207J\t\u0010\u0085\u0001\u001a\u00020\nH\u0002J\t\u0010\u0086\u0001\u001a\u000207H\u0002J\u000f\u0010\u0087\u0001\u001a\u0002072\u0006\u00109\u001a\u00020\u0007J\u0011\u0010\u0088\u0001\u001a\u0002072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010:\u001a\u00020\n2\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J#\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010?\u001a\u00020\n2\u0006\u0010:\u001a\u00020\n2\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u008a\u0001\u001a\u00020\nJ\u0007\u0010\u008b\u0001\u001a\u000207J\u0019\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\nJ\u001a\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nJ\u0013\u0010\u008e\u0001\u001a\u0004\u0018\u0001012\u0006\u0010?\u001a\u00020\nH\u0002J\u001a\u0010\u008f\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0001J%\u0010\u008f\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u0092\u0001\u001a\u000207J\u000f\u0010\u0092\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\nJ\u001a\u0010\u0092\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0001J/\u0010\u0092\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010 \u001a\u00020\u000e2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0001H\u0002J\u001a\u0010\u0094\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0001J$\u0010\u0094\u0001\u001a\u0002072\u0006\u0010}\u001a\u00020\n2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010v\u001a\u0004\u0018\u00010\u0001J\t\u0010\u0095\u0001\u001a\u00020^H\u0016J\u0019\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00072\u0006\u0010?\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u0097\u0001J\u0013\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u0099\u0001\u001a\u0002072\u0007\u0010\u009a\u0001\u001a\u00020\n2\u0007\u0010\u009b\u0001\u001a\u00020\nH\u0002J\u0011\u0010\u009c\u0001\u001a\u0002072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u009d\u0001\u001a\u0002072\u0006\u0010?\u001a\u00020\nH\u0002J\u001a\u0010\u009e\u0001\u001a\u0002072\u0006\u0010?\u001a\u00020\n2\u0007\u0010\u0088\u0001\u001a\u00020&H\u0002J\u0019\u0010\u009f\u0001\u001a\u0002072\u0006\u00109\u001a\u00020\u00072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u009f\u0001\u001a\u0002072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u00a0\u0001\u001a\u0002072\u0006\u0010:\u001a\u00020\n2\u0008\u0010d\u001a\u0004\u0018\u00010\u0001H\u0002J\u0011\u0010\u00a1\u0001\u001a\u0002072\u0008\u0010d\u001a\u0004\u0018\u00010\u0001J\u000f\u0010\u00a2\u0001\u001a\u000207H\u0000\u00a2\u0006\u0003\u0008\u00a3\u0001J\u000f\u0010\u00a4\u0001\u001a\u000207H\u0000\u00a2\u0006\u0003\u0008\u00a5\u0001J\u0016\u0010\u00a6\u0001\u001a\u00020\n*\u00020\u001d2\u0007\u0010\u00a7\u0001\u001a\u00020\nH\u0002J\u0015\u0010F\u001a\u00020\n*\u00020\u001d2\u0007\u0010\u00a7\u0001\u001a\u00020\nH\u0002J\u0013\u0010\u00a8\u0001\u001a\u0008\u0012\u0004\u0012\u00020\n0h*\u00020\u001dH\u0002J\u001b\u0010\u00a9\u0001\u001a\u000207*\u00080\u00aa\u0001j\u0003`\u00ab\u00012\u0006\u0010:\u001a\u00020\nH\u0002J\u0016\u0010\u00ac\u0001\u001a\u00020\n*\u00020\u001d2\u0007\u0010\u00a7\u0001\u001a\u00020\nH\u0002J\u0014\u0010#\u001a\u00020\n*\u00020\u001d2\u0006\u0010:\u001a\u00020\nH\u0002J\u0016\u0010\u00ad\u0001\u001a\u00020\n*\u00020\u001d2\u0007\u0010\u00a7\u0001\u001a\u00020\nH\u0002J\u001e\u0010\u00ae\u0001\u001a\u000207*\u00020\u001d2\u0007\u0010\u00a7\u0001\u001a\u00020\n2\u0006\u0010F\u001a\u00020\nH\u0002R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR\u001e\u0010\u0014\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000cR\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0011R\u0011\u0010 \u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0011R\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010#\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000cR\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u000cR\u0018\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010*X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010+R\u000e\u0010,\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010/\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u000201\u0018\u000100j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u000201\u0018\u0001`2X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105\u00a8\u0006\u00b0\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "anchors",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/runtime/Anchor;",
        "Lkotlin/collections/ArrayList;",
        "capacity",
        "",
        "getCapacity",
        "()I",
        "<set-?>",
        "",
        "closed",
        "getClosed",
        "()Z",
        "currentGroup",
        "getCurrentGroup",
        "currentGroupEnd",
        "getCurrentGroupEnd",
        "currentSlot",
        "currentSlotEnd",
        "endStack",
        "Landroidx/compose/runtime/IntStack;",
        "groupGapLen",
        "groupGapStart",
        "groups",
        "",
        "insertCount",
        "isGroupEnd",
        "isNode",
        "nodeCount",
        "nodeCountStack",
        "parent",
        "getParent",
        "pendingRecalculateMarks",
        "Landroidx/compose/runtime/PrioritySet;",
        "size",
        "getSize$runtime_release",
        "slots",
        "",
        "[Ljava/lang/Object;",
        "slotsGapLen",
        "slotsGapOwner",
        "slotsGapStart",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "startStack",
        "getTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "advanceBy",
        "",
        "amount",
        "anchor",
        "index",
        "anchorIndex",
        "bashCurrentGroup",
        "beginInsert",
        "childContainsAnyMarks",
        "group",
        "clearSlotGap",
        "close",
        "containsAnyGroupMarks",
        "containsGroupMark",
        "dataAnchorToDataIndex",
        "gapLen",
        "dataIndex",
        "dataIndexToDataAddress",
        "dataIndexToDataAnchor",
        "gapStart",
        "endGroup",
        "endInsert",
        "ensureStarted",
        "fixParentAnchorsFor",
        "firstChild",
        "forEachData",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "groupAux",
        "groupIndexToAddress",
        "groupKey",
        "groupObjectKey",
        "groupSize",
        "groupSlots",
        "",
        "groupSourceInformationFor",
        "sourceInformation",
        "",
        "groupsAsString",
        "indexInCurrentGroup",
        "indexInGroup",
        "indexInParent",
        "insertAux",
        "value",
        "insertGroups",
        "insertSlots",
        "keys",
        "",
        "markGroup",
        "moveAnchors",
        "originalLocation",
        "newLocation",
        "moveFrom",
        "removeSourceGroup",
        "moveGroup",
        "offset",
        "moveGroupGapTo",
        "moveIntoGroupFrom",
        "moveSlotGapTo",
        "moveTo",
        "writer",
        "node",
        "parentAnchorToIndex",
        "parentIndexToAnchor",
        "recalculateMarks",
        "recordGroupSourceInformation",
        "recordGrouplessCallSourceInformationEnd",
        "recordGrouplessCallSourceInformationStart",
        "key",
        "removeAnchors",
        "removeGroup",
        "removeGroups",
        "start",
        "len",
        "removeSlots",
        "reset",
        "restoreCurrentGroupEnd",
        "saveCurrentGroupEnd",
        "seek",
        "set",
        "skip",
        "skipGroup",
        "skipToGroupEnd",
        "slot",
        "groupIndex",
        "sourceInformationOf",
        "startData",
        "aux",
        "objectKey",
        "startGroup",
        "dataKey",
        "startNode",
        "toString",
        "tryAnchor",
        "tryAnchor$runtime_release",
        "update",
        "updateAnchors",
        "previousGapStart",
        "newGapStart",
        "updateAux",
        "updateContainsMark",
        "updateContainsMarkNow",
        "updateNode",
        "updateNodeOfGroup",
        "updateParentNode",
        "verifyDataAnchors",
        "verifyDataAnchors$runtime_release",
        "verifyParentAnchors",
        "verifyParentAnchors$runtime_release",
        "auxIndex",
        "address",
        "dataIndexes",
        "groupAsString",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "nodeIndex",
        "slotIndex",
        "updateDataIndex",
        "Companion",
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

.field public static final Companion:Landroidx/compose/runtime/SlotWriter$Companion;


# instance fields
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private currentGroup:I

.field private currentGroupEnd:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private final endStack:Landroidx/compose/runtime/IntStack;

.field private groupGapLen:I

.field private groupGapStart:I

.field private groups:[I

.field private insertCount:I

.field private nodeCount:I

.field private final nodeCountStack:Landroidx/compose/runtime/IntStack;

.field private parent:I

.field private pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

.field private slots:[Ljava/lang/Object;

.field private slotsGapLen:I

.field private slotsGapOwner:I

.field private slotsGapStart:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final startStack:Landroidx/compose/runtime/IntStack;

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/SlotWriter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2
    .param p1, "table"    # Landroidx/compose/runtime/SlotTable;

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 1285
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1293
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 1303
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1308
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 1313
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 1328
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 1333
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 1338
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 1358
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1366
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 1371
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1382
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1476
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1273
    return-void
.end method

.method public static final synthetic access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "group"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->containsAnyGroupMarks(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "$receiver"    # [I
    .param p2, "address"    # I

    .line 1273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "dataIndex"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I
    .param p2, "gapStart"    # I
    .param p3, "gapLen"    # I
    .param p4, "capacity"    # I

    .line 1273
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return v0
.end method

.method public static final synthetic access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return v0
.end method

.method public static final synthetic access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    return-object v0
.end method

.method public static final synthetic access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return v0
.end method

.method public static final synthetic access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    return v0
.end method

.method public static final synthetic access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return v0
.end method

.method public static final synthetic access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return v0
.end method

.method public static final synthetic access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;

    .line 1273
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "size"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    return-void
.end method

.method public static final synthetic access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "size"    # I
    .param p2, "group"    # I

    .line 1273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    return-void
.end method

.method public static final synthetic access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    return-void
.end method

.method public static final synthetic access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I
    .param p2, "group"    # I

    .line 1273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    return-void
.end method

.method public static final synthetic access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 1273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "group"    # I

    .line 1273
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "<set-?>"    # I

    .line 1273
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return-void
.end method

.method public static final synthetic access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "<set-?>"    # I

    .line 1273
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public static final synthetic access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "<set-?>"    # I

    .line 1273
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void
.end method

.method public static final synthetic access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "<set-?>"    # I

    .line 1273
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return-void
.end method

.method public static final synthetic access$setSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "<set-?>"    # Ljava/util/HashMap;

    .line 1273
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$slotIndex(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "$receiver"    # [I
    .param p2, "address"    # I

    .line 1273
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$sourceInformationOf(Landroidx/compose/runtime/SlotWriter;I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "group"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "group"    # I

    .line 1273
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;
    .locals 0

    .line 2540
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0
.end method

.method private final auxIndex([II)I
    .locals 2
    .param p1, "$this$auxIndex"    # [I
    .param p2, "address"    # I

    .line 3222
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupInfo([II)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1d

    invoke-static {v1}, Landroidx/compose/runtime/SlotTableKt;->access$countOneBits(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private final childContainsAnyMarks(I)Z
    .locals 4
    .param p1, "group"    # I

    .line 2590
    add-int/lit8 v0, p1, 0x1

    .line 2591
    .local v0, "child":I
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 2592
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2593
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 2594
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 2596
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private final clearSlotGap()V
    .locals 4

    .line 2761
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2762
    .local v0, "slotsGapStart":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v1, v0

    .line 2763
    .local v1, "slotsGapEnd":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 2764
    return-void
.end method

.method private final containsAnyGroupMarks(I)Z
    .locals 2
    .param p1, "group"    # I

    .line 2559
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final containsGroupMark(I)Z
    .locals 2
    .param p1, "group"    # I

    .line 2556
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final dataAnchorToDataIndex(III)I
    .locals 1
    .param p1, "anchor"    # I
    .param p2, "gapLen"    # I
    .param p3, "capacity"    # I

    .line 3239
    if-gez p1, :cond_0

    sub-int v0, p3, p2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private final dataIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 3203
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    return v0
.end method

.method private final dataIndex([II)I
    .locals 3
    .param p1, "$this$dataIndex"    # [I
    .param p2, "address"    # I

    .line 3206
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3207
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final dataIndexToDataAddress(I)I
    .locals 1
    .param p1, "dataIndex"    # I

    .line 3198
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private final dataIndexToDataAnchor(IIII)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "gapStart"    # I
    .param p3, "gapLen"    # I
    .param p4, "capacity"    # I

    .line 3236
    if-le p1, p2, :cond_0

    sub-int v0, p4, p3

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private final dataIndexes([I)Ljava/util/List;
    .locals 17
    .param p1, "$this$dataIndexes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3225
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 3226
    .local v2, "$i$a$-let-SlotWriter$dataIndexes$1":I
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 3227
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v4, v5

    move-object/from16 v5, p1

    array-length v6, v5

    div-int/lit8 v6, v6, 0x5

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 3226
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 3225
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-let-SlotWriter$dataIndexes$1":I
    nop

    .line 3228
    nop

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3887
    .local v2, "$i$f$fastMap":I
    nop

    .line 3888
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3889
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 3890
    .local v6, "$i$f$fastForEach":I
    nop

    .line 3891
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_0

    .line 3892
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 3893
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 3894
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "anchor":I
    const/4 v14, 0x0

    .line 3228
    .local v14, "$i$a$-fastMap-SlotWriter$dataIndexes$2":I
    iget v15, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    move-object/from16 v16, v1

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v16, "$this$fastMap$iv":Ljava/util/List;
    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v13, v15, v1}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v1

    .end local v13    # "anchor":I
    .end local v14    # "$i$a$-fastMap-SlotWriter$dataIndexes$2":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3894
    invoke-interface {v12, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3895
    nop

    .line 3893
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 3891
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .end local v16    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v1    # "$this$fastMap$iv":Ljava/util/List;
    :cond_0
    move-object/from16 v16, v1

    .line 3896
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v7    # "index$iv$iv":I
    .restart local v16    # "$this$fastMap$iv":Ljava/util/List;
    nop

    .line 3897
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 3228
    .end local v2    # "$i$f$fastMap":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v16    # "$this$fastMap$iv":Ljava/util/List;
    return-object v1
.end method

.method private final fixParentAnchorsFor(III)V
    .locals 4
    .param p1, "parent"    # I
    .param p2, "endGroup"    # I
    .param p3, "firstChild"    # I

    .line 2635
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result v0

    .line 2636
    .local v0, "parentAnchor":I
    move v1, p3

    .line 2637
    .local v1, "child":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2638
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    .line 2639
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v1

    .line 2640
    .local v2, "childEnd":I
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    .line 2641
    move v1, v2

    .end local v2    # "childEnd":I
    goto :goto_0

    .line 2643
    :cond_0
    return-void
.end method

.method private final getCapacity()I
    .locals 1

    .line 3192
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private final groupAsString(Ljava/lang/StringBuilder;I)V
    .locals 8
    .param p1, "$this$groupAsString"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .line 3086
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 3087
    .local v0, "address":I
    const-string v1, "Group("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    const/16 v1, 0xa

    const/16 v2, 0x20

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3089
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3090
    :cond_1
    const/16 v1, 0x3e8

    if-ge p2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3091
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3092
    const-string v1, ")"

    if-eq v0, p2, :cond_3

    .line 3093
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3095
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    :cond_3
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3098
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3102
    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v2

    .line 3103
    .local v2, "openGroup":Z
    const/16 v3, 0x3f

    if-eqz v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3104
    :cond_4
    const/16 v4, 0x5e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3105
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3106
    const-string v4, ": key="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3108
    const-string v4, ", nodes="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3110
    if-eqz v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3111
    :cond_5
    const-string v3, ", dataAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3113
    const-string v3, ", parentAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3115
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3116
    nop

    .line 3117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3118
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 3119
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v5, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v5

    aget-object v4, v4, v5

    .line 3117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3116
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    :cond_6
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v3, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v3

    .line 3126
    .local v3, "startData":I
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v4

    .line 3127
    .local v4, "endData":I
    if-le v4, v3, :cond_9

    .line 3128
    const-string v5, ", ["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    move v5, v3

    .local v5, "dataIndex":I
    :goto_0
    if-ge v5, v4, :cond_8

    .line 3130
    if-eq v5, v3, :cond_7

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    :cond_7
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v6

    .line 3132
    .local v6, "dataAddress":I
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    .end local v6    # "dataAddress":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3134
    .end local v5    # "dataIndex":I
    :cond_8
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3136
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    return-void
.end method

.method private static final groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I

    .line 3100
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 3101
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupAsString$isStarted(Landroidx/compose/runtime/SlotWriter;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final groupIndexToAddress(I)I
    .locals 1
    .param p1, "index"    # I

    .line 3195
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private final groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 10
    .param p1, "parent"    # I
    .param p2, "sourceInformation"    # Ljava/lang/String;

    .line 1609
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1610
    .local v0, "map":Ljava/util/HashMap;
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1611
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .local v1, "$this$getOrPut$iv":Ljava/util/Map;
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    .local v2, "key$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 3767
    .local v3, "$i$f$getOrPut":I
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3768
    .local v4, "value$iv":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 3769
    const/4 v5, 0x0

    .line 1612
    .local v5, "$i$a$-getOrPut-SlotWriter$groupSourceInformationFor$1":I
    new-instance v6, Landroidx/compose/runtime/GroupSourceInformation;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p2}, Landroidx/compose/runtime/GroupSourceInformation;-><init>(ILjava/lang/String;)V

    .line 1617
    .local v6, "result":Landroidx/compose/runtime/GroupSourceInformation;
    if-nez p2, :cond_1

    .line 1618
    add-int/lit8 v7, p1, 0x1

    .line 1619
    .local v7, "child":I
    iget v8, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1620
    .local v8, "end":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 1621
    invoke-virtual {v6, p0, v7}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1622
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v9, v7}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_0

    .line 1626
    .end local v7    # "child":I
    .end local v8    # "end":I
    :cond_1
    nop

    .line 3769
    .end local v5    # "$i$a$-getOrPut-SlotWriter$groupSourceInformationFor$1":I
    .end local v6    # "result":Landroidx/compose/runtime/GroupSourceInformation;
    move-object v5, v6

    .line 3770
    .local v5, "answer$iv":Ljava/lang/Object;
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3771
    nop

    .end local v5    # "answer$iv":Ljava/lang/Object;
    goto :goto_1

    .line 3773
    :cond_2
    move-object v5, v4

    .line 3768
    :goto_1
    nop

    .end local v1    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v2    # "key$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getOrPut":I
    .end local v4    # "value$iv":Ljava/lang/Object;
    check-cast v5, Landroidx/compose/runtime/GroupSourceInformation;

    .line 1611
    return-object v5
.end method

.method private final insertGroups(I)V
    .locals 16
    .param p1, "size"    # I

    .line 2771
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-lez v1, :cond_5

    .line 2772
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2773
    .local v2, "currentGroup":I
    invoke-direct {v0, v2}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 2774
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2775
    .local v3, "gapStart":I
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2776
    .local v4, "gapLen":I
    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x5

    .line 2777
    .local v5, "oldCapacity":I
    sub-int v6, v5, v4

    .line 2778
    .local v6, "oldSize":I
    const/4 v7, 0x0

    if-ge v4, v1, :cond_0

    .line 2780
    iget-object v8, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2783
    .local v8, "groups":[I
    nop

    .line 2784
    mul-int/lit8 v9, v5, 0x2

    add-int v10, v6, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2785
    const/16 v10, 0x20

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2783
    nop

    .line 2787
    .local v9, "newCapacity":I
    mul-int/lit8 v10, v9, 0x5

    new-array v10, v10, [I

    .line 2788
    .local v10, "newGroups":[I
    sub-int v11, v9, v6

    .line 2789
    .local v11, "newGapLen":I
    add-int v12, v3, v4

    .line 2790
    .local v12, "oldGapEndAddress":I
    add-int v13, v3, v11

    .line 2793
    .local v13, "newGapEndAddress":I
    nop

    .line 2794
    nop

    .line 2795
    nop

    .line 2796
    nop

    .line 2797
    mul-int/lit8 v14, v3, 0x5

    .line 2793
    invoke-static {v8, v10, v7, v7, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2799
    nop

    .line 2800
    nop

    .line 2801
    mul-int/lit8 v14, v13, 0x5

    .line 2802
    mul-int/lit8 v15, v12, 0x5

    .line 2803
    mul-int/lit8 v7, v5, 0x5

    .line 2799
    invoke-static {v8, v10, v14, v15, v7}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2807
    iput-object v10, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2808
    move v4, v11

    .line 2812
    .end local v8    # "groups":[I
    .end local v9    # "newCapacity":I
    .end local v10    # "newGroups":[I
    .end local v11    # "newGapLen":I
    .end local v12    # "oldGapEndAddress":I
    .end local v13    # "newGapEndAddress":I
    :cond_0
    iget v7, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2813
    .local v7, "currentEnd":I
    if-lt v7, v3, :cond_1

    add-int v8, v7, v1

    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2816
    :cond_1
    add-int v8, v3, v1

    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2817
    sub-int v8, v4, v1

    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2820
    if-lez v6, :cond_2

    add-int v8, v2, v1

    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 2823
    .local v8, "index":I
    :goto_0
    nop

    .line 2824
    nop

    .line 2825
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v9, v3, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2826
    :goto_1
    iget v10, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2827
    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v11, v11

    .line 2823
    invoke-direct {v0, v8, v9, v10, v11}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v9

    .line 2829
    .local v9, "anchor":I
    move v10, v3

    .local v10, "groupAddress":I
    add-int v11, v3, v1

    :goto_2
    if-ge v10, v11, :cond_4

    .line 2830
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v12, v10, v9}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 2829
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2832
    .end local v10    # "groupAddress":I
    :cond_4
    iget v10, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2833
    .local v10, "slotsGapOwner":I
    if-lt v10, v3, :cond_5

    .line 2834
    add-int v11, v10, v1

    iput v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2837
    .end local v2    # "currentGroup":I
    .end local v3    # "gapStart":I
    .end local v4    # "gapLen":I
    .end local v5    # "oldCapacity":I
    .end local v6    # "oldSize":I
    .end local v7    # "currentEnd":I
    .end local v8    # "index":I
    .end local v9    # "anchor":I
    .end local v10    # "slotsGapOwner":I
    :cond_5
    return-void
.end method

.method private final insertSlots(II)V
    .locals 11
    .param p1, "size"    # I
    .param p2, "group"    # I

    .line 2845
    if-lez p1, :cond_3

    .line 2846
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 2847
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2848
    .local v0, "gapStart":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2849
    .local v1, "gapLen":I
    if-ge v1, p1, :cond_1

    .line 2850
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2853
    .local v2, "slots":[Ljava/lang/Object;
    array-length v3, v2

    .line 2854
    .local v3, "oldCapacity":I
    sub-int v4, v3, v1

    .line 2857
    .local v4, "oldSize":I
    nop

    .line 2858
    mul-int/lit8 v5, v3, 0x2

    add-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2859
    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2857
    nop

    .line 2861
    .local v5, "newCapacity":I
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    const/4 v9, 0x0

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2862
    .local v6, "newData":[Ljava/lang/Object;
    :cond_0
    sub-int v8, v5, v4

    .line 2863
    .local v8, "newGapLen":I
    add-int v9, v0, v1

    .line 2864
    .local v9, "oldGapEndAddress":I
    add-int v10, v0, v8

    .line 2867
    .local v10, "newGapEndAddress":I
    nop

    .line 2868
    nop

    .line 2869
    nop

    .line 2870
    nop

    .line 2871
    nop

    .line 2867
    invoke-static {v2, v6, v7, v7, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2873
    nop

    .line 2874
    nop

    .line 2875
    nop

    .line 2876
    nop

    .line 2877
    nop

    .line 2873
    invoke-static {v2, v6, v10, v9, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2881
    iput-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2882
    move v1, v8

    .line 2884
    .end local v2    # "slots":[Ljava/lang/Object;
    .end local v3    # "oldCapacity":I
    .end local v4    # "oldSize":I
    .end local v5    # "newCapacity":I
    .end local v6    # "newData":[Ljava/lang/Object;
    .end local v8    # "newGapLen":I
    .end local v9    # "oldGapEndAddress":I
    .end local v10    # "newGapEndAddress":I
    :cond_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2885
    .local v2, "currentDataEnd":I
    if-lt v2, v0, :cond_2

    add-int v3, v2, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2886
    :cond_2
    add-int v3, v0, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2887
    sub-int v3, v1, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2889
    .end local v0    # "gapStart":I
    .end local v1    # "gapLen":I
    .end local v2    # "currentDataEnd":I
    :cond_3
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3231
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroidx/compose/runtime/SlotTableKt;->keys$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFilterIndexed$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3898
    .local v2, "$i$f$fastFilterIndexed":I
    nop

    .line 3899
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3900
    .local v5, "target$iv":Ljava/util/ArrayList;
    move-object v6, v1

    .local v6, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 3901
    .local v7, "$i$f$fastForEachIndexed":I
    nop

    .line 3902
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_3

    .line 3903
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3904
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move v11, v8

    .local v11, "index$iv":I
    move-object v12, v10

    .local v12, "e$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 3905
    .local v13, "$i$a$-fastForEachIndexed-ListUtilsKt$fastFilterIndexed$2$iv":I
    move-object v14, v12

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move v14, v11

    .local v14, "index":I
    const/4 v15, 0x0

    .line 3232
    .local v15, "$i$a$-fastFilterIndexed-SlotWriter$keys$1":I
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v14, v3, :cond_1

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v3, v4

    if-lt v14, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 3905
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastFilterIndexed-SlotWriter$keys$1":I
    :goto_2
    if-eqz v3, :cond_2

    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3906
    :cond_2
    nop

    .line 3904
    .end local v11    # "index$iv":I
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEachIndexed-ListUtilsKt$fastFilterIndexed$2$iv":I
    nop

    .line 3902
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    .line 3907
    .end local v8    # "index$iv$iv":I
    :cond_3
    nop

    .line 3908
    .end local v6    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEachIndexed":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 3233
    .end local v1    # "$this$fastFilterIndexed$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFilterIndexed":I
    .end local v5    # "target$iv":Ljava/util/ArrayList;
    return-object v1
.end method

.method public static synthetic markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V
    .locals 0

    .line 2544
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->markGroup(I)V

    return-void
.end method

.method private final moveAnchors(III)V
    .locals 17
    .param p1, "originalLocation"    # I
    .param p2, "newLocation"    # I
    .param p3, "size"    # I

    .line 3038
    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int v2, v1, p3

    .line 3039
    .local v2, "end":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v3

    .line 3042
    .local v3, "groupsSize":I
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v4

    .line 3043
    .local v4, "index":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 3044
    .local v5, "removedAnchors":Ljava/util/List;
    if-ltz v4, :cond_1

    .line 3045
    :goto_0
    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 3046
    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/Anchor;

    .line 3047
    .local v6, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v7

    .line 3049
    .local v7, "location":I
    if-lt v7, v1, :cond_0

    if-ge v7, v2, :cond_0

    .line 3050
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3051
    iget-object v8, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3052
    :cond_0
    nop

    .line 3057
    .end local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v7    # "location":I
    :cond_1
    sub-int v6, p2, v1

    .line 3058
    .local v6, "moveDelta":I
    move-object v7, v5

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 3881
    .local v8, "$i$f$fastForEach":I
    nop

    .line 3882
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_1
    if-ge v9, v10, :cond_3

    .line 3883
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 3884
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/Anchor;

    .local v12, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v13, 0x0

    .line 3059
    .local v13, "$i$a$-fastForEach-SlotWriter$moveAnchors$1":I
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v14

    .line 3060
    .local v14, "anchorIndex":I
    add-int v15, v14, v6

    .line 3061
    .local v15, "newAnchorIndex":I
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v15, v1, :cond_2

    .line 3062
    sub-int v1, v3, v15

    neg-int v1, v1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    goto :goto_2

    .line 3064
    :cond_2
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 3066
    :goto_2
    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v1, v15, v3}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v1

    .line 3067
    .local v1, "insertIndex":I
    move/from16 v16, v2

    .end local v2    # "end":I
    .local v16, "end":I
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3068
    nop

    .line 3884
    .end local v1    # "insertIndex":I
    .end local v12    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v13    # "$i$a$-fastForEach-SlotWriter$moveAnchors$1":I
    .end local v14    # "anchorIndex":I
    .end local v15    # "newAnchorIndex":I
    nop

    .line 3882
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move/from16 v2, v16

    goto :goto_1

    .line 3886
    .end local v9    # "index$iv":I
    .end local v16    # "end":I
    .restart local v2    # "end":I
    :cond_3
    nop

    .line 3069
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    return-void
.end method

.method public static synthetic moveFrom$default(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/SlotTable;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 2446
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final moveGroupGapTo(I)V
    .locals 9
    .param p1, "index"    # I

    .line 2649
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2650
    .local v0, "gapLen":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2651
    .local v1, "gapStart":I
    if-eq v1, p1, :cond_7

    .line 2652
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->updateAnchors(II)V

    .line 2653
    :cond_0
    if-lez v0, :cond_2

    .line 2654
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2658
    .local v2, "groups":[I
    mul-int/lit8 v4, p1, 0x5

    .line 2659
    .local v4, "groupPhysicalAddress":I
    mul-int/lit8 v5, v0, 0x5

    .line 2660
    .local v5, "groupPhysicalGapLen":I
    mul-int/lit8 v6, v1, 0x5

    .line 2661
    .local v6, "groupPhysicalGapStart":I
    if-ge p1, v1, :cond_1

    .line 2662
    nop

    .line 2663
    nop

    .line 2664
    add-int v7, v4, v5

    .line 2665
    nop

    .line 2666
    nop

    .line 2662
    invoke-static {v2, v2, v7, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    goto :goto_0

    .line 2669
    :cond_1
    nop

    .line 2670
    nop

    .line 2671
    nop

    .line 2672
    add-int v7, v6, v5

    .line 2673
    add-int v8, v4, v5

    .line 2669
    invoke-static {v2, v2, v6, v7, v8}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2680
    .end local v2    # "groups":[I
    .end local v4    # "groupPhysicalAddress":I
    .end local v5    # "groupPhysicalGapLen":I
    .end local v6    # "groupPhysicalGapStart":I
    :cond_2
    :goto_0
    if-ge p1, v1, :cond_3

    add-int v2, p1, v0

    goto :goto_1

    :cond_3
    move v2, v1

    .line 2681
    .local v2, "groupAddress":I
    :goto_1
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v4

    .line 2682
    .local v4, "capacity":I
    if-ge v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2683
    :cond_5
    :goto_3
    if-ge v2, v4, :cond_7

    .line 2684
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    .line 2685
    .local v3, "oldAnchor":I
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v5

    .line 2686
    .local v5, "oldIndex":I
    invoke-direct {p0, v5, p1}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result v6

    .line 2687
    .local v6, "newAnchor":I
    if-eq v6, v3, :cond_6

    .line 2688
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    .line 2690
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 2691
    if-ne v2, p1, :cond_5

    add-int/2addr v2, v0

    .end local v3    # "oldAnchor":I
    .end local v5    # "oldIndex":I
    .end local v6    # "newAnchor":I
    goto :goto_3

    .line 2694
    .end local v2    # "groupAddress":I
    .end local v4    # "capacity":I
    :cond_7
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2695
    return-void
.end method

.method private final moveSlotGapTo(II)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "group"    # I

    .line 2701
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2702
    .local v0, "gapLen":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2703
    .local v1, "gapStart":I
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2704
    .local v2, "slotsGapOwner":I
    if-eq v1, p1, :cond_1

    .line 2705
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2706
    .local v3, "slots":[Ljava/lang/Object;
    if-ge p1, v1, :cond_0

    .line 2708
    nop

    .line 2709
    nop

    .line 2710
    add-int v4, p1, v0

    .line 2711
    nop

    .line 2712
    nop

    .line 2708
    invoke-static {v3, v3, v4, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 2716
    :cond_0
    nop

    .line 2717
    nop

    .line 2718
    nop

    .line 2719
    add-int v4, v1, v0

    .line 2720
    add-int v5, p1, v0

    .line 2716
    invoke-static {v3, v3, v1, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 2726
    .end local v3    # "slots":[Ljava/lang/Object;
    :cond_1
    :goto_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2727
    .local v3, "newSlotsGapOwner":I
    if-eq v2, v3, :cond_a

    .line 2728
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v0

    .line 2729
    .local v4, "slotsSize":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v2, :cond_5

    .line 2730
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    .line 2731
    .local v7, "updateAddress":I
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    .line 2732
    .local v8, "stopUpdateAddress":I
    iget v9, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2733
    .local v9, "groupGapStart":I
    :cond_2
    :goto_1
    if-ge v7, v8, :cond_9

    .line 2734
    iget-object v10, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v10, v7}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v10

    .line 2735
    .local v10, "anchor":I
    if-ltz v10, :cond_3

    move v11, v6

    goto :goto_2

    :cond_3
    move v11, v5

    .local v11, "value$iv":Z
    :goto_2
    const/4 v12, 0x0

    .line 3866
    .local v12, "$i$f$runtimeCheck":I
    if-eqz v11, :cond_4

    .line 3870
    nop

    .line 2738
    .end local v11    # "value$iv":Z
    .end local v12    # "$i$f$runtimeCheck":I
    iget-object v11, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    sub-int v12, v4, v10

    add-int/2addr v12, v6

    neg-int v12, v12

    invoke-static {v11, v7, v12}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 2739
    add-int/lit8 v7, v7, 0x1

    .line 2740
    if-ne v7, v9, :cond_2

    iget v11, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v7, v11

    .end local v10    # "anchor":I
    goto :goto_1

    .line 3867
    .restart local v10    # "anchor":I
    .restart local v11    # "value$iv":Z
    .restart local v12    # "$i$f$runtimeCheck":I
    :cond_4
    const/4 v5, 0x0

    .line 2736
    .local v5, "$i$a$-runtimeCheck-SlotWriter$moveSlotGapTo$1":I
    nop

    .line 3867
    .end local v5    # "$i$a$-runtimeCheck-SlotWriter$moveSlotGapTo$1":I
    const-string/jumbo v5, "Unexpected anchor value, expected a positive anchor"

    .line 3868
    .local v5, "message$iv":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6

    .line 2743
    .end local v5    # "message$iv":Ljava/lang/Object;
    .end local v7    # "updateAddress":I
    .end local v8    # "stopUpdateAddress":I
    .end local v9    # "groupGapStart":I
    .end local v10    # "anchor":I
    .end local v11    # "value$iv":Z
    .end local v12    # "$i$f$runtimeCheck":I
    :cond_5
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    .line 2744
    .restart local v7    # "updateAddress":I
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    .line 2745
    .restart local v8    # "stopUpdateAddress":I
    :cond_6
    :goto_3
    if-ge v7, v8, :cond_9

    .line 2746
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v9, v7}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v9

    .line 2747
    .local v9, "anchor":I
    if-gez v9, :cond_7

    move v10, v6

    goto :goto_4

    :cond_7
    move v10, v5

    .local v10, "value$iv":Z
    :goto_4
    const/4 v11, 0x0

    .line 3871
    .local v11, "$i$f$runtimeCheck":I
    if-eqz v10, :cond_8

    .line 3875
    nop

    .line 2750
    .end local v10    # "value$iv":Z
    .end local v11    # "$i$f$runtimeCheck":I
    iget-object v10, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int v11, v4, v9

    add-int/2addr v11, v6

    invoke-static {v10, v7, v11}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 2751
    add-int/lit8 v7, v7, 0x1

    .line 2752
    iget v10, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ne v7, v10, :cond_6

    iget v10, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v7, v10

    .end local v9    # "anchor":I
    goto :goto_3

    .line 3872
    .restart local v9    # "anchor":I
    .restart local v10    # "value$iv":Z
    .restart local v11    # "$i$f$runtimeCheck":I
    :cond_8
    const/4 v5, 0x0

    .line 2748
    .local v5, "$i$a$-runtimeCheck-SlotWriter$moveSlotGapTo$2":I
    nop

    .line 3872
    .end local v5    # "$i$a$-runtimeCheck-SlotWriter$moveSlotGapTo$2":I
    const-string/jumbo v5, "Unexpected anchor value, expected a negative anchor"

    .line 3873
    .local v5, "message$iv":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6

    .line 2755
    .end local v5    # "message$iv":Ljava/lang/Object;
    .end local v7    # "updateAddress":I
    .end local v8    # "stopUpdateAddress":I
    .end local v9    # "anchor":I
    .end local v10    # "value$iv":Z
    .end local v11    # "$i$f$runtimeCheck":I
    :cond_9
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2757
    .end local v4    # "slotsSize":I
    :cond_a
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2758
    return-void
.end method

.method private final nodeIndex([II)I
    .locals 1
    .param p1, "$this$nodeIndex"    # [I
    .param p2, "address"    # I

    .line 3220
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    return v0
.end method

.method private final parent([II)I
    .locals 1
    .param p1, "$this$parent"    # [I
    .param p2, "index"    # I

    .line 3201
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v0

    return v0
.end method

.method private final parentAnchorToIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 3245
    const/4 v0, -0x2

    if-le p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method private final parentIndexToAnchor(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "gapStart"    # I

    .line 3242
    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method private final recalculateMarks()V
    .locals 3

    .line 2564
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v0, :cond_1

    .local v0, "set":Landroidx/compose/runtime/PrioritySet;
    const/4 v1, 0x0

    .line 2565
    .local v1, "$i$a$-let-SlotWriter$recalculateMarks$1":I
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2566
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    move-result v2

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V

    goto :goto_0

    .line 2568
    :cond_0
    nop

    .line 2564
    .end local v0    # "set":Landroidx/compose/runtime/PrioritySet;
    .end local v1    # "$i$a$-let-SlotWriter$recalculateMarks$1":I
    nop

    .line 2569
    :cond_1
    return-void
.end method

.method private final removeAnchors(IILjava/util/HashMap;)Z
    .locals 10
    .param p1, "gapStart"    # I
    .param p2, "size"    # I
    .param p3, "sourceInformationMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)Z"
        }
    .end annotation

    .line 3008
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3009
    .local v0, "gapLen":I
    add-int v1, p1, p2

    .line 3010
    .local v1, "removeEnd":I
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    sub-int/2addr v2, v0

    .line 3011
    .local v2, "groupsSize":I
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    add-int v4, p1, p2

    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v3

    .local v3, "it":I
    const/4 v4, 0x0

    .line 3012
    .local v4, "$i$a$-let-SlotWriter$removeAnchors$index$1":I
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    move v3, v5

    .line 3011
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-SlotWriter$removeAnchors$index$1":I
    :cond_0
    nop

    .line 3014
    .local v3, "index":I
    const/4 v4, 0x0

    .line 3015
    .local v4, "removeAnchorEnd":I
    const/4 v5, 0x0

    .local v5, "removeAnchorStart":I
    add-int/lit8 v5, v3, 0x1

    .line 3016
    :goto_0
    if-ltz v3, :cond_4

    .line 3017
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/Anchor;

    .line 3018
    .local v6, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v7

    .line 3019
    .local v7, "location":I
    if-lt v7, p1, :cond_3

    .line 3020
    if-ge v7, v1, :cond_2

    .line 3021
    const/high16 v8, -0x80000000

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 3022
    if-eqz p3, :cond_1

    invoke-virtual {p3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/GroupSourceInformation;

    .line 3023
    :cond_1
    move v5, v3

    .line 3024
    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 3026
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3027
    :cond_3
    nop

    .line 3029
    .end local v6    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v7    # "location":I
    :cond_4
    if-ge v5, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    move v7, v6

    .local v7, "it":Z
    const/4 v8, 0x0

    .line 3030
    .local v8, "$i$a$-also-SlotWriter$removeAnchors$1":I
    if-eqz v7, :cond_6

    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v9, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3031
    :cond_6
    nop

    .line 3029
    .end local v7    # "it":Z
    .end local v8    # "$i$a$-also-SlotWriter$removeAnchors$1":I
    return v6
.end method

.method private final removeGroups(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 2895
    if-lez p2, :cond_4

    .line 2896
    const/4 v0, 0x0

    .line 2897
    .local v0, "anchorsRemoved":Z
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2900
    .local v1, "anchors":Ljava/util/ArrayList;
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 2901
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2902
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v2}, Landroidx/compose/runtime/SlotWriter;->removeAnchors(IILjava/util/HashMap;)Z

    move-result v0

    .line 2904
    :cond_0
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2905
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2906
    .local v2, "previousGapLen":I
    add-int v3, v2, p2

    .line 2907
    .local v3, "newGapLen":I
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2910
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2911
    .local v4, "slotsGapOwner":I
    if-le v4, p1, :cond_1

    .line 2913
    sub-int v5, v4, p2

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2915
    :cond_1
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v5, v6, :cond_2

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v5, p2

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2917
    :cond_2
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2919
    .local v5, "parent":I
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->containsGroupMark(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2920
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    .line 2924
    :cond_3
    nop

    .end local v0    # "anchorsRemoved":Z
    .end local v1    # "anchors":Ljava/util/ArrayList;
    .end local v2    # "previousGapLen":I
    .end local v3    # "newGapLen":I
    .end local v4    # "slotsGapOwner":I
    .end local v5    # "parent":I
    goto :goto_0

    .line 2925
    :cond_4
    const/4 v0, 0x0

    .line 2895
    :goto_0
    return v0
.end method

.method private final removeSlots(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "group"    # I

    .line 2940
    if-lez p2, :cond_0

    .line 2941
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2942
    .local v0, "gapLen":I
    add-int v1, p1, p2

    .line 2943
    .local v1, "removeEnd":I
    invoke-direct {p0, v1, p3}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 2944
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2945
    add-int v2, v0, p2

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2946
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int v4, p1, p2

    invoke-static {v2, v3, p1, v4}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 2947
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2948
    .local v2, "currentDataEnd":I
    if-lt v2, p1, :cond_0

    sub-int v3, v2, p2

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2950
    .end local v0    # "gapLen":I
    .end local v1    # "removeEnd":I
    .end local v2    # "currentDataEnd":I
    :cond_0
    return-void
.end method

.method private final restoreCurrentGroupEnd()I
    .locals 2

    .line 2623
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2624
    .local v0, "newGroupEnd":I
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2625
    return v0
.end method

.method private final saveCurrentGroupEnd()V
    .locals 3

    .line 2616
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2617
    return-void
.end method

.method private final slotIndex([II)I
    .locals 3
    .param p1, "$this$slotIndex"    # [I
    .param p2, "address"    # I

    .line 3210
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3211
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 5
    .param p1, "group"    # I

    .line 2929
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .local v0, "map":Ljava/util/HashMap;
    const/4 v2, 0x0

    .line 2930
    .local v2, "$i$a$-let-SlotWriter$sourceInformationOf$1":I
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, v3

    .line 3766
    .local v1, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v3, 0x0

    .line 2930
    .local v3, "$i$a$-let-SlotWriter$sourceInformationOf$1$1":I
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/GroupSourceInformation;

    move-object v1, v4

    .line 2929
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v1    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v2    # "$i$a$-let-SlotWriter$sourceInformationOf$1":I
    .end local v3    # "$i$a$-let-SlotWriter$sourceInformationOf$1$1":I
    :cond_0
    nop

    .line 2931
    return-object v1
.end method

.method private final startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 19
    .param p1, "key"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;
    .param p3, "isNode"    # Z
    .param p4, "aux"    # Ljava/lang/Object;

    .line 1820
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p4

    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1821
    .local v11, "previousParent":I
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-lez v2, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    move v14, v2

    .line 1822
    .local v14, "inserting":Z
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1824
    if-eqz v14, :cond_a

    .line 1825
    invoke-direct {v0, v13}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    .line 1826
    iget v15, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1827
    .local v15, "current":I
    invoke-direct {v0, v15}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v16

    .line 1828
    .local v16, "currentAddress":I
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    move/from16 v17, v2

    .line 1829
    .local v17, "hasObjectKey":Z
    if-nez p3, :cond_2

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-eq v10, v2, :cond_2

    move v2, v13

    goto :goto_2

    :cond_2
    move v2, v12

    :goto_2
    move/from16 v18, v2

    .line 1830
    .local v18, "hasAux":Z
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1831
    nop

    .line 1832
    nop

    .line 1833
    nop

    .line 1834
    nop

    .line 1835
    nop

    .line 1836
    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1837
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1830
    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/SlotTableKt;->access$initGroup([IIIZZZII)V

    .line 1839
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1841
    nop

    .line 1842
    if-eqz v17, :cond_3

    move v2, v13

    goto :goto_3

    :cond_3
    move v2, v12

    .line 1841
    :goto_3
    add-int v2, p3, v2

    .line 1843
    if-eqz v18, :cond_4

    goto :goto_4

    :cond_4
    move v13, v12

    .line 1841
    :goto_4
    add-int/2addr v2, v13

    .line 1844
    .local v2, "dataSlotsNeeded":I
    if-lez v2, :cond_8

    .line 1845
    invoke-direct {v0, v2, v15}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1846
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1847
    .local v3, "slots":[Ljava/lang/Object;
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1848
    .local v4, "currentSlot":I
    if-eqz p3, :cond_5

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentSlot":I
    .local v5, "currentSlot":I
    aput-object v10, v3, v4

    move v4, v5

    .line 1849
    .end local v5    # "currentSlot":I
    .restart local v4    # "currentSlot":I
    :cond_5
    if-eqz v17, :cond_6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentSlot":I
    .restart local v5    # "currentSlot":I
    aput-object v1, v3, v4

    move v4, v5

    .line 1850
    .end local v5    # "currentSlot":I
    .restart local v4    # "currentSlot":I
    :cond_6
    if-eqz v18, :cond_7

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentSlot":I
    .restart local v5    # "currentSlot":I
    aput-object v10, v3, v4

    move v4, v5

    .line 1851
    .end local v5    # "currentSlot":I
    .restart local v4    # "currentSlot":I
    :cond_7
    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1853
    .end local v3    # "slots":[Ljava/lang/Object;
    .end local v4    # "currentSlot":I
    :cond_8
    iput v12, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1854
    add-int/lit8 v3, v15, 0x1

    .line 1855
    .local v3, "newCurrent":I
    iput v15, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1856
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1857
    if-ltz v11, :cond_9

    .line 1858
    invoke-direct {v0, v11}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v0, v15}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1860
    :cond_9
    nop

    .end local v2    # "dataSlotsNeeded":I
    .end local v3    # "newCurrent":I
    .end local v15    # "current":I
    .end local v16    # "currentAddress":I
    .end local v17    # "hasObjectKey":Z
    .end local v18    # "hasAux":Z
    goto :goto_6

    .line 1862
    :cond_a
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1863
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    .line 1864
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1865
    .local v2, "currentGroup":I
    invoke-direct {v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 1866
    .local v3, "currentGroupAddress":I
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1867
    if-eqz p3, :cond_b

    .line 1868
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/SlotWriter;->updateNode(Ljava/lang/Object;)V

    goto :goto_5

    .line 1870
    :cond_b
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/SlotWriter;->updateAux(Ljava/lang/Object;)V

    .line 1872
    :cond_c
    :goto_5
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v4

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1873
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1874
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v5, v13

    invoke-direct {v0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    .line 1873
    invoke-direct {v0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v4

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1876
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v4

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1878
    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1879
    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1880
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    add-int/2addr v4, v2

    move v3, v4

    .line 1824
    .end local v2    # "currentGroup":I
    .end local v3    # "currentGroupAddress":I
    :goto_6
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1882
    return-void
.end method

.method private final updateAnchors(II)V
    .locals 7
    .param p1, "previousGapStart"    # I
    .param p2, "newGapStart"    # I

    .line 2967
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2968
    .local v0, "gapLen":I
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2969
    .local v1, "size":I
    if-ge p1, p2, :cond_2

    .line 2973
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v2, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v2

    .line 2974
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2975
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 2976
    .local v3, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v4

    .line 2977
    .local v4, "location":I
    if-gez v4, :cond_1

    .line 2978
    add-int v5, v1, v4

    .line 2979
    .local v5, "newLocation":I
    if-ge v5, p2, :cond_0

    .line 2980
    add-int v6, v1, v4

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 2981
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2982
    :cond_0
    goto :goto_2

    .line 2983
    .end local v5    # "newLocation":I
    :cond_1
    goto :goto_2

    .line 2988
    .end local v2    # "index":I
    .end local v3    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v4    # "location":I
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v2, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v2

    .line 2989
    .restart local v2    # "index":I
    :goto_1
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2990
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 2991
    .restart local v3    # "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v4

    .line 2992
    .restart local v4    # "location":I
    if-ltz v4, :cond_3

    .line 2993
    sub-int v5, v1, v4

    neg-int v5, v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 2994
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2995
    :cond_3
    nop

    .line 2998
    .end local v2    # "index":I
    .end local v3    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v4    # "location":I
    :cond_4
    :goto_2
    return-void
.end method

.method private final updateContainsMark(I)V
    .locals 3
    .param p1, "group"    # I

    .line 2572
    if-ltz p1, :cond_1

    .line 2573
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/PrioritySet;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 3766
    .local v1, "it":Landroidx/compose/runtime/PrioritySet;
    const/4 v2, 0x0

    .line 2573
    .local v2, "$i$a$-also-SlotWriter$updateContainsMark$1":I
    iput-object v1, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 2574
    .end local v1    # "it":Landroidx/compose/runtime/PrioritySet;
    .end local v2    # "$i$a$-also-SlotWriter$updateContainsMark$1":I
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    .line 2576
    :cond_1
    return-void
.end method

.method private final updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "set"    # Landroidx/compose/runtime/PrioritySet;

    .line 2579
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2580
    .local v0, "groupAddress":I
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->childContainsAnyMarks(I)Z

    move-result v1

    .line 2581
    .local v1, "containsAnyMarks":Z
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2582
    .local v2, "markChanges":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2583
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$updateContainsMark([IIZ)V

    .line 2584
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v3

    .line 2585
    .local v3, "parent":I
    if-ltz v3, :cond_1

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    .line 2587
    .end local v3    # "parent":I
    :cond_1
    return-void
.end method

.method private final updateDataIndex([III)V
    .locals 3
    .param p1, "$this$updateDataIndex"    # [I
    .param p2, "address"    # I
    .param p3, "dataIndex"    # I

    .line 3214
    nop

    .line 3215
    nop

    .line 3216
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, p3, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    .line 3214
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    .line 3218
    return-void
.end method

.method private final updateNodeOfGroup(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 2956
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2957
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3876
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v1, :cond_1

    .line 3880
    nop

    .line 2960
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    aput-object p2, v1, v2

    .line 2961
    return-void

    .line 3877
    .restart local v1    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v3, 0x0

    .line 2958
    .local v3, "$i$a$-runtimeCheck-SlotWriter$updateNodeOfGroup$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating the node of a group at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was not created with as a node group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3877
    .end local v3    # "$i$a$-runtimeCheck-SlotWriter$updateNodeOfGroup$1":I
    nop

    .line 3878
    .local v3, "message$iv":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method


# virtual methods
.method public final advanceBy(I)V
    .locals 6
    .param p1, "amount"    # I

    .line 1717
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 3784
    .local v3, "$i$f$runtimeCheck":I
    if-eqz v2, :cond_6

    .line 3788
    nop

    .line 1718
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$runtimeCheck":I
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 1719
    if-nez p1, :cond_2

    return-void

    .line 1720
    :cond_2
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v2, p1

    .line 1722
    .local v2, "index":I
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-lt v2, v3, :cond_3

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-gt v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .local v0, "value$iv":Z
    :goto_2
    const/4 v1, 0x0

    .line 3789
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_4

    .line 3793
    nop

    .line 1725
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1726
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    .line 1727
    .local v0, "newSlot":I
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1728
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1729
    return-void

    .line 3790
    .local v0, "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_4
    const/4 v3, 0x0

    .line 1723
    .local v3, "$i$a$-runtimeCheck-SlotWriter$advanceBy$3":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot seek outside the current group ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3790
    .end local v3    # "$i$a$-runtimeCheck-SlotWriter$advanceBy$3":I
    nop

    .line 3791
    .local v3, "message$iv":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 3766
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    .end local v2    # "index":I
    .end local v3    # "message$iv":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .line 1718
    .local v0, "$i$a$-check-SlotWriter$advanceBy$2":I
    nop

    .end local v0    # "$i$a$-check-SlotWriter$advanceBy$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call seek() while inserting"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3785
    .local v2, "value$iv":Z
    .local v3, "$i$f$runtimeCheck":I
    :cond_6
    const/4 v0, 0x0

    .line 1717
    .local v0, "$i$a$-runtimeCheck-SlotWriter$advanceBy$1":I
    nop

    .line 3785
    .end local v0    # "$i$a$-runtimeCheck-SlotWriter$advanceBy$1":I
    const-string v0, "Cannot seek backwards"

    .line 3786
    .local v0, "message$iv":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 7
    .param p1, "index"    # I

    .line 2540
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .local v0, "$this$getOrAdd$iv":Ljava/util/ArrayList;
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    .local v1, "effectiveSize$iv":I
    const/4 v2, 0x0

    .line 3860
    .local v2, "$i$f$getOrAdd":I
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v3

    .line 3861
    .local v3, "location$iv":I
    if-gez v3, :cond_1

    .line 3862
    const/4 v4, 0x0

    .line 2541
    .local v4, "$i$a$-getOrAdd-SlotWriter$anchor$1":I
    new-instance v5, Landroidx/compose/runtime/Anchor;

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-gt p1, v6, :cond_0

    move v6, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v6

    sub-int/2addr v6, p1

    neg-int v6, v6

    :goto_0
    invoke-direct {v5, v6}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 3862
    .end local v4    # "$i$a$-getOrAdd-SlotWriter$anchor$1":I
    move-object v4, v5

    .line 3863
    .local v4, "anchor$iv":Landroidx/compose/runtime/Anchor;
    add-int/lit8 v5, v3, 0x1

    neg-int v5, v5

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3864
    nop

    .end local v4    # "anchor$iv":Landroidx/compose/runtime/Anchor;
    goto :goto_1

    .line 3865
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 3861
    :goto_1
    nop

    .line 2542
    .end local v0    # "$this$getOrAdd$iv":Ljava/util/ArrayList;
    .end local v1    # "effectiveSize$iv":I
    .end local v2    # "$i$f$getOrAdd":I
    .end local v3    # "location$iv":I
    return-object v4
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 3
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 2602
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v0

    .line 3766
    .local v0, "it":I
    const/4 v1, 0x0

    .line 2602
    .local v1, "$i$a$-let-SlotWriter$anchorIndex$1":I
    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v2

    add-int/2addr v2, v0

    move v0, v2

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-SlotWriter$anchorIndex$1":I
    :cond_0
    return v0
.end method

.method public final bashCurrentGroup()V
    .locals 3

    .line 2501
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupKey([III)V

    .line 2502
    return-void
.end method

.method public final beginInsert()V
    .locals 2

    .line 1751
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    .line 1752
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    .line 1754
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 10

    .line 1500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    .line 1502
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 1505
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 1506
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->clearSlotGap()V

    .line 1507
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    .line 1509
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 1510
    nop

    .line 1511
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1512
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 1513
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1514
    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 1515
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 1516
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1509
    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Landroidx/compose/runtime/SlotTable;->close$runtime_release(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1518
    return-void
.end method

.method public final endGroup()I
    .locals 19

    .line 1888
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1889
    .local v1, "inserting":Z
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1890
    .local v4, "currentGroup":I
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1892
    .local v5, "currentGroupEnd":I
    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1893
    .local v6, "groupIndex":I
    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    .line 1894
    .local v7, "groupAddress":I
    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1895
    .local v8, "newNodes":I
    sub-int v9, v4, v6

    .line 1896
    .local v9, "newGroupSize":I
    iget-object v10, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v10, v7}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v10

    .line 1897
    .local v10, "isNode":Z
    if-eqz v1, :cond_2

    .line 1898
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v7, v9}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    .line 1899
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v7, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 1900
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    add-int/2addr v3, v2

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1901
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v2, v6}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    move/from16 v16, v1

    move/from16 v18, v4

    goto/16 :goto_a

    .line 1903
    :cond_2
    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .local v2, "value$iv":Z
    :goto_2
    const/4 v11, 0x0

    .line 3804
    .local v11, "$i$f$runtimeCheck":I
    if-eqz v2, :cond_10

    .line 3808
    nop

    .line 1907
    .end local v2    # "value$iv":Z
    .end local v11    # "$i$f$runtimeCheck":I
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v7}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    .line 1908
    .local v2, "oldGroupSize":I
    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v11, v7}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v11

    .line 1909
    .local v11, "oldNodes":I
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v12, v7, v9}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    .line 1910
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v12, v7, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 1911
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v12}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v12

    .line 1912
    .local v12, "newParent":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    .line 1913
    iput v12, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1914
    iget-object v13, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v13, v6}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v13

    .line 1915
    .local v13, "groupParent":I
    iget-object v14, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v14}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v14

    iput v14, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1916
    if-ne v13, v12, :cond_5

    .line 1918
    iget v14, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    sub-int v3, v8, v11

    :goto_3
    add-int/2addr v14, v3

    iput v14, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    move/from16 v16, v1

    move/from16 v18, v4

    goto/16 :goto_a

    .line 1926
    :cond_5
    sub-int v14, v9, v2

    .line 1927
    .local v14, "groupSizeDelta":I
    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    sub-int v3, v8, v11

    .line 1928
    .local v3, "nodesDelta":I
    :goto_4
    if-nez v14, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    goto/16 :goto_9

    .line 1929
    :cond_8
    :goto_5
    move v15, v13

    .line 1931
    .local v15, "current":I
    :goto_6
    if-eqz v15, :cond_f

    .line 1932
    if-eq v15, v12, :cond_e

    .line 1933
    if-nez v3, :cond_a

    if-eqz v14, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    goto :goto_9

    .line 1935
    :cond_a
    :goto_7
    move/from16 v16, v1

    .end local v1    # "inserting":Z
    .local v16, "inserting":Z
    invoke-direct {v0, v15}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    .line 1936
    .local v1, "currentAddress":I
    if-eqz v14, :cond_b

    .line 1937
    move/from16 v17, v2

    .end local v2    # "oldGroupSize":I
    .local v17, "oldGroupSize":I
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v14

    .line 1938
    .local v2, "newSize":I
    move/from16 v18, v4

    .end local v4    # "currentGroup":I
    .local v18, "currentGroup":I
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    goto :goto_8

    .line 1936
    .end local v17    # "oldGroupSize":I
    .end local v18    # "currentGroup":I
    .local v2, "oldGroupSize":I
    .restart local v4    # "currentGroup":I
    :cond_b
    move/from16 v17, v2

    move/from16 v18, v4

    .line 1940
    .end local v2    # "oldGroupSize":I
    .end local v4    # "currentGroup":I
    .restart local v17    # "oldGroupSize":I
    .restart local v18    # "currentGroup":I
    :goto_8
    if-eqz v3, :cond_c

    .line 1941
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1942
    nop

    .line 1943
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v4

    add-int/2addr v4, v3

    .line 1941
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 1946
    :cond_c
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    .line 1947
    :cond_d
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v2, v15}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v4, v18

    .end local v1    # "currentAddress":I
    goto :goto_6

    .line 1932
    .end local v16    # "inserting":Z
    .end local v17    # "oldGroupSize":I
    .end local v18    # "currentGroup":I
    .local v1, "inserting":Z
    .restart local v2    # "oldGroupSize":I
    .restart local v4    # "currentGroup":I
    :cond_e
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    .end local v1    # "inserting":Z
    .end local v2    # "oldGroupSize":I
    .end local v4    # "currentGroup":I
    .restart local v16    # "inserting":Z
    .restart local v17    # "oldGroupSize":I
    .restart local v18    # "currentGroup":I
    goto :goto_9

    .line 1931
    .end local v16    # "inserting":Z
    .end local v17    # "oldGroupSize":I
    .end local v18    # "currentGroup":I
    .restart local v1    # "inserting":Z
    .restart local v2    # "oldGroupSize":I
    .restart local v4    # "currentGroup":I
    :cond_f
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    .line 1950
    .end local v1    # "inserting":Z
    .end local v2    # "oldGroupSize":I
    .end local v4    # "currentGroup":I
    .end local v15    # "current":I
    .restart local v16    # "inserting":Z
    .restart local v17    # "oldGroupSize":I
    .restart local v18    # "currentGroup":I
    :goto_9
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1953
    .end local v3    # "nodesDelta":I
    .end local v11    # "oldNodes":I
    .end local v12    # "newParent":I
    .end local v13    # "groupParent":I
    .end local v14    # "groupSizeDelta":I
    .end local v17    # "oldGroupSize":I
    :goto_a
    return v8

    .line 3805
    .end local v16    # "inserting":Z
    .end local v18    # "currentGroup":I
    .restart local v1    # "inserting":Z
    .local v2, "value$iv":Z
    .restart local v4    # "currentGroup":I
    .local v11, "$i$f$runtimeCheck":I
    :cond_10
    move/from16 v16, v1

    .end local v1    # "inserting":Z
    .restart local v16    # "inserting":Z
    const/4 v1, 0x0

    .line 1904
    .local v1, "$i$a$-runtimeCheck-SlotWriter$endGroup$1":I
    nop

    .line 3805
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$endGroup$1":I
    const-string v1, "Expected to be at the end of a group"

    .line 3806
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final endInsert()V
    .locals 4

    .line 1760
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 1761
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_3

    .line 1762
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v0

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v3

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 3794
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 3798
    nop

    .line 1765
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    goto :goto_2

    .line 3795
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_2
    const/4 v2, 0x0

    .line 1763
    .local v2, "$i$a$-runtimeCheck-SlotWriter$endInsert$2":I
    nop

    .line 3795
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$endInsert$2":I
    const-string/jumbo v2, "startGroup/endGroup mismatch while inserting"

    .line 3796
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 1767
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    .end local v2    # "message$iv":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-void

    .line 3766
    :cond_4
    const/4 v0, 0x0

    .line 1760
    .local v0, "$i$a$-check-SlotWriter$endInsert$1":I
    nop

    .end local v0    # "$i$a$-check-SlotWriter$endInsert$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unbalanced begin/end insert"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ensureStarted(I)V
    .locals 6
    .param p1, "index"    # I

    .line 1967
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .local v0, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 3809
    .local v3, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_4

    .line 3813
    nop

    .line 1968
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1969
    .local v0, "parent":I
    if-eq v0, p1, :cond_3

    .line 1972
    if-lt p1, v0, :cond_1

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .local v1, "value$iv":Z
    :goto_1
    const/4 v2, 0x0

    .line 3814
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v1, :cond_2

    .line 3818
    nop

    .line 1976
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1977
    .local v1, "oldCurrent":I
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1978
    .local v2, "oldCurrentSlot":I
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1979
    .local v3, "oldCurrentSlotEnd":I
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1980
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 1981
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1982
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1983
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    goto :goto_2

    .line 3815
    .end local v3    # "oldCurrentSlotEnd":I
    .local v1, "value$iv":Z
    .local v2, "$i$f$runtimeCheck":I
    :cond_2
    const/4 v3, 0x0

    .line 1973
    .local v3, "$i$a$-runtimeCheck-SlotWriter$ensureStarted$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Started group at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be a subgroup of the group at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3815
    .end local v3    # "$i$a$-runtimeCheck-SlotWriter$ensureStarted$2":I
    nop

    .line 3816
    .local v3, "message$iv":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 1985
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    .end local v3    # "message$iv":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-void

    .line 3810
    .local v0, "value$iv":Z
    .local v3, "$i$f$runtimeCheck":I
    :cond_4
    const/4 v1, 0x0

    .line 1967
    .local v1, "$i$a$-runtimeCheck-SlotWriter$ensureStarted$1":I
    nop

    .line 3810
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$ensureStarted$1":I
    const-string v1, "Cannot call ensureStarted() while inserting"

    .line 3811
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public final ensureStarted(Landroidx/compose/runtime/Anchor;)V
    .locals 1
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1987
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->ensureStarted(I)V

    return-void
.end method

.method public final forEachData(ILkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "group"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2049
    .local v0, "$i$f$forEachData":I
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v1

    .line 2050
    .local v1, "address":I
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->access$slotIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v2

    .line 2051
    .local v2, "slotsStart":I
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v3

    .line 2053
    .local v3, "slotsEnd":I
    move v4, v2

    .local v4, "slot":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 2054
    sub-int v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {p2, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2056
    .end local v4    # "slot":I
    :cond_0
    return-void
.end method

.method public final getClosed()Z
    .locals 1

    .line 1493
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    return v0
.end method

.method public final getCurrentGroup()I
    .locals 1

    .line 1376
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return v0
.end method

.method public final getCurrentGroupEnd()I
    .locals 1

    .line 1382
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return v0
.end method

.method public final getParent()I
    .locals 1

    .line 1476
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return v0
.end method

.method public final getSize$runtime_release()I
    .locals 2

    .line 3191
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 1277
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 1430
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1431
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final groupKey(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1411
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    return v0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 1417
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1418
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final groupSize(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1424
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    return v0
.end method

.method public final groupSlots()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    .line 2037
    .local v0, "start":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2038
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2037
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    .line 2040
    .local v1, "end":I
    new-instance v2, Landroidx/compose/runtime/SlotWriter$groupSlots$1;

    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/runtime/SlotWriter$groupSlots$1;-><init>(IILandroidx/compose/runtime/SlotWriter;)V

    check-cast v2, Ljava/util/Iterator;

    return-object v2
.end method

.method public final groupsAsString()Ljava/lang/String;
    .locals 6

    .line 3075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$groupsAsString_u24lambda_u2439":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 3076
    .local v2, "$i$a$-buildString-SlotWriter$groupsAsString$1":I
    const/4 v3, 0x0

    .local v3, "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 3077
    invoke-direct {p0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->groupAsString(Ljava/lang/StringBuilder;I)V

    .line 3078
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3080
    .end local v3    # "index":I
    :cond_0
    nop

    .line 3075
    .end local v1    # "$this$groupsAsString_u24lambda_u2439":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-SlotWriter$groupsAsString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3080
    return-object v0
.end method

.method public final indexInCurrentGroup(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1438
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v0

    return v0
.end method

.method public final indexInGroup(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "group"    # I

    .line 1444
    nop

    .line 1445
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    goto :goto_0

    .line 1446
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_0

    .line 1448
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    .line 1449
    .local v0, "openIndex":I
    nop

    .line 1450
    if-gez v0, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v2

    add-int/2addr v2, p2

    move v0, v2

    goto :goto_0

    .line 1451
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/IntStack;->peek(I)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .line 1444
    .end local v0    # "openIndex":I
    :goto_0
    nop

    .line 1455
    .local v0, "end":I
    if-le p1, p2, :cond_3

    if-ge p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final indexInParent(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1435
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt p1, v0, :cond_1

    .line 1436
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final insertAux(Ljava/lang/Object;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;

    .line 1563
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 3756
    .local v3, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_6

    .line 3760
    nop

    .line 1564
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1565
    .local v0, "parent":I
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 1566
    .local v3, "parentGroupAddress":I
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v4

    xor-int/2addr v4, v2

    .local v4, "value$iv":Z
    const/4 v5, 0x0

    .line 3761
    .local v5, "$i$f$runtimeCheck":I
    if-eqz v4, :cond_5

    .line 3765
    nop

    .line 1567
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$runtimeCheck":I
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1568
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v4

    .line 1569
    .local v4, "auxIndex":I
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v5

    .line 1570
    .local v5, "auxAddress":I
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-le v6, v4, :cond_4

    .line 1575
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v6, v4

    .line 1576
    .local v6, "slotsToMove":I
    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_3

    .line 1577
    if-le v6, v2, :cond_2

    .line 1578
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    aget-object v8, v8, v9

    aput-object v8, v1, v7

    .line 1580
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v8, v8, v5

    aput-object v8, v1, v7

    goto :goto_1

    .line 3766
    :cond_3
    const/4 v1, 0x0

    .line 1576
    .local v1, "$i$a$-check-SlotWriter$insertAux$3":I
    nop

    .end local v1    # "$i$a$-check-SlotWriter$insertAux$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Moving more than two slot not supported"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1582
    .end local v6    # "slotsToMove":I
    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v3}, Landroidx/compose/runtime/SlotTableKt;->access$addAux([II)V

    .line 1583
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 1584
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1585
    return-void

    .line 3762
    .local v4, "value$iv":Z
    .local v5, "$i$f$runtimeCheck":I
    :cond_5
    const/4 v1, 0x0

    .line 1566
    .local v1, "$i$a$-runtimeCheck-SlotWriter$insertAux$2":I
    nop

    .line 3762
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$insertAux$2":I
    const-string v1, "Group already has auxiliary data"

    .line 3763
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 3757
    .end local v1    # "message$iv":Ljava/lang/Object;
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$runtimeCheck":I
    .local v0, "value$iv":Z
    .local v3, "$i$f$runtimeCheck":I
    :cond_6
    const/4 v1, 0x0

    .line 1563
    .local v1, "$i$a$-runtimeCheck-SlotWriter$insertAux$1":I
    nop

    .line 3757
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$insertAux$1":I
    const-string v1, "Cannot insert auxiliary data when not inserting"

    .line 3758
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public final isGroupEnd()Z
    .locals 2

    .line 1388
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNode()Z
    .locals 2

    .line 1396
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNode(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 1401
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    return v0
.end method

.method public final markGroup(I)V
    .locals 3
    .param p1, "group"    # I

    .line 2545
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2546
    .local v0, "groupAddress":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2547
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateMark([IIZ)V

    .line 2548
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2550
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    .line 2553
    :cond_0
    return-void
.end method

.method public final moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;
    .locals 18
    .param p1, "table"    # Landroidx/compose/runtime/SlotTable;
    .param p2, "index"    # I
    .param p3, "removeSourceGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "IZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2447
    move-object/from16 v8, p0

    move/from16 v9, p2

    iget v0, v8, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2449
    nop

    .line 2450
    if-nez v9, :cond_1

    iget v0, v8, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-nez v0, :cond_1

    .line 2451
    iget-object v0, v8, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 2452
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2456
    iget-object v0, v8, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2457
    .local v0, "myGroups":[I
    iget-object v1, v8, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2458
    .local v1, "mySlots":[Ljava/lang/Object;
    iget-object v2, v8, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2459
    .local v2, "myAnchors":Ljava/util/ArrayList;
    iget-object v3, v8, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 2460
    .local v3, "mySourceInformation":Ljava/util/HashMap;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v4

    .line 2461
    .local v4, "groups":[I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v5

    .line 2462
    .local v5, "groupsSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v6

    .line 2463
    .local v6, "slots":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v7

    .line 2464
    .local v7, "slotsSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v15

    .line 2465
    .local v15, "sourceInformation":Ljava/util/HashMap;
    iput-object v4, v8, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2466
    iput-object v6, v8, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2467
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v8, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2468
    iput v5, v8, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2469
    array-length v10, v4

    div-int/lit8 v10, v10, 0x5

    sub-int/2addr v10, v5

    iput v10, v8, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2470
    iput v7, v8, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2471
    array-length v10, v6

    sub-int/2addr v10, v7

    iput v10, v8, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2472
    iput v5, v8, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2473
    iput-object v15, v8, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 2475
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v11, v0

    move-object v13, v1

    move-object/from16 v17, v15

    .end local v15    # "sourceInformation":Ljava/util/HashMap;
    .local v17, "sourceInformation":Ljava/util/HashMap;
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Landroidx/compose/runtime/SlotTable;->setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2476
    iget-object v10, v8, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    check-cast v10, Ljava/util/List;

    return-object v10

    .line 2479
    .end local v0    # "myGroups":[I
    .end local v1    # "mySlots":[Ljava/lang/Object;
    .end local v2    # "myAnchors":Ljava/util/ArrayList;
    .end local v3    # "mySourceInformation":Ljava/util/HashMap;
    .end local v4    # "groups":[I
    .end local v5    # "groupsSize":I
    .end local v6    # "slots":[Ljava/lang/Object;
    .end local v7    # "slotsSize":I
    .end local v17    # "sourceInformation":Ljava/util/HashMap;
    :cond_1
    move-object/from16 v10, p1

    .local v10, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v11, 0x0

    .line 3844
    .local v11, "$i$f$write":I
    invoke-virtual {v10}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    .line 3845
    move-object v12, v0

    .local v12, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/4 v13, 0x0

    .line 3846
    .local v13, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3847
    move-object v2, v12

    .local v2, "tableWriter":Landroidx/compose/runtime/SlotWriter;
    const/4 v0, 0x0

    .line 2480
    .local v0, "$i$a$-write-SlotWriter$moveFrom$1":I
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 2481
    nop

    .line 2482
    nop

    .line 2483
    nop

    .line 2484
    const/4 v5, 0x1

    .line 2485
    const/4 v6, 0x1

    .line 2486
    nop

    .line 2480
    move/from16 v3, p2

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/SlotWriter$Companion;->access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3847
    .end local v0    # "$i$a$-write-SlotWriter$moveFrom$1":I
    .end local v2    # "tableWriter":Landroidx/compose/runtime/SlotWriter;
    nop

    .line 3849
    invoke-virtual {v12}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 3850
    nop

    .line 3846
    nop

    .line 3845
    .end local v12    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v13    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3851
    nop

    .line 2479
    .end local v10    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v11    # "$i$f$write":I
    return-object v1

    .line 3849
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v11    # "$i$f$write":I
    .restart local v12    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v13    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v0
.end method

.method public final moveGroup(I)V
    .locals 27
    .param p1, "offset"    # I

    .line 2064
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .local v1, "value$iv":Z
    :goto_0
    const/4 v4, 0x0

    .line 3824
    .local v4, "$i$f$runtimeCheck":I
    if-eqz v1, :cond_c

    .line 3828
    nop

    .line 2065
    .end local v1    # "value$iv":Z
    .end local v4    # "$i$f$runtimeCheck":I
    if-ltz p1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .restart local v1    # "value$iv":Z
    :goto_1
    const/4 v4, 0x0

    .line 3829
    .restart local v4    # "$i$f$runtimeCheck":I
    const-string/jumbo v5, "Parameter offset is out of bounds"

    if-eqz v1, :cond_b

    .line 3833
    nop

    .line 2066
    .end local v1    # "value$iv":Z
    .end local v4    # "$i$f$runtimeCheck":I
    if-nez p1, :cond_2

    return-void

    .line 2067
    :cond_2
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2068
    .local v1, "current":I
    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2069
    .local v4, "parent":I
    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2072
    .local v6, "parentEnd":I
    move/from16 v7, p1

    .line 2073
    .local v7, "count":I
    move v8, v1

    .line 2074
    .local v8, "groupToMove":I
    :goto_2
    if-lez v7, :cond_5

    .line 2075
    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2076
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    .line 2075
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v9

    add-int/2addr v8, v9

    .line 2078
    if-gt v8, v6, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    .local v9, "value$iv":Z
    :goto_3
    const/4 v10, 0x0

    .line 3834
    .local v10, "$i$f$runtimeCheck":I
    if-eqz v9, :cond_4

    .line 3838
    nop

    .line 2079
    .end local v9    # "value$iv":Z
    .end local v10    # "$i$f$runtimeCheck":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3835
    .restart local v9    # "value$iv":Z
    .restart local v10    # "$i$f$runtimeCheck":I
    :cond_4
    const/4 v2, 0x0

    .line 2078
    .local v2, "$i$a$-runtimeCheck-SlotWriter$moveGroup$3":I
    nop

    .line 3835
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$moveGroup$3":I
    move-object v2, v5

    .line 3836
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 2082
    .end local v2    # "message$iv":Ljava/lang/Object;
    .end local v9    # "value$iv":Z
    .end local v10    # "$i$f$runtimeCheck":I
    :cond_5
    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2083
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    .line 2082
    invoke-static {v5, v9}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    .line 2085
    .local v5, "moveLen":I
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2086
    .local v9, "currentSlot":I
    iget-object v10, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v11

    invoke-direct {v0, v10, v11}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v10

    .line 2087
    .local v10, "dataStart":I
    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2088
    nop

    .line 2089
    add-int v12, v8, v5

    .line 2088
    invoke-direct {v0, v12}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v12

    .line 2087
    invoke-direct {v0, v11, v12}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v11

    .line 2092
    .local v11, "dataEnd":I
    sub-int v12, v11, v10

    .line 2121
    .local v12, "moveDataLen":I
    iget v13, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v13, v3

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-direct {v0, v12, v13}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 2124
    invoke-direct {v0, v5}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    .line 2127
    iget-object v13, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2128
    .local v13, "groups":[I
    add-int v14, v8, v5

    invoke-direct {v0, v14}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v14

    .line 2129
    .local v14, "moveLocationAddress":I
    mul-int/lit8 v15, v14, 0x5

    .line 2130
    .local v15, "moveLocationOffset":I
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v16

    .line 2131
    .local v16, "currentAddress":I
    nop

    .line 2132
    nop

    .line 2133
    mul-int/lit8 v2, v16, 0x5

    .line 2134
    nop

    .line 2135
    mul-int/lit8 v18, v5, 0x5

    add-int v3, v15, v18

    .line 2131
    invoke-static {v13, v13, v2, v15, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 2139
    if-lez v12, :cond_6

    .line 2140
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2141
    .local v2, "slots":[Ljava/lang/Object;
    nop

    .line 2142
    nop

    .line 2143
    nop

    .line 2144
    add-int v3, v10, v12

    invoke-direct {v0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    .line 2145
    move/from16 v18, v6

    .end local v6    # "parentEnd":I
    .local v18, "parentEnd":I
    add-int v6, v11, v12

    invoke-direct {v0, v6}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v6

    .line 2141
    invoke-static {v2, v2, v9, v3, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_4

    .line 2139
    .end local v2    # "slots":[Ljava/lang/Object;
    .end local v18    # "parentEnd":I
    .restart local v6    # "parentEnd":I
    :cond_6
    move/from16 v18, v6

    .line 2149
    .end local v6    # "parentEnd":I
    .restart local v18    # "parentEnd":I
    :goto_4
    add-int v2, v10, v12

    sub-int/2addr v2, v9

    .line 2150
    .local v2, "dataMoveDistance":I
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2151
    .local v3, "slotsGapStart":I
    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2152
    .local v6, "slotsGapLen":I
    move/from16 v19, v3

    .end local v3    # "slotsGapStart":I
    .local v19, "slotsGapStart":I
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v3, v3

    .line 2153
    .local v3, "slotsCapacity":I
    move/from16 v20, v7

    .end local v7    # "count":I
    .local v20, "count":I
    iget v7, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2154
    .local v7, "slotsGapOwner":I
    move/from16 v21, v1

    move/from16 v22, v9

    .end local v9    # "currentSlot":I
    .local v21, "group":I
    .local v22, "currentSlot":I
    add-int v9, v1, v5

    move/from16 v23, v11

    move/from16 v11, v21

    .end local v21    # "group":I
    .local v11, "group":I
    .local v23, "dataEnd":I
    :goto_5
    if-ge v11, v9, :cond_8

    .line 2155
    move/from16 v21, v9

    invoke-direct {v0, v11}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    .line 2156
    .local v9, "groupAddress":I
    invoke-direct {v0, v13, v9}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v24

    .line 2157
    .local v24, "oldIndex":I
    move/from16 v25, v14

    .end local v14    # "moveLocationAddress":I
    .local v25, "moveLocationAddress":I
    sub-int v14, v24, v2

    .line 2158
    .local v14, "newIndex":I
    nop

    .line 2159
    nop

    .line 2160
    move/from16 v26, v2

    if-ge v7, v9, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    move/from16 v2, v19

    .line 2161
    .end local v2    # "dataMoveDistance":I
    .local v26, "dataMoveDistance":I
    :goto_6
    nop

    .line 2162
    nop

    .line 2158
    invoke-direct {v0, v14, v2, v6, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v2

    .line 2164
    .local v2, "newAnchor":I
    invoke-direct {v0, v13, v9, v2}, Landroidx/compose/runtime/SlotWriter;->updateDataIndex([III)V

    .line 2154
    .end local v2    # "newAnchor":I
    .end local v9    # "groupAddress":I
    .end local v14    # "newIndex":I
    .end local v24    # "oldIndex":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v21

    move/from16 v14, v25

    move/from16 v2, v26

    goto :goto_5

    .end local v25    # "moveLocationAddress":I
    .end local v26    # "dataMoveDistance":I
    .local v2, "dataMoveDistance":I
    .local v14, "moveLocationAddress":I
    :cond_8
    move/from16 v26, v2

    move/from16 v25, v14

    .line 2168
    .end local v2    # "dataMoveDistance":I
    .end local v11    # "group":I
    .end local v14    # "moveLocationAddress":I
    .restart local v25    # "moveLocationAddress":I
    .restart local v26    # "dataMoveDistance":I
    add-int v2, v8, v5

    invoke-direct {v0, v2, v1, v5}, Landroidx/compose/runtime/SlotWriter;->moveAnchors(III)V

    .line 2171
    add-int v2, v8, v5

    invoke-direct {v0, v2, v5}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v2

    .line 2172
    .local v2, "anchorsRemoved":Z
    xor-int/lit8 v9, v2, 0x1

    .local v9, "value$iv":Z
    const/4 v11, 0x0

    .line 3839
    .local v11, "$i$f$runtimeCheck":I
    if-eqz v9, :cond_a

    .line 3843
    nop

    .line 2175
    .end local v9    # "value$iv":Z
    .end local v11    # "$i$f$runtimeCheck":I
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-direct {v0, v4, v9, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    .line 2178
    if-lez v12, :cond_9

    .line 2179
    add-int v9, v10, v12

    add-int v11, v8, v5

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    invoke-direct {v0, v9, v12, v11}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    .line 2181
    :cond_9
    return-void

    .line 3840
    .restart local v9    # "value$iv":Z
    .restart local v11    # "$i$f$runtimeCheck":I
    :cond_a
    const/4 v14, 0x0

    .line 2172
    .local v14, "$i$a$-runtimeCheck-SlotWriter$moveGroup$4":I
    nop

    .line 3840
    .end local v14    # "$i$a$-runtimeCheck-SlotWriter$moveGroup$4":I
    const-string/jumbo v14, "Unexpectedly removed anchors"

    .line 3841
    .local v14, "message$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v17, Lkotlin/KotlinNothingValueException;

    invoke-direct/range {v17 .. v17}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v17

    .line 3830
    .end local v2    # "anchorsRemoved":Z
    .end local v3    # "slotsCapacity":I
    .end local v5    # "moveLen":I
    .end local v6    # "slotsGapLen":I
    .end local v7    # "slotsGapOwner":I
    .end local v8    # "groupToMove":I
    .end local v9    # "value$iv":Z
    .end local v10    # "dataStart":I
    .end local v11    # "$i$f$runtimeCheck":I
    .end local v12    # "moveDataLen":I
    .end local v13    # "groups":[I
    .end local v14    # "message$iv":Ljava/lang/Object;
    .end local v15    # "moveLocationOffset":I
    .end local v16    # "currentAddress":I
    .end local v18    # "parentEnd":I
    .end local v19    # "slotsGapStart":I
    .end local v20    # "count":I
    .end local v22    # "currentSlot":I
    .end local v23    # "dataEnd":I
    .end local v25    # "moveLocationAddress":I
    .end local v26    # "dataMoveDistance":I
    .local v1, "value$iv":Z
    .local v4, "$i$f$runtimeCheck":I
    :cond_b
    const/4 v2, 0x0

    .line 2065
    .local v2, "$i$a$-runtimeCheck-SlotWriter$moveGroup$2":I
    nop

    .line 3830
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$moveGroup$2":I
    move-object v2, v5

    .line 3831
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 3825
    .end local v2    # "message$iv":Ljava/lang/Object;
    :cond_c
    const/4 v2, 0x0

    .line 2064
    .local v2, "$i$a$-runtimeCheck-SlotWriter$moveGroup$1":I
    nop

    .line 3825
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$moveGroup$1":I
    const-string v2, "Cannot move a group while inserting"

    .line 3826
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final moveIntoGroupFrom(ILandroidx/compose/runtime/SlotTable;I)Ljava/util/List;
    .locals 18
    .param p1, "offset"    # I
    .param p2, "table"    # Landroidx/compose/runtime/SlotTable;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2513
    move-object/from16 v10, p0

    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v0, :cond_0

    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int v0, v0, p1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2514
    iget v11, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2515
    .local v11, "previousCurrentGroup":I
    iget v12, v10, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2516
    .local v12, "previousCurrentSlot":I
    iget v13, v10, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2517
    .local v13, "previousCurrentSlotEnd":I
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2518
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2519
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 2520
    move-object/from16 v14, p2

    .local v14, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v15, 0x0

    .line 3852
    .local v15, "$i$f$write":I
    invoke-virtual {v14}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    .line 3853
    move-object/from16 v16, v0

    .local v16, "writer$iv":Landroidx/compose/runtime/SlotWriter;
    const/16 v17, 0x0

    .line 3854
    .local v17, "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3855
    move-object/from16 v2, v16

    .local v2, "tableWriter":Landroidx/compose/runtime/SlotWriter;
    const/4 v0, 0x0

    .line 2521
    .local v0, "$i$a$-write-SlotWriter$moveIntoGroupFrom$anchors$1":I
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 2522
    nop

    .line 2523
    nop

    .line 2524
    nop

    .line 2525
    const/4 v5, 0x0

    .line 2526
    const/4 v6, 0x1

    .line 2521
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move/from16 v3, p3

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v9}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3855
    .end local v0    # "$i$a$-write-SlotWriter$moveIntoGroupFrom$anchors$1":I
    .end local v2    # "tableWriter":Landroidx/compose/runtime/SlotWriter;
    nop

    .line 3857
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 3858
    nop

    .line 3854
    nop

    .line 3853
    .end local v16    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .end local v17    # "$i$a$-let-SlotTable$write$1$iv":I
    nop

    .line 3859
    nop

    .line 2520
    .end local v14    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v15    # "$i$f$write":I
    move-object v0, v1

    .line 2529
    .local v0, "anchors":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2530
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2531
    iput v11, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2532
    iput v12, v10, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2533
    iput v13, v10, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2534
    return-object v0

    .line 3857
    .end local v0    # "anchors":Ljava/util/List;
    .restart local v14    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v15    # "$i$f$write":I
    .restart local v16    # "writer$iv":Landroidx/compose/runtime/SlotWriter;
    .restart local v17    # "$i$a$-let-SlotTable$write$1$iv":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/SlotWriter;->close()V

    throw v0
.end method

.method public final moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;
    .locals 18
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "offset"    # I
    .param p3, "writer"    # Landroidx/compose/runtime/SlotWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Anchor;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2397
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v12, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2398
    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2399
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2400
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    add-int v13, v0, p2

    .line 2401
    .local v13, "location":I
    iget v14, v9, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2402
    .local v14, "currentGroup":I
    if-gt v14, v13, :cond_2

    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v13, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2403
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v15

    .line 2404
    .local v15, "parent":I
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v16

    .line 2405
    .local v16, "size":I
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v0

    :goto_3
    move v8, v0

    .line 2406
    .local v8, "nodes":I
    sget-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    .line 2407
    nop

    .line 2408
    nop

    .line 2409
    nop

    .line 2410
    const/4 v4, 0x0

    .line 2411
    const/4 v5, 0x0

    .line 2406
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move v2, v13

    move-object/from16 v3, p3

    move v11, v8

    .end local v8    # "nodes":I
    .local v11, "nodes":I
    move-object/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2414
    .local v0, "result":Ljava/util/List;
    invoke-direct {v9, v15}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    .line 2417
    move v1, v15

    .line 2418
    .local v1, "current":I
    if-lez v11, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    move v2, v12

    .line 2419
    .local v2, "updatingNodes":Z
    :goto_4
    if-lt v1, v14, :cond_7

    .line 2420
    invoke-direct {v9, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 2421
    .local v3, "currentAddress":I
    iget-object v4, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget-object v5, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v5, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    sub-int v5, v5, v16

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    .line 2422
    if-eqz v2, :cond_6

    .line 2423
    iget-object v4, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2424
    const/4 v2, 0x0

    goto :goto_5

    .line 2426
    :cond_5
    iget-object v4, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget-object v5, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v5, v3}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v5

    sub-int/2addr v5, v11

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2428
    :cond_6
    :goto_5
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    .end local v3    # "currentAddress":I
    goto :goto_4

    .line 2430
    :cond_7
    if-eqz v2, :cond_9

    .line 2431
    iget v3, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-lt v3, v11, :cond_8

    const/4 v12, 0x1

    :cond_8
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2432
    iget v3, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v3, v11

    iput v3, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 2435
    :cond_9
    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 1462
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1463
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 1465
    :cond_0
    const/4 v1, 0x0

    .line 1463
    :goto_0
    return-object v1
.end method

.method public final node(Landroidx/compose/runtime/Anchor;)Ljava/lang/Object;
    .locals 1
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1471
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nodeCount(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1406
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    return v0
.end method

.method public final parent(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1482
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v0

    return v0
.end method

.method public final parent(Landroidx/compose/runtime/Anchor;)I
    .locals 2
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1488
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final recordGroupSourceInformation(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceInformation"    # Ljava/lang/String;

    .line 1588
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1589
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    .line 1591
    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationEnd()V
    .locals 2

    .line 1600
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1601
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupSourceInformation;->endGrouplessCall()V

    .line 1603
    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1594
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1595
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/GroupSourceInformation;->startGrouplessCall(ILjava/lang/String;)V

    .line 1597
    :cond_0
    return-void
.end method

.method public final removeGroup()Z
    .locals 7

    .line 2004
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 3819
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_4

    .line 3823
    nop

    .line 2005
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2006
    .local v0, "oldGroup":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2007
    .local v1, "oldSlot":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v2

    .line 2010
    .local v2, "count":I
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v3

    if-eqz v3, :cond_1

    .local v3, "sourceInformation":Landroidx/compose/runtime/GroupSourceInformation;
    const/4 v4, 0x0

    .line 2011
    .local v4, "$i$a$-let-SlotWriter$removeGroup$2":I
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object v5

    if-eqz v5, :cond_1

    .local v5, "anchor":Landroidx/compose/runtime/Anchor;
    const/4 v6, 0x0

    .line 2012
    .local v6, "$i$a$-let-SlotWriter$removeGroup$2$1":I
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GroupSourceInformation;->removeAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 2011
    .end local v5    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v6    # "$i$a$-let-SlotWriter$removeGroup$2$1":I
    nop

    .line 2010
    .end local v3    # "sourceInformation":Landroidx/compose/runtime/GroupSourceInformation;
    .end local v4    # "$i$a$-let-SlotWriter$removeGroup$2":I
    :cond_1
    nop

    .line 2018
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v3, :cond_3

    .local v3, "it":Landroidx/compose/runtime/PrioritySet;
    const/4 v4, 0x0

    .line 2019
    .local v4, "$i$a$-let-SlotWriter$removeGroup$3":I
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->peek()I

    move-result v5

    if-lt v5, v0, :cond_2

    .line 2020
    invoke-virtual {v3}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    goto :goto_1

    .line 2022
    :cond_2
    nop

    .line 2018
    .end local v3    # "it":Landroidx/compose/runtime/PrioritySet;
    .end local v4    # "$i$a$-let-SlotWriter$removeGroup$3":I
    nop

    .line 2024
    :cond_3
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v3

    .line 2025
    .local v3, "anchorsRemoved":Z
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v4, v1

    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, v1, v4, v5}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    .line 2026
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2027
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2028
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 2029
    return v3

    .line 3820
    .end local v2    # "count":I
    .end local v3    # "anchorsRemoved":Z
    .local v0, "value$iv":Z
    .local v1, "$i$f$runtimeCheck":I
    :cond_4
    const/4 v2, 0x0

    .line 2004
    .local v2, "$i$a$-runtimeCheck-SlotWriter$removeGroup$1":I
    nop

    .line 3820
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$removeGroup$1":I
    const-string v2, "Cannot remove group while inserting"

    .line 3821
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final reset()V
    .locals 4

    .line 1526
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3746
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3750
    nop

    .line 1527
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    .line 1528
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1529
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1530
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1531
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1532
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 1533
    return-void

    .line 3747
    .restart local v0    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v1, 0x0

    .line 1526
    .local v1, "$i$a$-runtimeCheck-SlotWriter$reset$1":I
    nop

    .line 3747
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$reset$1":I
    const-string v1, "Cannot reset when inserting"

    .line 3748
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final seek(Landroidx/compose/runtime/Anchor;)V
    .locals 2
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1735
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    return-void
.end method

.method public final set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "group"    # I
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 1665
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1666
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v1

    .line 1667
    .local v1, "slotsStart":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    .line 1668
    .local v2, "slotsEnd":I
    add-int v3, v1, p2

    .line 1670
    .local v3, "slotsIndex":I
    if-lt v3, v1, :cond_0

    if-ge v3, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .local v4, "value$iv":Z
    :goto_0
    const/4 v5, 0x0

    .line 3779
    .local v5, "$i$f$runtimeCheck":I
    if-eqz v4, :cond_1

    .line 3783
    nop

    .line 1673
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$runtimeCheck":I
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    .line 1674
    .local v4, "slotAddress":I
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 1675
    .local v5, "result":Ljava/lang/Object;
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p3, v6, v4

    .line 1676
    return-object v5

    .line 3780
    .local v4, "value$iv":Z
    .local v5, "$i$f$runtimeCheck":I
    :cond_1
    const/4 v6, 0x0

    .line 1671
    .local v6, "$i$a$-runtimeCheck-SlotWriter$set$2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Write to an invalid slot index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3780
    .end local v6    # "$i$a$-runtimeCheck-SlotWriter$set$2":I
    nop

    .line 3781
    .local v6, "message$iv":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1659
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 1649
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 3774
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3778
    nop

    .line 1652
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v1

    aput-object p1, v0, v1

    .line 1653
    return-void

    .line 3775
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v2, 0x0

    .line 1650
    .local v2, "$i$a$-runtimeCheck-SlotWriter$set$1":I
    nop

    .line 3775
    .end local v2    # "$i$a$-runtimeCheck-SlotWriter$set$1":I
    const-string/jumbo v2, "Writing to an invalid slot"

    .line 3776
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final skip()Ljava/lang/Object;
    .locals 3

    .line 1684
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1685
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1687
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final skipGroup()I
    .locals 4

    .line 1993
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1994
    .local v0, "groupAddress":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1995
    .local v1, "newGroup":I
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1996
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1997
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public final skipToGroupEnd()V
    .locals 3

    .line 1741
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1742
    .local v0, "newGroup":I
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1743
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1744
    return-void
.end method

.method public final slot(II)Ljava/lang/Object;
    .locals 6
    .param p1, "groupIndex"    # I
    .param p2, "index"    # I

    .line 1701
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1702
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v1

    .line 1703
    .local v1, "slotsStart":I
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    .line 1704
    .local v2, "slotsEnd":I
    add-int v3, v1, p2

    .line 1705
    .local v3, "slotsIndex":I
    const/4 v4, 0x0

    if-gt v1, v3, :cond_0

    if-ge v3, v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    .line 1706
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 1708
    :cond_1
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    .line 1709
    .local v4, "slotAddress":I
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v5, v5, v4

    return-object v5
.end method

.method public final slot(Landroidx/compose/runtime/Anchor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "index"    # I

    .line 1694
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->slot(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final startData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "aux"    # Ljava/lang/Object;

    .line 1817
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;
    .param p3, "aux"    # Ljava/lang/Object;

    .line 1807
    nop

    .line 1808
    nop

    .line 1809
    nop

    .line 1810
    nop

    .line 1811
    nop

    .line 1807
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 1812
    return-void
.end method

.method public final startGroup()V
    .locals 4

    .line 1773
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3799
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 3803
    nop

    .line 1774
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 1775
    return-void

    .line 3800
    .restart local v0    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v1, 0x0

    .line 1773
    .local v1, "$i$a$-runtimeCheck-SlotWriter$startGroup$1":I
    nop

    .line 3800
    .end local v1    # "$i$a$-runtimeCheck-SlotWriter$startGroup$1":I
    const-string v1, "Key must be supplied when inserting"

    .line 3801
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final startGroup(I)V
    .locals 3
    .param p1, "key"    # I

    .line 1780
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;

    .line 1785
    nop

    .line 1786
    nop

    .line 1787
    nop

    .line 1788
    nop

    .line 1789
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    .line 1785
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    .line 1790
    return-void
.end method

.method public final startNode(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;

    .line 1796
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;
    .param p3, "node"    # Ljava/lang/Object;

    .line 1802
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SlotWriter(current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2606
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2606
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, v2

    .line 2605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;
    .locals 2
    .param p1, "group"    # I

    .line 2934
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1540
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skip()Ljava/lang/Object;

    move-result-object v0

    .line 1541
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->set(Ljava/lang/Object;)V

    .line 1542
    return-object v0
.end method

.method public final updateAux(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 1549
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1550
    .local v0, "address":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 3751
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v1, :cond_0

    .line 3755
    nop

    .line 1553
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    aput-object p1, v1, v2

    .line 1554
    return-void

    .line 3752
    .restart local v1    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v3, 0x0

    .line 1551
    .local v3, "$i$a$-runtimeCheck-SlotWriter$updateAux$1":I
    nop

    .line 3752
    .end local v3    # "$i$a$-runtimeCheck-SlotWriter$updateAux$1":I
    const-string/jumbo v3, "Updating the data of a group that was not created with a data slot"

    .line 3753
    .local v3, "message$iv":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public final updateNode(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1638
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateNode(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1633
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateParentNode(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1643
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final verifyDataAnchors$runtime_release()V
    .locals 12

    .line 3140
    const/4 v0, 0x0

    .line 3141
    .local v0, "previousDataIndex":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3142
    .local v1, "owner":I
    const/4 v2, 0x0

    .line 3143
    .local v2, "ownerFound":Z
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v3, v3

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v3, v4

    .line 3144
    .local v3, "slotsSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_7

    .line 3145
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    .line 3146
    .local v6, "address":I
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v7, v6}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v7

    .line 3147
    .local v7, "dataAnchor":I
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v8, v6}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v8

    .line 3148
    .local v8, "dataIndex":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v8, v0, :cond_0

    move v11, v10

    goto :goto_1

    :cond_0
    move v11, v9

    :goto_1
    if-eqz v11, :cond_6

    .line 3152
    if-gt v8, v3, :cond_1

    move v11, v10

    goto :goto_2

    :cond_1
    move v11, v9

    :goto_2
    if-eqz v11, :cond_5

    .line 3155
    if-gez v7, :cond_4

    if-nez v2, :cond_4

    .line 3156
    if-ne v1, v4, :cond_2

    move v9, v10

    :cond_2
    if-eqz v9, :cond_3

    .line 3159
    const/4 v2, 0x1

    goto :goto_3

    .line 3156
    :cond_3
    const/4 v5, 0x0

    .line 3157
    .local v5, "$i$a$-check-SlotWriter$verifyDataAnchors$3":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected the slot gap owner to be "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " found gap at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3156
    .end local v5    # "$i$a$-check-SlotWriter$verifyDataAnchors$3":I
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3161
    :cond_4
    :goto_3
    move v0, v8

    .line 3144
    .end local v6    # "address":I
    .end local v7    # "dataAnchor":I
    .end local v8    # "dataIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3152
    .restart local v6    # "address":I
    .restart local v7    # "dataAnchor":I
    .restart local v8    # "dataIndex":I
    :cond_5
    const/4 v5, 0x0

    .line 3153
    .local v5, "$i$a$-check-SlotWriter$verifyDataAnchors$2":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data index, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", out of bound at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3152
    .end local v5    # "$i$a$-check-SlotWriter$verifyDataAnchors$2":I
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3148
    :cond_6
    const/4 v5, 0x0

    .line 3149
    .local v5, "$i$a$-check-SlotWriter$verifyDataAnchors$1":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data index out of order at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", previous = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3150
    nop

    .line 3149
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3148
    .end local v5    # "$i$a$-check-SlotWriter$verifyDataAnchors$1":I
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3163
    .end local v4    # "index":I
    .end local v6    # "address":I
    .end local v7    # "dataAnchor":I
    .end local v8    # "dataIndex":I
    :cond_7
    return-void
.end method

.method public final verifyParentAnchors$runtime_release()V
    .locals 11

    .line 3167
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3168
    .local v0, "gapStart":I
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3169
    .local v1, "gapLen":I
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    .line 3170
    .local v2, "capacity":I
    const/4 v3, 0x0

    .local v3, "groupAddress":I
    :goto_0
    const-string v4, "Expected a start relative anchor at "

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-ge v3, v0, :cond_2

    .line 3171
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v8, v3}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v8

    .line 3172
    .local v8, "parentAnchor":I
    if-le v8, v6, :cond_0

    move v5, v7

    :cond_0
    if-eqz v5, :cond_1

    .line 3170
    .end local v8    # "parentAnchor":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3172
    .restart local v8    # "parentAnchor":I
    :cond_1
    const/4 v5, 0x0

    .line 3173
    .local v5, "$i$a$-check-SlotWriter$verifyParentAnchors$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3172
    .end local v5    # "$i$a$-check-SlotWriter$verifyParentAnchors$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3176
    .end local v3    # "groupAddress":I
    .end local v8    # "parentAnchor":I
    :cond_2
    add-int v3, v0, v1

    .restart local v3    # "groupAddress":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 3177
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v8, v3}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v8

    .line 3178
    .restart local v8    # "parentAnchor":I
    invoke-direct {p0, v8}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v9

    .line 3179
    .local v9, "parentIndex":I
    if-ge v9, v0, :cond_5

    .line 3180
    if-le v8, v6, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    move v10, v5

    :goto_2
    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 3181
    .local v5, "$i$a$-check-SlotWriter$verifyParentAnchors$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3180
    .end local v5    # "$i$a$-check-SlotWriter$verifyParentAnchors$2":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3184
    :cond_5
    if-gt v8, v6, :cond_6

    move v10, v7

    goto :goto_3

    :cond_6
    move v10, v5

    :goto_3
    if-eqz v10, :cond_7

    .line 3176
    .end local v8    # "parentAnchor":I
    .end local v9    # "parentIndex":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3184
    .restart local v8    # "parentAnchor":I
    .restart local v9    # "parentIndex":I
    :cond_7
    const/4 v4, 0x0

    .line 3185
    .local v4, "$i$a$-check-SlotWriter$verifyParentAnchors$3":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an end relative anchor at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3184
    .end local v4    # "$i$a$-check-SlotWriter$verifyParentAnchors$3":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3189
    .end local v3    # "groupAddress":I
    .end local v8    # "parentAnchor":I
    .end local v9    # "parentIndex":I
    :cond_8
    return-void
.end method
