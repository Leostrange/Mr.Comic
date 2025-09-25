.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;,
        Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 4 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 CompositionLocalMap.kt\nandroidx/compose/runtime/CompositionLocalMapKt\n+ 7 Composer.kt\nandroidx/compose/runtime/GroupKind\n+ 8 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n+ 9 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n+ 10 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 11 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 12 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n+ 13 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 14 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 15 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4197:1\n3157#1,8:4256\n3166#1,3:4279\n1#2:4198\n150#3,8:4199\n150#3,8:4244\n150#3,4:4252\n155#3,3:4282\n150#3,4:4348\n155#3,3:4360\n46#4,5:4207\n46#4,3:4321\n50#4:4327\n4178#5,5:4212\n4178#5,5:4217\n4178#5,5:4226\n4178#5,5:4231\n4178#5,5:4301\n4178#5,5:4306\n4178#5,5:4311\n4178#5,5:4316\n4178#5,5:4338\n4178#5,5:4343\n4178#5,5:4363\n75#6:4222\n4100#7:4223\n4101#7:4224\n26#8:4225\n26#8:4368\n22#8:4369\n180#9,4:4236\n180#9,4:4264\n190#9,8:4268\n185#9,3:4276\n185#9,3:4286\n180#9,8:4352\n33#10,4:4240\n38#10:4285\n33#10,4:4289\n38#10:4300\n82#10,3:4370\n33#10,4:4373\n85#10,2:4377\n38#10:4379\n87#10:4380\n108#11,7:4293\n153#12,3:4324\n157#12:4328\n388#13,6:4329\n394#13,2:4336\n48#14:4335\n1855#15,2:4381\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n*L\n3120#1:4256,8\n3120#1:4279,3\n1313#1:4199,8\n3061#1:4244,8\n3119#1:4252,4\n3119#1:4282,3\n3497#1:4348,4\n3497#1:4360,3\n1565#1:4207,5\n3276#1:4321,3\n3276#1:4327\n1638#1:4212,5\n1651#1:4217,5\n2843#1:4226,5\n2856#1:4231,5\n3234#1:4301,5\n3239#1:4306,5\n3255#1:4311,5\n3275#1:4316,5\n3335#1:4338,5\n3342#1:4343,5\n3509#1:4363,5\n2020#1:4222\n2214#1:4223\n2238#1:4224\n2766#1:4225\n3689#1:4368\n3705#1:4369\n3038#1:4236,4\n3125#1:4264,4\n3126#1:4268,8\n3125#1:4276,3\n3038#1:4286,3\n3499#1:4352,8\n3040#1:4240,4\n3040#1:4285\n3184#1:4289,4\n3184#1:4300\n3408#1:4370,3\n3408#1:4373,4\n3408#1:4377,2\n3408#1:4379\n3408#1:4380\n3186#1:4293,7\n3279#1:4324,3\n3279#1:4328\n3299#1:4329,6\n3299#1:4336,2\n3299#1:4335\n3440#1:4381,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f3\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008)*\u0001A\u0008\u0000\u0018\u00002\u00020\u0001:\u0004\u00d5\u0002\u00d6\u0002BG\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\n\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0002JM\u0010\u0093\u0001\u001a\u00030\u0091\u0001\"\u0005\u0008\u0000\u0010\u0094\u0001\"\u0005\u0008\u0001\u0010\u0095\u00012\u0008\u0010\u0096\u0001\u001a\u0003H\u0094\u00012#\u0010\u0097\u0001\u001a\u001e\u0012\u0005\u0012\u0003H\u0095\u0001\u0012\u0005\u0012\u0003H\u0094\u0001\u0012\u0005\u0012\u00030\u0091\u00010\u0098\u0001\u00a2\u0006\u0003\u0008\u0099\u0001H\u0016\u00a2\u0006\u0003\u0010\u009a\u0001J\t\u0010\u009b\u0001\u001a\u00020\u0005H\u0016J2\u0010\u009c\u0001\u001a\u0003H\u0095\u0001\"\u0005\u0008\u0000\u0010\u0095\u00012\u0007\u0010\u009d\u0001\u001a\u00020\u00182\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0095\u00010\u009e\u0001H\u0087\u0008\u00a2\u0006\u0003\u0010\u009f\u0001J\u0014\u0010\u00a0\u0001\u001a\u00020\u00182\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0017J\u0012\u0010\u00a0\u0001\u001a\u00020\u00182\u0007\u0010\u0096\u0001\u001a\u00020\u0018H\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a1\u0001H\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a2\u0001H\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a3\u0001H\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a4\u0001H\u0017J\u0012\u0010\u00a0\u0001\u001a\u00020\u00182\u0007\u0010\u0096\u0001\u001a\u00020\u001cH\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a5\u0001H\u0017J\u0013\u0010\u00a0\u0001\u001a\u00020\u00182\u0008\u0010\u0096\u0001\u001a\u00030\u00a6\u0001H\u0017J\u0014\u0010\u00a7\u0001\u001a\u00020\u00182\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0017J\u0010\u0010\u00a8\u0001\u001a\u00030\u0091\u0001H\u0000\u00a2\u0006\u0003\u0008\u00a9\u0001J\n\u0010\u00aa\u0001\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u00ab\u0001\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u00ac\u0001\u001a\u00030\u0091\u0001H\u0016JI\u0010\u00ad\u0001\u001a\u00030\u0091\u00012\u001d\u0010\u00ae\u0001\u001a\u0018\u0012\u0004\u0012\u000205\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u007f\u0018\u00010\u00b0\u00010\u00af\u00012\u0015\u0010\u00b1\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0091\u00010\u009e\u0001\u00a2\u0006\u0003\u0008\u00b2\u0001H\u0000\u00a2\u0006\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001J$\u0010\u00b5\u0001\u001a\u00020\u001c2\u0007\u0010\u00b6\u0001\u001a\u00020\u001c2\u0007\u0010\u00b7\u0001\u001a\u00020\u001c2\u0007\u0010\u00b8\u0001\u001a\u00020\u001cH\u0002J(\u0010\u00b9\u0001\u001a\u0003H\u0095\u0001\"\u0005\u0008\u0000\u0010\u0095\u00012\u000f\u0010\u00ba\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0095\u00010\u00bb\u0001H\u0017\u00a2\u0006\u0003\u0010\u00bc\u0001J\n\u0010\u00bd\u0001\u001a\u00030\u0091\u0001H\u0002J\"\u0010\u00be\u0001\u001a\u00030\u0091\u0001\"\u0005\u0008\u0000\u0010\u0095\u00012\u000f\u0010\u00bf\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0095\u00010\u009e\u0001H\u0016J\t\u0010\u00c0\u0001\u001a\u00020kH\u0002J\u0012\u0010\u00c0\u0001\u001a\u00020k2\u0007\u0010\u00b6\u0001\u001a\u00020\u001cH\u0002J\u0010\u0010\u00c1\u0001\u001a\u00030\u0091\u0001H\u0000\u00a2\u0006\u0003\u0008\u00c2\u0001J\u0013\u0010\u00c3\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00a0\u0001\u001a\u00020\u0018H\u0017J\n\u0010\u00c4\u0001\u001a\u00030\u0091\u0001H\u0016J\n\u0010\u00c5\u0001\u001a\u00030\u0091\u0001H\u0016J\u0010\u0010\u00c6\u0001\u001a\u00030\u0091\u0001H\u0000\u00a2\u0006\u0003\u0008\u00c7\u0001JH\u0010\u00c8\u0001\u001a\u00030\u0091\u00012\u001d\u0010\u00ae\u0001\u001a\u0018\u0012\u0004\u0012\u000205\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u007f\u0018\u00010\u00b0\u00010\u00af\u00012\u0017\u0010\u00b1\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0091\u0001\u0018\u00010\u009e\u0001\u00a2\u0006\u0003\u0008\u00b2\u0001H\u0002\u00a2\u0006\u0003\u0010\u00b4\u0001J\u001c\u0010\u00c9\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u001c2\u0007\u0010\u00ca\u0001\u001a\u00020\u001cH\u0002J\n\u0010\u00cb\u0001\u001a\u00030\u0091\u0001H\u0016J\u0013\u0010\u00cc\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00cd\u0001\u001a\u00020\u0018H\u0002J\n\u0010\u00ce\u0001\u001a\u00030\u0091\u0001H\u0017J\n\u0010\u00cf\u0001\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u00d0\u0001\u001a\u00030\u0091\u0001H\u0017J\n\u0010\u00d1\u0001\u001a\u00030\u0091\u0001H\u0016J\n\u0010\u00d2\u0001\u001a\u00030\u0091\u0001H\u0017J\n\u0010\u00d3\u0001\u001a\u00030\u0091\u0001H\u0017J\n\u0010\u00d4\u0001\u001a\u00030\u0091\u0001H\u0017J\u000c\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d6\u0001H\u0017J\n\u0010\u00d7\u0001\u001a\u00030\u0091\u0001H\u0016J\u0008\u0010\u00d8\u0001\u001a\u00030\u0091\u0001J\n\u0010\u00d9\u0001\u001a\u00030\u0091\u0001H\u0002J\u0013\u0010\u00da\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00db\u0001\u001a\u00020\u001cH\u0016J\n\u0010\u00dc\u0001\u001a\u00030\u0091\u0001H\u0002J\u001e\u0010\u00dd\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00cd\u0001\u001a\u00020\u00182\t\u0010\u00de\u0001\u001a\u0004\u0018\u00010mH\u0002J\u001b\u0010\u00df\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u00e0\u0001\u001a\u00020\u001c2\u0006\u0010W\u001a\u00020\u0018H\u0002J\n\u0010\u00e1\u0001\u001a\u00030\u0091\u0001H\u0002J\u000e\u0010E\u001a\u00020\u0018H\u0000\u00a2\u0006\u0003\u0008\u00e2\u0001J#\u0010\u00e3\u0001\u001a\u00030\u0091\u00012\u000c\u0010\u0096\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00e4\u00012\t\u0010\u00e5\u0001\u001a\u0004\u0018\u00010\u007fH\u0017J+\u0010\u00e6\u0001\u001a\u00030\u0091\u00012\u001f\u0010\u00e7\u0001\u001a\u001a\u0012\u0015\u0012\u0013\u0012\u0005\u0012\u00030\u00ea\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00ea\u00010\u00e9\u00010\u00e8\u0001H\u0002J+\u0010\u00eb\u0001\u001a\u00030\u0091\u00012\u001f\u0010\u00e7\u0001\u001a\u001a\u0012\u0015\u0012\u0013\u0012\u0005\u0012\u00030\u00ea\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00ea\u00010\u00e9\u00010\u00e8\u0001H\u0017J\u0012\u0010\u00ec\u0001\u001a\u00020\u001c2\u0007\u0010\u00ed\u0001\u001a\u00020\u001cH\u0002J9\u0010\u00ee\u0001\u001a\u00030\u0091\u00012\u0010\u0010\u00b1\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u007f0\u00e4\u00012\u0007\u0010\u00ef\u0001\u001a\u00020k2\t\u0010\u00e5\u0001\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u00f0\u0001\u001a\u00020\u0018H\u0002J\u001f\u0010\u00f1\u0001\u001a\u00020\u007f2\t\u0010\u00f2\u0001\u001a\u0004\u0018\u00010\u007f2\t\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u007fH\u0017J\u000b\u0010\u00f4\u0001\u001a\u0004\u0018\u00010\u007fH\u0001J\u000b\u0010\u00f5\u0001\u001a\u0004\u0018\u00010\u007fH\u0001J-\u0010\u00f6\u0001\u001a\u00020\u001c2\u0007\u0010\u00f7\u0001\u001a\u00020\u001c2\u0007\u0010\u00b6\u0001\u001a\u00020\u001c2\u0007\u0010\u00b7\u0001\u001a\u00020\u001c2\u0007\u0010\u00f8\u0001\u001a\u00020\u001cH\u0002J\u000f\u0010\u00f9\u0001\u001a\u00020\u001cH\u0001\u00a2\u0006\u0003\u0008\u00fa\u0001J!\u0010\u00fb\u0001\u001a\u00030\u0091\u00012\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u00030\u0091\u00010\u009e\u0001H\u0000\u00a2\u0006\u0003\u0008\u00fc\u0001J.\u0010\u00fd\u0001\u001a\u00020\u00182\u001d\u0010\u00ae\u0001\u001a\u0018\u0012\u0004\u0012\u000205\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u007f\u0018\u00010\u00b0\u00010\u00af\u0001H\u0000\u00a2\u0006\u0003\u0008\u00fe\u0001Jv\u0010\u00ff\u0001\u001a\u0003H\u0080\u0002\"\u0005\u0008\u0000\u0010\u0080\u00022\u000b\u0008\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u000f2\u000b\u0008\u0002\u0010\u0082\u0002\u001a\u0004\u0018\u00010\u000f2\u000b\u0008\u0002\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\u001c2%\u0008\u0002\u0010\\\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u000205\u0012\r\u0012\u000b\u0012\u0004\u0012\u00020\u007f\u0018\u00010\u00b0\u00010\u00e9\u00010\u00e8\u00012\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0080\u00020\u009e\u0001H\u0002\u00a2\u0006\u0003\u0010\u0083\u0002J\n\u0010\u0084\u0002\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u0085\u0002\u001a\u00030\u0091\u0001H\u0002J\u0013\u0010\u0086\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u0087\u0002\u001a\u00020OH\u0002J\u0013\u0010\u0088\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u0089\u0002\u001a\u00020kH\u0002J\u001b\u0010\u008a\u0002\u001a\u00030\u0091\u00012\u000f\u0010\u008b\u0002\u001a\n\u0012\u0005\u0012\u00030\u0091\u00010\u009e\u0001H\u0016J%\u0010\u008c\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u008d\u0002\u001a\u00020\u001c2\u0007\u0010\u008e\u0002\u001a\u00020\u001c2\u0007\u0010\u008f\u0002\u001a\u00020\u001cH\u0002J\u0013\u0010\u0090\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u0091\u0002\u001a\u00020{H\u0016J\u000b\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u007fH\u0016J\n\u0010\u0093\u0002\u001a\u00030\u0091\u0001H\u0002J\u0013\u0010\u0094\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u0095\u0002\u001a\u00020\u001cH\u0002J\n\u0010\u0096\u0002\u001a\u00030\u0091\u0001H\u0017J\n\u0010\u0097\u0002\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u0098\u0002\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u0099\u0002\u001a\u00030\u0091\u0001H\u0017J\u0014\u0010\u009a\u0002\u001a\u00030\u0091\u00012\u0008\u0010\u009a\u0002\u001a\u00030\u009b\u0002H\u0017J\n\u0010\u009c\u0002\u001a\u00030\u0091\u0001H\u0017J\u001d\u0010\u009d\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001c2\u0008\u0010\u009a\u0002\u001a\u00030\u009b\u0002H\u0017J?\u0010\u009e\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001c2\t\u0010\u009f\u0002\u001a\u0004\u0018\u00010\u007f2\u0008\u0010\u00a0\u0002\u001a\u00030\u00a1\u00022\t\u0010\u00a2\u0002\u001a\u0004\u0018\u00010\u007fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002J\n\u0010\u00a5\u0002\u001a\u00030\u0091\u0001H\u0017J\u0013\u0010\u00a6\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001cH\u0002J\u001e\u0010\u00a6\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001c2\t\u0010\u00a7\u0002\u001a\u0004\u0018\u00010\u007fH\u0002J\u001e\u0010\u00a8\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001c2\t\u0010\u00a7\u0002\u001a\u0004\u0018\u00010\u007fH\u0017J\n\u0010\u00a9\u0002\u001a\u00030\u0091\u0001H\u0016J\u0018\u0010\u00aa\u0002\u001a\u00030\u0091\u00012\u000c\u0010\u0096\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00ab\u0002H\u0017J\'\u0010\u00ac\u0002\u001a\u00030\u0091\u00012\u0015\u0010\u00ad\u0002\u001a\u0010\u0012\u000b\u0008\u0001\u0012\u0007\u0012\u0002\u0008\u00030\u00ab\u00020\u00ae\u0002H\u0017\u00a2\u0006\u0003\u0010\u00af\u0002J\u001e\u0010\u00b0\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00cd\u0001\u001a\u00020\u00182\t\u0010\u00a2\u0002\u001a\u0004\u0018\u00010\u007fH\u0002J\u0013\u0010\u00b1\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001cH\u0017J\u0012\u0010\u00b2\u0002\u001a\u00020\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001cH\u0017J\u001e\u0010\u00b3\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00ba\u0001\u001a\u00020\u001c2\t\u0010\u00a7\u0002\u001a\u0004\u0018\u00010\u007fH\u0016J\n\u0010\u00b4\u0002\u001a\u00030\u0091\u0001H\u0016J\u0008\u0010\u00b5\u0002\u001a\u00030\u0091\u0001J\n\u0010\u00b6\u0002\u001a\u00030\u0091\u0001H\u0002J#\u0010\u00b7\u0002\u001a\u00020\u00182\u0007\u0010\u0091\u0002\u001a\u0002052\t\u0010\u00b8\u0002\u001a\u0004\u0018\u00010\u007fH\u0000\u00a2\u0006\u0003\u0008\u00b9\u0002J\u0015\u0010\u00ba\u0002\u001a\u00030\u0091\u00012\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0001J)\u0010\u00bb\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00bc\u0002\u001a\u00020\u001c2\t\u0010\u00a7\u0002\u001a\u0004\u0018\u00010\u007f2\t\u0010\u00a2\u0002\u001a\u0004\u0018\u00010\u007fH\u0002J\u0013\u0010\u00bd\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00be\u0002\u001a\u00020\u001cH\u0002J)\u0010\u00bf\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00bc\u0002\u001a\u00020\u001c2\t\u0010\u00a7\u0002\u001a\u0004\u0018\u00010\u007f2\t\u0010\u00a2\u0002\u001a\u0004\u0018\u00010\u007fH\u0002J\u0013\u0010\u00c0\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00bc\u0002\u001a\u00020\u001cH\u0002J\u001c\u0010\u00c1\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u001c2\u0007\u0010\u00c2\u0002\u001a\u00020\u001cH\u0002J\u001c\u0010\u00c3\u0002\u001a\u00030\u0091\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u001c2\u0007\u0010\u00c4\u0002\u001a\u00020\u001cH\u0002J\u001b\u0010\u00c5\u0002\u001a\u00020k2\u0007\u0010\u00c6\u0002\u001a\u00020k2\u0007\u0010\u00c7\u0002\u001a\u00020kH\u0002J\u0015\u0010\u00c8\u0002\u001a\u00030\u0091\u00012\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0016J\u0015\u0010\u00c9\u0002\u001a\u00030\u0091\u00012\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0002J\u0015\u0010\u00ca\u0002\u001a\u00030\u0091\u00012\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u007fH\u0001J\u0012\u0010\u00cb\u0002\u001a\u00020\u001c2\u0007\u0010\u00b6\u0001\u001a\u00020\u001cH\u0002J\n\u0010\u00cc\u0002\u001a\u00030\u0091\u0001H\u0016J\n\u0010\u00cd\u0002\u001a\u00030\u0091\u0001H\u0002J\n\u0010\u00ce\u0002\u001a\u00030\u0091\u0001H\u0002J\u0010\u0010\u00cf\u0002\u001a\u00030\u0091\u0001H\u0000\u00a2\u0006\u0003\u0008\u00d0\u0002J1\u0010\u00d1\u0002\u001a\u0003H\u0080\u0002\"\u0005\u0008\u0000\u0010\u0080\u00022\u0006\u0010t\u001a\u00020u2\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0080\u00020\u009e\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00d2\u0002J\u0016\u0010\u00d3\u0002\u001a\u00020\u001c*\u00020u2\u0007\u0010\u00b6\u0001\u001a\u00020\u001cH\u0002J\u0018\u0010\u00d4\u0002\u001a\u0004\u0018\u00010\u007f*\u00020u2\u0007\u0010\u00ed\u0001\u001a\u00020\u001cH\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010*\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u001c8\u0016@RX\u0097\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010\u001eR\u0014\u0010.\u001a\u00020/8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0014\u00102\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u001eR\u0016\u00104\u001a\u0004\u0018\u0001058@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u001a\u00108\u001a\u00020\u00188VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00089\u0010,\u001a\u0004\u0008:\u0010\u001aR\u001c\u0010;\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0010\u0010@\u001a\u00020AX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010BR\u000e\u0010C\u001a\u00020DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010I\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u001aR\u0014\u0010K\u001a\u00020\u00188@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u001aR\u000e\u0010M\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010R\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR&\u0010W\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u00188\u0016@RX\u0097\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008X\u0010,\u001a\u0004\u0008Y\u0010\u001aR\u0014\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002050[X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020^0]X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010_\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0018@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010\u001aR\u001e\u0010a\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0018@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010\u001aR\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u0004\u0018\u00010dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u0004\u0018\u00010fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010g\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010h\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020kX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u0004\u0018\u00010mX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010m0[X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u0004\u0018\u00010kX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010p\u001a\n\u0012\u0004\u0012\u00020k\u0018\u00010qX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u00020DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010t\u001a\u00020uX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR\u0016\u0010z\u001a\u0004\u0018\u00010{8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}R\u0018\u0010~\u001a\u0004\u0018\u00010\u007f8VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u000f\u0010\u0082\u0001\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0083\u0001\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0084\u0001\u001a\u00020\u00188VX\u0097\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0085\u0001\u0010,\u001a\u0005\u0008\u0086\u0001\u0010\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0087\u0001\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0088\u0001\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0089\u0001\u001a\u00020DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u008a\u0001\u001a\u00030\u008b\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u008c\u0001\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u007f*\u00020u8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u00d7\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/ComposerImpl;",
        "Landroidx/compose/runtime/Composer;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "slotTable",
        "Landroidx/compose/runtime/SlotTable;",
        "abandonSet",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "changes",
        "Landroidx/compose/runtime/changelist/ChangeList;",
        "lateChanges",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V",
        "getApplier",
        "()Landroidx/compose/runtime/Applier;",
        "applyCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getApplyCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "areChildrenComposing",
        "",
        "getAreChildrenComposing$runtime_release",
        "()Z",
        "changeCount",
        "",
        "getChangeCount$runtime_release",
        "()I",
        "changeListWriter",
        "Landroidx/compose/runtime/changelist/ComposerChangeListWriter;",
        "childrenComposing",
        "getComposition",
        "()Landroidx/compose/runtime/ControlledComposition;",
        "compositionData",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "getCompositionData",
        "()Landroidx/compose/runtime/tooling/CompositionData;",
        "compositionToken",
        "<set-?>",
        "compoundKeyHash",
        "getCompoundKeyHash$annotations",
        "()V",
        "getCompoundKeyHash",
        "currentCompositionLocalMap",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "getCurrentCompositionLocalMap",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
        "currentMarker",
        "getCurrentMarker",
        "currentRecomposeScope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "getCurrentRecomposeScope$runtime_release",
        "()Landroidx/compose/runtime/RecomposeScopeImpl;",
        "defaultsInvalid",
        "getDefaultsInvalid$annotations",
        "getDefaultsInvalid",
        "deferredChanges",
        "getDeferredChanges$runtime_release",
        "()Landroidx/compose/runtime/changelist/ChangeList;",
        "setDeferredChanges$runtime_release",
        "(Landroidx/compose/runtime/changelist/ChangeList;)V",
        "derivedStateObserver",
        "androidx/compose/runtime/ComposerImpl$derivedStateObserver$1",
        "Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;",
        "entersStack",
        "Landroidx/compose/runtime/IntStack;",
        "forceRecomposeScopes",
        "forciblyRecompose",
        "groupNodeCount",
        "groupNodeCountStack",
        "hasInvalidations",
        "getHasInvalidations",
        "hasPendingChanges",
        "getHasPendingChanges$runtime_release",
        "implicitRootStart",
        "insertAnchor",
        "Landroidx/compose/runtime/Anchor;",
        "insertFixups",
        "Landroidx/compose/runtime/changelist/FixupList;",
        "insertTable",
        "getInsertTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "setInsertTable$runtime_release",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "inserting",
        "getInserting$annotations",
        "getInserting",
        "invalidateStack",
        "Landroidx/compose/runtime/Stack;",
        "invalidations",
        "",
        "Landroidx/compose/runtime/Invalidation;",
        "isComposing",
        "isComposing$runtime_release",
        "isDisposed",
        "isDisposed$runtime_release",
        "nodeCountOverrides",
        "",
        "nodeCountVirtualOverrides",
        "Landroidx/collection/MutableIntIntMap;",
        "nodeExpected",
        "nodeIndex",
        "nodeIndexStack",
        "parentProvider",
        "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
        "pending",
        "Landroidx/compose/runtime/Pending;",
        "pendingStack",
        "providerCache",
        "providerUpdates",
        "Landroidx/compose/runtime/collection/IntMap;",
        "providersInvalid",
        "providersInvalidStack",
        "reader",
        "Landroidx/compose/runtime/SlotReader;",
        "getReader$runtime_release",
        "()Landroidx/compose/runtime/SlotReader;",
        "setReader$runtime_release",
        "(Landroidx/compose/runtime/SlotReader;)V",
        "recomposeScope",
        "Landroidx/compose/runtime/RecomposeScope;",
        "getRecomposeScope",
        "()Landroidx/compose/runtime/RecomposeScope;",
        "recomposeScopeIdentity",
        "",
        "getRecomposeScopeIdentity",
        "()Ljava/lang/Object;",
        "reusing",
        "reusingGroup",
        "skipping",
        "getSkipping$annotations",
        "getSkipping",
        "sourceInformationEnabled",
        "startedGroup",
        "startedGroups",
        "writer",
        "Landroidx/compose/runtime/SlotWriter;",
        "writerHasAProvider",
        "node",
        "getNode",
        "(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;",
        "abortRoot",
        "",
        "addRecomposeScope",
        "apply",
        "V",
        "T",
        "value",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "buildContext",
        "cache",
        "invalid",
        "Lkotlin/Function0;",
        "(ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "changed",
        "",
        "",
        "",
        "",
        "",
        "",
        "changedInstance",
        "changesApplied",
        "changesApplied$runtime_release",
        "cleanUpCompose",
        "clearUpdatedNodeCounts",
        "collectParameterInformation",
        "composeContent",
        "invalidationsRequested",
        "Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "composeContent$runtime_release",
        "(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V",
        "compoundKeyOf",
        "group",
        "recomposeGroup",
        "recomposeKey",
        "consume",
        "key",
        "Landroidx/compose/runtime/CompositionLocal;",
        "(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;",
        "createFreshInsertTable",
        "createNode",
        "factory",
        "currentCompositionLocalScope",
        "deactivate",
        "deactivate$runtime_release",
        "deactivateToEndGroup",
        "disableReusing",
        "disableSourceInformation",
        "dispose",
        "dispose$runtime_release",
        "doCompose",
        "doRecordDownsFor",
        "nearestCommonRoot",
        "enableReusing",
        "end",
        "isNode",
        "endDefaults",
        "endGroup",
        "endMovableGroup",
        "endNode",
        "endProvider",
        "endProviders",
        "endReplaceableGroup",
        "endRestartGroup",
        "Landroidx/compose/runtime/ScopeUpdateScope;",
        "endReusableGroup",
        "endReuseFromRoot",
        "endRoot",
        "endToMarker",
        "marker",
        "ensureWriter",
        "enterGroup",
        "newPending",
        "exitGroup",
        "expectedNodeCount",
        "finalizeCompose",
        "forceRecomposeScopes$runtime_release",
        "insertMovableContent",
        "Landroidx/compose/runtime/MovableContent;",
        "parameter",
        "insertMovableContentGuarded",
        "references",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "insertMovableContentReferences",
        "insertedGroupVirtualIndex",
        "index",
        "invokeMovableContentLambda",
        "locals",
        "force",
        "joinKey",
        "left",
        "right",
        "nextSlot",
        "nextSlotForCache",
        "nodeIndexOf",
        "groupLocation",
        "recomposeIndex",
        "parentKey",
        "parentKey$runtime_release",
        "prepareCompose",
        "prepareCompose$runtime_release",
        "recompose",
        "recompose$runtime_release",
        "recomposeMovableContent",
        "R",
        "from",
        "to",
        "(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "recomposeToGroupEnd",
        "recordDelete",
        "recordInsert",
        "anchor",
        "recordProviderUpdate",
        "providers",
        "recordSideEffect",
        "effect",
        "recordUpsAndDowns",
        "oldGroup",
        "newGroup",
        "commonRoot",
        "recordUsed",
        "scope",
        "rememberedValue",
        "reportAllMovableContent",
        "reportFreeMovableContent",
        "groupBeingRemoved",
        "skipCurrentGroup",
        "skipGroup",
        "skipReaderToGroupEnd",
        "skipToGroupEnd",
        "sourceInformation",
        "",
        "sourceInformationMarkerEnd",
        "sourceInformationMarkerStart",
        "start",
        "objectKey",
        "kind",
        "Landroidx/compose/runtime/GroupKind;",
        "data",
        "start-BaiHCIY",
        "(ILjava/lang/Object;ILjava/lang/Object;)V",
        "startDefaults",
        "startGroup",
        "dataKey",
        "startMovableGroup",
        "startNode",
        "startProvider",
        "Landroidx/compose/runtime/ProvidedValue;",
        "startProviders",
        "values",
        "",
        "([Landroidx/compose/runtime/ProvidedValue;)V",
        "startReaderGroup",
        "startReplaceableGroup",
        "startRestartGroup",
        "startReusableGroup",
        "startReusableNode",
        "startReuseFromRoot",
        "startRoot",
        "tryImminentInvalidation",
        "instance",
        "tryImminentInvalidation$runtime_release",
        "updateCachedValue",
        "updateCompoundKeyWhenWeEnterGroup",
        "groupKey",
        "updateCompoundKeyWhenWeEnterGroupKeyHash",
        "keyHash",
        "updateCompoundKeyWhenWeExitGroup",
        "updateCompoundKeyWhenWeExitGroupKeyHash",
        "updateNodeCount",
        "count",
        "updateNodeCountOverrides",
        "newCount",
        "updateProviderMapGroup",
        "parentScope",
        "currentProviders",
        "updateRememberedValue",
        "updateSlot",
        "updateValue",
        "updatedNodeCount",
        "useNode",
        "validateNodeExpected",
        "validateNodeNotExpected",
        "verifyConsistent",
        "verifyConsistent$runtime_release",
        "withReader",
        "(Landroidx/compose/runtime/SlotReader;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "groupCompoundKeyPart",
        "nodeAt",
        "CompositionContextHolder",
        "CompositionContextImpl",
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
.field private final abandonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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

.field private final changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

.field private changes:Landroidx/compose/runtime/changelist/ChangeList;

.field private childrenComposing:I

.field private final composition:Landroidx/compose/runtime/ControlledComposition;

.field private compositionToken:I

.field private compoundKeyHash:I

.field private deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field private final entersStack:Landroidx/compose/runtime/IntStack;

.field private forceRecomposeScopes:Z

.field private forciblyRecompose:Z

.field private groupNodeCount:I

.field private groupNodeCountStack:Landroidx/compose/runtime/IntStack;

.field private implicitRootStart:Z

.field private insertAnchor:Landroidx/compose/runtime/Anchor;

.field private insertFixups:Landroidx/compose/runtime/changelist/FixupList;

.field private insertTable:Landroidx/compose/runtime/SlotTable;

.field private inserting:Z

.field private final invalidateStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;"
        }
    .end annotation
.end field

.field private isComposing:Z

.field private isDisposed:Z

.field private lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private nodeCountOverrides:[I

.field private nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field private nodeExpected:Z

.field private nodeIndex:I

.field private nodeIndexStack:Landroidx/compose/runtime/IntStack;

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;

.field private parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private pending:Landroidx/compose/runtime/Pending;

.field private final pendingStack:Landroidx/compose/runtime/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Stack<",
            "Landroidx/compose/runtime/Pending;",
            ">;"
        }
    .end annotation
.end field

.field private providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private providerUpdates:Landroidx/compose/runtime/collection/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IntMap<",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
            ">;"
        }
    .end annotation
.end field

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field private reader:Landroidx/compose/runtime/SlotReader;

.field private reusing:Z

.field private reusingGroup:I

.field private final slotTable:Landroidx/compose/runtime/SlotTable;

.field private sourceInformationEnabled:Z

.field private startedGroup:Z

.field private final startedGroups:Landroidx/compose/runtime/IntStack;

.field private writer:Landroidx/compose/runtime/SlotWriter;

.field private writerHasAProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/ComposerImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 7
    .param p1, "applier"    # Landroidx/compose/runtime/Applier;
    .param p2, "parentContext"    # Landroidx/compose/runtime/CompositionContext;
    .param p3, "slotTable"    # Landroidx/compose/runtime/SlotTable;
    .param p4, "abandonSet"    # Ljava/util/Set;
    .param p5, "changes"    # Landroidx/compose/runtime/changelist/ChangeList;
    .param p6, "lateChanges"    # Landroidx/compose/runtime/changelist/ChangeList;
    .param p7, "composition"    # Landroidx/compose/runtime/ControlledComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Landroidx/compose/runtime/changelist/ChangeList;",
            "Landroidx/compose/runtime/changelist/ChangeList;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 1242
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1247
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 1249
    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 1251
    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 1253
    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 1258
    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 1260
    new-instance v0, Landroidx/compose/runtime/Stack;

    invoke-direct {v0}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    .line 1263
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    .line 1265
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 1272
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 1274
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1277
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1283
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    .line 1293
    new-instance v0, Landroidx/compose/runtime/Stack;

    invoke-direct {v0}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .line 1303
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    .line 4198
    move-object v1, v0

    .local v1, "it":Landroidx/compose/runtime/SlotReader;
    const/4 v2, 0x0

    .line 1303
    .local v2, "$i$a$-also-ComposerImpl$reader$1":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    .end local v1    # "it":Landroidx/compose/runtime/SlotReader;
    .end local v2    # "$i$a$-also-ComposerImpl$reader$1":I
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1305
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 1307
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    .line 4198
    move-object v1, v0

    .local v1, "it":Landroidx/compose/runtime/SlotWriter;
    const/4 v2, 0x0

    .line 1307
    .local v2, "$i$a$-also-ComposerImpl$writer$1":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->close()V

    .end local v1    # "it":Landroidx/compose/runtime/SlotWriter;
    .end local v2    # "$i$a$-also-ComposerImpl$writer$1":I
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1312
    new-instance v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 1313
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .local v0, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v1, 0x0

    .line 4199
    .local v1, "$i$f$read":I
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v2

    .line 4200
    nop

    .local v2, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/4 v3, 0x0

    .line 4201
    .local v3, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4202
    move-object v4, v2

    .local v4, "it":Landroidx/compose/runtime/SlotReader;
    const/4 v5, 0x0

    .line 1313
    .local v5, "$i$a$-read-ComposerImpl$insertAnchor$1":I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4202
    .end local v4    # "it":Landroidx/compose/runtime/SlotReader;
    .end local v5    # "$i$a$-read-ComposerImpl$insertAnchor$1":I
    nop

    .line 4204
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 4205
    nop

    .line 4201
    nop

    .line 4200
    .end local v2    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v3    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4206
    nop

    .line 1313
    .end local v0    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v1    # "$i$f$read":I
    iput-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 1314
    new-instance v0, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    .line 3355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->implicitRootStart:Z

    .line 3360
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 1233
    return-void

    .line 4204
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v1    # "$i$f$read":I
    .restart local v2    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v3    # "$i$a$-let-SlotTable$read$1$iv":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v4
.end method

.method private final abortRoot()V
    .locals 1

    .line 1495
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    .line 1496
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    .line 1497
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1498
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1499
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1500
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1502
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1503
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 1505
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 1508
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/FixupList;->clear()V

    .line 1509
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    .line 1510
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 1511
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 1512
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 1513
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 1514
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1515
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 1516
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 1517
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1518
    return-void
.end method

.method public static final synthetic access$getChangeListWriter$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    return-object v0
.end method

.method public static final synthetic access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return v0
.end method

.method public static final synthetic access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-object v0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public static final synthetic access$getProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/collection/IntMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    return-object v0
.end method

.method public static final synthetic access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;

    .line 1232
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public static final synthetic access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;
    .param p1, "content"    # Landroidx/compose/runtime/MovableContent;
    .param p2, "locals"    # Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .param p3, "parameter"    # Ljava/lang/Object;
    .param p4, "force"    # Z

    .line 1232
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static final synthetic access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;
    .param p1, "<set-?>"    # I

    .line 1232
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public static final synthetic access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;
    .param p1, "<set-?>"    # [I

    .line 1232
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-void
.end method

.method public static final synthetic access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/ComposerImpl;
    .param p1, "<set-?>"    # Landroidx/compose/runtime/collection/IntMap;

    .line 1232
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    return-void
.end method

.method private final addRecomposeScope()V
    .locals 7

    .line 2886
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    if-eqz v0, :cond_0

    .line 2887
    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeOwner;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 2888
    .local v0, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2889
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 2890
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    .end local v0    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    goto :goto_1

    .line 2892
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    .line 2893
    .local v0, "invalidation":Landroidx/compose/runtime/Invalidation;
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2894
    .local v2, "slot":Ljava/lang/Object;
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2897
    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/runtime/CompositionImpl;

    check-cast v4, Landroidx/compose/runtime/RecomposeScopeOwner;

    invoke-direct {v3, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    move-object v1, v3

    .line 2898
    .local v1, "newScope":Landroidx/compose/runtime/RecomposeScopeImpl;
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 2899
    nop

    .end local v1    # "newScope":Landroidx/compose/runtime/RecomposeScopeImpl;
    goto :goto_0

    .line 2900
    :cond_1
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 2894
    :goto_0
    nop

    .line 2901
    .local v1, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getForcedRecompose()Z

    move-result v3

    move v4, v3

    .local v4, "forced":Z
    const/4 v5, 0x0

    .line 2902
    .local v5, "$i$a$-also-ComposerImpl$addRecomposeScope$1":I
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    .line 2903
    :cond_2
    nop

    .line 2901
    .end local v4    # "forced":Z
    .end local v5    # "$i$a$-also-ComposerImpl$addRecomposeScope$1":I
    if-eqz v3, :cond_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    .line 2904
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2905
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    .line 2907
    .end local v0    # "invalidation":Landroidx/compose/runtime/Invalidation;
    .end local v1    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "slot":Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method private final cleanUpCompose()V
    .locals 1

    .line 3514
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 3515
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3516
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3517
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3518
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 3519
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->resetTransientState()V

    .line 3520
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    .line 3521
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->clearUpdatedNodeCounts()V

    .line 3522
    return-void
.end method

.method private final clearUpdatedNodeCounts()V
    .locals 1

    .line 2720
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2721
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 2722
    return-void
.end method

.method private final compoundKeyOf(III)I
    .locals 7
    .param p1, "group"    # I
    .param p2, "recomposeGroup"    # I
    .param p3, "recomposeKey"    # I

    .line 2760
    if-ne p1, p2, :cond_0

    move v3, p3

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    .local v0, "$this$compoundKeyOf_u24lambda_u2420":Landroidx/compose/runtime/ComposerImpl;
    const/4 v1, 0x0

    .line 2761
    .local v1, "$i$a$-run-ComposerImpl$compoundKeyOf$1":I
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {v0, v2, p1}, Landroidx/compose/runtime/ComposerImpl;->groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I

    move-result v2

    .line 2762
    .local v2, "groupKey":I
    const v3, 0x78cc281

    if-ne v2, v3, :cond_1

    .line 2763
    move v3, v2

    goto :goto_0

    .line 2766
    :cond_1
    nop

    .line 2767
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v3

    .line 2768
    nop

    .line 2769
    nop

    .line 2766
    invoke-direct {v0, v3, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result v3

    .line 2770
    nop

    .line 2766
    const/4 v4, 0x3

    .local v3, "$this$rol$iv":I
    .local v4, "other$iv":I
    const/4 v5, 0x0

    .line 4225
    .local v5, "$i$f$rol":I
    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    .line 2771
    .end local v3    # "$this$rol$iv":I
    .end local v4    # "other$iv":I
    .end local v5    # "$i$f$rol":I
    nop

    .line 2765
    xor-int v3, v6, v2

    .line 2762
    :goto_0
    nop

    .line 2760
    .end local v0    # "$this$compoundKeyOf_u24lambda_u2420":Landroidx/compose/runtime/ComposerImpl;
    .end local v1    # "$i$a$-run-ComposerImpl$compoundKeyOf$1":I
    .end local v2    # "groupKey":I
    nop

    :goto_1
    return v3
.end method

.method private final createFreshInsertTable()V
    .locals 3

    .line 2188
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2189
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2190
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    .line 4198
    move-object v1, v0

    .local v1, "it":Landroidx/compose/runtime/SlotWriter;
    const/4 v2, 0x0

    .line 2190
    .local v2, "$i$a$-also-ComposerImpl$createFreshInsertTable$1":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->close()V

    .end local v1    # "it":Landroidx/compose/runtime/SlotWriter;
    .end local v2    # "$i$a$-also-ComposerImpl$createFreshInsertTable$1":I
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2191
    return-void
.end method

.method private final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 2

    .line 1967
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    .line 4198
    .local v0, "it":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/4 v1, 0x0

    .line 1967
    .local v1, "$i$a$-let-ComposerImpl$currentCompositionLocalScope$1":I
    return-object v0

    .line 1968
    .end local v0    # "it":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .end local v1    # "$i$a$-let-ComposerImpl$currentCompositionLocalScope$1":I
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    return-object v0
.end method

.method private final currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 5
    .param p1, "group"    # I

    .line 1978
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    const/16 v2, 0xca

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    .line 1980
    .local v0, "current":I
    :goto_0
    if-lez v0, :cond_1

    .line 1981
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1982
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1985
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1986
    .local v1, "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1987
    return-object v1

    .line 1989
    .end local v1    # "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v0

    goto :goto_0

    .line 1992
    .end local v0    # "current":I
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 1993
    move v0, p1

    .line 1994
    .restart local v0    # "current":I
    :goto_1
    if-lez v0, :cond_5

    .line 1995
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1996
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1999
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v2, :cond_3

    .line 2000
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1999
    :cond_3
    move-object v1, v2

    .line 2001
    .restart local v1    # "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2002
    return-object v1

    .line 2004
    .end local v1    # "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    :cond_4
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_1

    .line 2007
    .end local v0    # "current":I
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2008
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0
.end method

.method private final doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 17
    .param p1, "invalidationsRequested"    # Landroidx/compose/runtime/collection/IdentityArrayMap;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 3275
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-boolean v0, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .local v0, "value$iv":Z
    const/4 v4, 0x0

    .line 4316
    .local v4, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_6

    .line 4320
    nop

    .line 3276
    .end local v0    # "value$iv":Z
    .end local v4    # "$i$f$runtimeCheck":I
    const-string v4, "Compose:recompose"

    .local v4, "sectionName$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4321
    .local v5, "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 4322
    .local v6, "token$iv":Ljava/lang/Object;
    nop

    .line 4323
    const/4 v7, 0x0

    .line 3277
    .local v7, "$i$a$-trace-ComposerImpl$doCompose$2":I
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    iput v0, v1, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    .line 3278
    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 3279
    move-object/from16 v0, p1

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    const/4 v8, 0x0

    .line 4324
    .local v8, "$i$f$forEach":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_1

    .line 4326
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v11

    aget-object v11, v11, v9

    const-string/jumbo v12, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v12

    aget-object v12, v12, v9

    check-cast v12, Landroidx/compose/runtime/collection/IdentityArraySet;

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v11, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .local v12, "set":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v13, 0x0

    .line 3280
    .local v13, "$i$a$-forEach-ComposerImpl$doCompose$2$1":I
    invoke-virtual {v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v14

    .line 4327
    nop

    .line 3281
    .local v14, "location":I
    iget-object v15, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, v11, v14, v12}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/compose/runtime/collection/IdentityArraySet;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3282
    nop

    .line 4326
    .end local v11    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v12    # "set":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v13    # "$i$a$-forEach-ComposerImpl$doCompose$2$1":I
    .end local v14    # "location":I
    nop

    .line 4324
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 4327
    .restart local v11    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .restart local v12    # "set":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v13    # "$i$a$-forEach-ComposerImpl$doCompose$2$1":I
    :cond_0
    nop

    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v4    # "sectionName$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "index$iv":I
    .end local v11    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v12    # "set":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v13    # "$i$a$-forEach-ComposerImpl$doCompose$2$1":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 4328
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local v4    # "sectionName$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .restart local v8    # "$i$f$forEach":I
    :cond_1
    nop

    .line 3283
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v8    # "$i$f$forEach":I
    :try_start_1
    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getInvalidationLocationAscending$p()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3284
    const/4 v3, 0x0

    iput v3, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3285
    const/4 v8, 0x0

    .line 3286
    .local v8, "complete":Z
    const/4 v9, 0x1

    iput-boolean v9, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3287
    nop

    .line 3288
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    .line 3292
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 3293
    .local v9, "savedContent":Ljava/lang/Object;
    if-eq v9, v2, :cond_2

    if-eqz v2, :cond_2

    .line 3294
    move-object v0, v2

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 3299
    :cond_2
    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    check-cast v0, Landroidx/compose/runtime/DerivedStateObserver;

    move-object v10, v0

    .local v10, "observer$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/4 v11, 0x0

    .line 4329
    .local v11, "$i$f$observeDerivedStateRecalculations":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v12, v0

    .line 4330
    .local v12, "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 4331
    :try_start_3
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 4332
    const/4 v0, 0x0

    .line 3300
    .local v0, "$i$a$-observeDerivedStateRecalculations-ComposerImpl$doCompose$2$2":I
    const/16 v13, 0xc8

    if-eqz v2, :cond_3

    .line 3301
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 3302
    move-object v13, v1

    check-cast v13, Landroidx/compose/runtime/Composer;

    invoke-static {v13, v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3303
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_1

    .line 3305
    :cond_3
    iget-boolean v14, v1, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez v14, :cond_4

    iget-boolean v14, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz v14, :cond_5

    .line 3306
    :cond_4
    if-eqz v9, :cond_5

    .line 3307
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 3309
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v1, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 3311
    move-object v13, v1

    check-cast v13, Landroidx/compose/runtime/Composer;

    const/4 v14, 0x2

    invoke-static {v9, v14}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3312
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_1

    .line 3314
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3316
    :goto_1
    nop

    .line 4332
    .end local v0    # "$i$a$-observeDerivedStateRecalculations-ComposerImpl$doCompose$2$2":I
    nop

    .line 4334
    move-object v0, v12

    .local v0, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v13, 0x0

    .line 4335
    .local v13, "$i$f$getLastIndex":I
    :try_start_4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .line 4334
    .end local v0    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v13    # "$i$f$getLastIndex":I
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 4336
    nop

    .line 4337
    nop

    .line 3317
    .end local v10    # "observer$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v11    # "$i$f$observeDerivedStateRecalculations":I
    .end local v12    # "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3318
    const/4 v0, 0x1

    .line 3320
    .end local v8    # "complete":Z
    .end local v9    # "savedContent":Ljava/lang/Object;
    .local v0, "complete":Z
    :try_start_5
    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3321
    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3322
    nop

    .line 3323
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    .line 3324
    nop

    .line 3325
    nop

    .end local v0    # "complete":Z
    .end local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4323
    nop

    .line 4327
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 4323
    nop

    .line 3326
    .end local v4    # "sectionName$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "token$iv":Ljava/lang/Object;
    return-void

    .line 4334
    .restart local v4    # "sectionName$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .restart local v8    # "complete":Z
    .restart local v9    # "savedContent":Ljava/lang/Object;
    .restart local v10    # "observer$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v11    # "$i$f$observeDerivedStateRecalculations":I
    .restart local v12    # "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    :catchall_0
    move-exception v0

    move-object v13, v12

    .local v13, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v14, 0x0

    .line 4335
    .local v14, "$i$f$getLastIndex":I
    :try_start_6
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 4334
    .end local v13    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v14    # "$i$f$getLastIndex":I
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .end local v4    # "sectionName$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .end local v8    # "complete":Z
    .end local p1    # "invalidationsRequested":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3320
    .end local v9    # "savedContent":Ljava/lang/Object;
    .end local v10    # "observer$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v11    # "$i$f$observeDerivedStateRecalculations":I
    .end local v12    # "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v4    # "sectionName$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .restart local v8    # "complete":Z
    .restart local p1    # "invalidationsRequested":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_1
    move-exception v0

    :try_start_7
    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3321
    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3322
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    .line 3323
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    .end local v4    # "sectionName$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local p1    # "invalidationsRequested":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local p2    # "content":Lkotlin/jvm/functions/Function2;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4327
    .end local v7    # "$i$a$-trace-ComposerImpl$doCompose$2":I
    .end local v8    # "complete":Z
    .restart local v4    # "sectionName$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local p1    # "invalidationsRequested":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .restart local p2    # "content":Lkotlin/jvm/functions/Function2;
    :catchall_2
    move-exception v0

    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 4317
    .end local v5    # "$i$f$trace":I
    .end local v6    # "token$iv":Ljava/lang/Object;
    .local v0, "value$iv":Z
    .local v4, "$i$f$runtimeCheck":I
    :cond_6
    const/4 v3, 0x0

    .line 3275
    .local v3, "$i$a$-runtimeCheck-ComposerImpl$doCompose$1":I
    nop

    .line 4317
    .end local v3    # "$i$a$-runtimeCheck-ComposerImpl$doCompose$1":I
    const-string/jumbo v3, "Reentrant composition is not supported"

    .line 4318
    .local v3, "message$iv":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method private final doRecordDownsFor(II)V
    .locals 2
    .param p1, "group"    # I
    .param p2, "nearestCommonRoot"    # I

    .line 2748
    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 2749
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    .line 2750
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/ComposerImpl;->nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    .line 2752
    :cond_0
    return-void
.end method

.method private final end(Z)V
    .locals 20
    .param p1, "isNode"    # Z

    .line 2347
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2348
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    .line 2349
    .local v1, "parent":I
    nop

    .line 2350
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v2

    .line 2351
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 2352
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v4

    .line 2349
    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .end local v1    # "parent":I
    goto :goto_0

    .line 2355
    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    .line 2356
    .restart local v1    # "parent":I
    nop

    .line 2357
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v2

    .line 2358
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 2359
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v4

    .line 2356
    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2362
    .end local v1    # "parent":I
    :goto_0
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2363
    .local v1, "expectedNodeCount":I
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2364
    .local v2, "pending":Landroidx/compose/runtime/Pending;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2366
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v4

    .line 2369
    .local v4, "previous":Ljava/util/List;
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getUsed()Ljava/util/List;

    move-result-object v5

    .line 2373
    .local v5, "current":Ljava/util/List;
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastToSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    .line 2375
    .local v6, "usedKeys":Ljava/util/Set;
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v7, Ljava/util/Set;

    .line 2376
    .local v7, "placedKeys":Ljava/util/Set;
    const/4 v8, 0x0

    .line 2377
    .local v8, "currentIndex":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 2378
    .local v9, "currentEnd":I
    const/4 v10, 0x0

    .line 2379
    .local v10, "previousIndex":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 2382
    .local v11, "previousEnd":I
    const/4 v12, 0x0

    .line 2383
    .local v12, "nodeOffset":I
    :goto_1
    if-ge v10, v11, :cond_6

    .line 2384
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/KeyInfo;

    .line 2385
    .local v13, "previousInfo":Landroidx/compose/runtime/KeyInfo;
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2388
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v14

    .line 2389
    .local v14, "deleteOffset":I
    iget-object v15, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 2390
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v16

    add-int v3, v14, v16

    .line 2391
    move-object/from16 v16, v6

    .end local v6    # "usedKeys":Ljava/util/Set;
    .local v16, "usedKeys":Ljava/util/Set;
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v6

    .line 2389
    invoke-virtual {v15, v3, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 2393
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    .line 2394
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2395
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2396
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    .line 2397
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    .line 2402
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2403
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v6

    .line 2404
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    move/from16 v17, v11

    .end local v11    # "previousEnd":I
    .local v17, "previousEnd":I
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    move/from16 v18, v14

    .end local v14    # "deleteOffset":I
    .local v18, "deleteOffset":I
    invoke-virtual {v13}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v11

    add-int/2addr v15, v11

    .line 2402
    invoke-static {v3, v6, v15}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    .line 2406
    add-int/lit8 v10, v10, 0x1

    .line 2407
    move-object/from16 v6, v16

    move/from16 v11, v17

    goto :goto_1

    .line 2410
    .end local v16    # "usedKeys":Ljava/util/Set;
    .end local v17    # "previousEnd":I
    .end local v18    # "deleteOffset":I
    .restart local v6    # "usedKeys":Ljava/util/Set;
    .restart local v11    # "previousEnd":I
    :cond_1
    move-object/from16 v16, v6

    move/from16 v17, v11

    .end local v6    # "usedKeys":Ljava/util/Set;
    .end local v11    # "previousEnd":I
    .restart local v16    # "usedKeys":Ljava/util/Set;
    .restart local v17    # "previousEnd":I
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2412
    add-int/lit8 v10, v10, 0x1

    .line 2413
    move-object/from16 v6, v16

    move/from16 v11, v17

    goto :goto_1

    .line 2416
    :cond_2
    if-ge v8, v9, :cond_5

    .line 2419
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    .line 2420
    .local v3, "currentInfo":Landroidx/compose/runtime/KeyInfo;
    if-eq v3, v13, :cond_4

    .line 2421
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v6

    .line 2422
    .local v6, "nodePosition":I
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2423
    if-eq v6, v12, :cond_3

    .line 2424
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v11

    .line 2425
    .local v11, "updatedCount":I
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 2426
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v15, v6

    .line 2427
    invoke-virtual {v2}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v18

    move-object/from16 v19, v5

    .end local v5    # "current":Ljava/util/List;
    .local v19, "current":Ljava/util/List;
    add-int v5, v12, v18

    .line 2428
    nop

    .line 2425
    invoke-virtual {v14, v15, v5, v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveNode(III)V

    .line 2430
    invoke-virtual {v2, v6, v12, v11}, Landroidx/compose/runtime/Pending;->registerMoveNode(III)V

    .end local v6    # "nodePosition":I
    .end local v11    # "updatedCount":I
    goto :goto_2

    .line 2423
    .end local v19    # "current":Ljava/util/List;
    .restart local v5    # "current":Ljava/util/List;
    .restart local v6    # "nodePosition":I
    :cond_3
    move-object/from16 v19, v5

    .end local v5    # "current":Ljava/util/List;
    .restart local v19    # "current":Ljava/util/List;
    goto :goto_2

    .line 2434
    .end local v6    # "nodePosition":I
    .end local v19    # "current":Ljava/util/List;
    .restart local v5    # "current":Ljava/util/List;
    :cond_4
    move-object/from16 v19, v5

    .end local v5    # "current":Ljava/util/List;
    .restart local v19    # "current":Ljava/util/List;
    add-int/lit8 v10, v10, 0x1

    .line 2436
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 2437
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v5

    add-int/2addr v12, v5

    move-object/from16 v6, v16

    move/from16 v11, v17

    move-object/from16 v5, v19

    .end local v3    # "currentInfo":Landroidx/compose/runtime/KeyInfo;
    .end local v13    # "previousInfo":Landroidx/compose/runtime/KeyInfo;
    goto/16 :goto_1

    .line 2416
    .end local v19    # "current":Ljava/util/List;
    .restart local v5    # "current":Ljava/util/List;
    .restart local v13    # "previousInfo":Landroidx/compose/runtime/KeyInfo;
    :cond_5
    move-object/from16 v19, v5

    .end local v5    # "current":Ljava/util/List;
    .restart local v19    # "current":Ljava/util/List;
    move-object/from16 v6, v16

    move/from16 v11, v17

    goto/16 :goto_1

    .line 2443
    .end local v13    # "previousInfo":Landroidx/compose/runtime/KeyInfo;
    .end local v16    # "usedKeys":Ljava/util/Set;
    .end local v17    # "previousEnd":I
    .end local v19    # "current":Ljava/util/List;
    .restart local v5    # "current":Ljava/util/List;
    .local v6, "usedKeys":Ljava/util/Set;
    .local v11, "previousEnd":I
    :cond_6
    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v17, v11

    .end local v5    # "current":Ljava/util/List;
    .end local v6    # "usedKeys":Ljava/util/Set;
    .end local v11    # "previousEnd":I
    .restart local v16    # "usedKeys":Ljava/util/Set;
    .restart local v17    # "previousEnd":I
    .restart local v19    # "current":Ljava/util/List;
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 2447
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2448
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getGroupEnd()I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2449
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2455
    .end local v4    # "previous":Ljava/util/List;
    .end local v7    # "placedKeys":Ljava/util/Set;
    .end local v8    # "currentIndex":I
    .end local v9    # "currentEnd":I
    .end local v10    # "previousIndex":I
    .end local v12    # "nodeOffset":I
    .end local v16    # "usedKeys":Ljava/util/Set;
    .end local v17    # "previousEnd":I
    .end local v19    # "current":Ljava/util/List;
    :cond_7
    iget v3, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2456
    .local v3, "removeIndex":I
    :goto_3
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2457
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v4

    .line 2458
    .local v4, "startSlot":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    .line 2459
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v5

    .line 2460
    .local v5, "nodesToRemove":I
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v6, v3, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 2461
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v7

    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    .end local v4    # "startSlot":I
    .end local v5    # "nodesToRemove":I
    goto :goto_3

    .line 2464
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v4

    .line 2465
    .local v4, "inserting":Z
    if-eqz v4, :cond_a

    .line 2466
    if-eqz p1, :cond_9

    .line 2467
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/FixupList;->endNodeInsert()V

    .line 2468
    const/4 v1, 0x1

    .line 2470
    :cond_9
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->endEmpty()V

    .line 2471
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v5

    .line 2472
    .local v5, "parentGroup":I
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2473
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 2474
    invoke-direct {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v6

    .line 2475
    .local v6, "virtualIndex":I
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2476
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotWriter;->close()V

    .line 2477
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    invoke-direct {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->recordInsert(Landroidx/compose/runtime/Anchor;)V

    .line 2478
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 2479
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    .line 2480
    invoke-direct {v0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    .line 2481
    invoke-direct {v0, v6, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    .end local v5    # "parentGroup":I
    .end local v6    # "virtualIndex":I
    goto :goto_4

    .line 2485
    :cond_a
    if-eqz p1, :cond_b

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 2486
    :cond_b
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endCurrentGroup()V

    .line 2487
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v5

    .line 2488
    .restart local v5    # "parentGroup":I
    invoke-direct {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v6

    .line 2489
    .local v6, "parentNodeCount":I
    if-eq v1, v6, :cond_c

    .line 2490
    invoke-direct {v0, v5, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    .line 2492
    :cond_c
    if-eqz p1, :cond_d

    .line 2493
    const/4 v1, 0x1

    .line 2495
    :cond_d
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 2496
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 2499
    .end local v5    # "parentGroup":I
    .end local v6    # "parentNodeCount":I
    :cond_e
    :goto_4
    invoke-direct {v0, v1, v4}, Landroidx/compose/runtime/ComposerImpl;->exitGroup(IZ)V

    .line 2500
    return-void
.end method

.method private final endGroup()V
    .locals 1

    .line 1607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method private final endRoot()V
    .locals 1

    .line 1481
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1482
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    .line 1483
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1484
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endRoot()V

    .line 1485
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->finalizeCompose()V

    .line 1486
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 1488
    return-void
.end method

.method private final ensureWriter()V
    .locals 1

    .line 2178
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2181
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 2182
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 2183
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2185
    :cond_0
    return-void
.end method

.method private final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 3
    .param p1, "isNode"    # Z
    .param p2, "newPending"    # Landroidx/compose/runtime/Pending;

    .line 2320
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2321
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2322
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2323
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2324
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2325
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2326
    return-void
.end method

.method private final exitGroup(IZ)V
    .locals 2
    .param p1, "expectedNodeCount"    # I
    .param p2, "inserting"    # Z

    .line 2333
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Pending;

    .line 2334
    .local v0, "previousPending":Landroidx/compose/runtime/Pending;
    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 2335
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Pending;->setGroupIndex(I)V

    .line 2337
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2338
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2339
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2340
    return-void
.end method

.method private final finalizeCompose()V
    .locals 4

    .line 3508
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->finalizeComposition()V

    .line 3509
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isEmpty()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4363
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4367
    nop

    .line 3510
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    .line 3511
    return-void

    .line 4364
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v2, 0x0

    .line 3509
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$finalizeCompose$1":I
    nop

    .line 4364
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$finalizeCompose$1":I
    const-string/jumbo v2, "Start/end imbalance"

    .line 4365
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public static synthetic getCompoundKeyHash$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDefaultsInvalid$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getInserting$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method private final getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "$this$node"    # Landroidx/compose/runtime/SlotReader;

    .line 3330
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSkipping$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method private final groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I
    .locals 5
    .param p1, "$this$groupCompoundKeyPart"    # Landroidx/compose/runtime/SlotReader;
    .param p2, "group"    # I

    .line 2776
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2777
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2778
    .local v1, "$i$a$-let-ComposerImpl$groupCompoundKeyPart$1":I
    nop

    .line 2779
    instance-of v2, v0, Ljava/lang/Enum;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_0

    .line 2780
    :cond_0
    instance-of v2, v0, Landroidx/compose/runtime/MovableContent;

    if-eqz v2, :cond_1

    const v2, 0x78cc281

    goto :goto_0

    .line 2781
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 2778
    :goto_0
    nop

    .line 2777
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-ComposerImpl$groupCompoundKeyPart$1":I
    goto :goto_3

    .line 2783
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 2784
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 2785
    .local v1, "$i$a$-let-ComposerImpl$groupCompoundKeyPart$2":I
    const/16 v2, 0xcf

    if-ne v0, v2, :cond_5

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .local v2, "aux":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2786
    .local v3, "$i$a$-let-ComposerImpl$groupCompoundKeyPart$2$1":I
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 2785
    .end local v2    # "aux":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ComposerImpl$groupCompoundKeyPart$2$1":I
    :goto_1
    move v2, v4

    goto :goto_2

    .line 2787
    :cond_5
    nop

    .line 2785
    move v2, v0

    .line 2784
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ComposerImpl$groupCompoundKeyPart$2":I
    :goto_2
    nop

    .line 2788
    :goto_3
    return v2
.end method

.method private final insertMovableContentGuarded(Ljava/util/List;)V
    .locals 50
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

    .line 3038
    move-object/from16 v9, p0

    iget-object v10, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .local v10, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .local v0, "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    move-object v11, v0

    .end local v0    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .local v11, "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    const/4 v12, 0x0

    .line 4236
    .local v12, "$i$f$withChangeList":I
    invoke-virtual {v10}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v13

    .line 4237
    .local v13, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    nop

    .line 4238
    :try_start_0
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4239
    const/4 v14, 0x0

    .line 3039
    .local v14, "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->resetSlots()V

    .line 3040
    move-object/from16 v15, p1

    .local v15, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 4240
    .local v16, "$i$f$fastForEach":I
    nop

    .line 4241
    const/4 v0, 0x0

    .local v0, "index$iv":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    move v7, v0

    .end local v0    # "index$iv":I
    .local v7, "index$iv":I
    :goto_0
    const/4 v0, 0x0

    if-ge v7, v8, :cond_8

    .line 4242
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    .line 4243
    .local v17, "item$iv":Ljava/lang/Object;
    move-object/from16 v1, v17

    check-cast v1, Lkotlin/Pair;

    const/16 v18, 0x0

    .line 3040
    .local v18, "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    move-object v6, v2

    .local v6, "to":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    move-object v5, v1

    .line 3041
    .local v5, "from":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    move-object v4, v1

    .line 3042
    .local v4, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    move v3, v1

    .line 3043
    .local v3, "location":I
    new-instance v1, Landroidx/compose/runtime/internal/IntRef;

    const/4 v2, 0x0

    move/from16 v19, v7

    .end local v7    # "index$iv":I
    .local v19, "index$iv":I
    const/4 v7, 0x1

    invoke-direct {v1, v0, v7, v2}, Landroidx/compose/runtime/internal/IntRef;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3045
    .local v1, "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    iget-object v2, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 3046
    if-nez v5, :cond_1

    .line 3047
    :try_start_1
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    move-object v7, v0

    .line 3048
    .local v7, "toSlotTable":Landroidx/compose/runtime/SlotTable;
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3059
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    .line 3061
    :cond_0
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/16 v21, 0x0

    .line 4244
    .local v21, "$i$f$read":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4245
    move-object/from16 v22, v0

    .local v22, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/16 v23, 0x0

    .line 4246
    .local v23, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4247
    move-object/from16 v0, v22

    .local v0, "reader":Landroidx/compose/runtime/SlotReader;
    const/16 v24, 0x0

    .line 3062
    .local v24, "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$1":I
    :try_start_2
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 3063
    iget-object v2, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V

    .line 3064
    new-instance v2, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v2}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3065
    .local v2, "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v1

    .end local v1    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .local v29, "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    :try_start_3
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;

    invoke-direct {v1, v9, v2, v0, v6}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V

    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v31, 0xf

    const/16 v32, 0x0

    move-object/from16 v33, v29

    .end local v29    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .local v33, "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    move-object/from16 v1, p0

    move-object/from16 v34, v2

    .end local v2    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .local v34, "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    move-object/from16 v2, v25

    move/from16 v25, v3

    .end local v3    # "location":I
    .local v25, "location":I
    move-object/from16 v3, v26

    move-object/from16 v35, v4

    .end local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .local v35, "anchor":Landroidx/compose/runtime/Anchor;
    move-object/from16 v4, v27

    move-object/from16 v36, v5

    .end local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v36, "from":Landroidx/compose/runtime/MovableContentStateReference;
    move-object/from16 v5, v28

    move-object/from16 v26, v6

    .end local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .local v26, "to":Landroidx/compose/runtime/MovableContentStateReference;
    move-object/from16 v6, v30

    move-object/from16 v27, v7

    .end local v7    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .local v27, "toSlotTable":Landroidx/compose/runtime/SlotTable;
    move/from16 v7, v31

    move/from16 v28, v8

    move-object/from16 v8, v32

    :try_start_4
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3079
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3080
    nop

    .line 3081
    nop

    .line 3079
    move-object/from16 v8, v33

    move-object/from16 v2, v34

    .end local v33    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v34    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v2    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .local v8, "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    :try_start_5
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3083
    nop

    .end local v0    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v2    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v24    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4247
    nop

    .line 4249
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 4250
    nop

    .line 4246
    nop

    .line 4245
    .end local v22    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v23    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4251
    move-object/from16 v34, v11

    move/from16 v29, v14

    move-object/from16 v44, v15

    move-object/from16 v7, v26

    move-object/from16 v46, v36

    move/from16 v36, v12

    .end local v20    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v21    # "$i$f$read":I
    .end local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    goto/16 :goto_3

    .line 4249
    .restart local v20    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v21    # "$i$f$read":I
    .restart local v22    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v23    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v33    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    :catchall_1
    move-exception v0

    move-object/from16 v8, v33

    .end local v33    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    goto :goto_1

    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v25    # "location":I
    .end local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v3    # "location":I
    .restart local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v7    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v29    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    :catchall_2
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v8, v29

    .end local v3    # "location":I
    .end local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v7    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .end local v29    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v25    # "location":I
    .restart local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    goto :goto_1

    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v25    # "location":I
    .end local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v1    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v3    # "location":I
    .restart local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v7    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    :catchall_3
    move-exception v0

    move-object v8, v1

    move/from16 v25, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    .end local v1    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v3    # "location":I
    .end local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v7    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v25    # "location":I
    .restart local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SlotReader;->close()V

    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v12    # "$i$f$withChangeList":I
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local p1    # "references":Ljava/util/List;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4286
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "item$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v19    # "index$iv":I
    .end local v20    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v21    # "$i$f$read":I
    .end local v22    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v23    # "$i$a$-let-SlotTable$read$1$iv":I
    .end local v25    # "location":I
    .end local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v27    # "toSlotTable":Landroidx/compose/runtime/SlotTable;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v12    # "$i$f$withChangeList":I
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local p1    # "references":Ljava/util/List;
    :catchall_4
    move-exception v0

    move-object/from16 v34, v11

    move/from16 v36, v12

    goto/16 :goto_8

    .line 3088
    .restart local v1    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v3    # "location":I
    .restart local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v16    # "$i$f$fastForEach":I
    .restart local v17    # "item$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .restart local v19    # "index$iv":I
    :cond_1
    move/from16 v25, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v26, v6

    move/from16 v28, v8

    move-object v8, v1

    .end local v1    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v3    # "location":I
    .end local v4    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v5    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v6    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v25    # "location":I
    .restart local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    :try_start_7
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    move-object/from16 v6, v36

    .end local v36    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v6, "from":Landroidx/compose/runtime/MovableContentStateReference;
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_12

    move-object v5, v1

    .line 3089
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Landroidx/compose/runtime/MovableContentState;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v1, :cond_3

    :cond_2
    :try_start_9
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    :cond_3
    move-object v4, v1

    .line 3090
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    if-eqz v5, :cond_4

    :try_start_a
    invoke-virtual {v5}, Landroidx/compose/runtime/MovableContentState;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotTable;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v1, :cond_5

    :cond_4
    :try_start_b
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    :cond_5
    move-object v3, v1

    .line 3091
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposerKt;->access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 3094
    .local v2, "nodesToInsert":Ljava/util/List;
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    xor-int/2addr v1, v7

    if-eqz v1, :cond_7

    .line 3095
    :try_start_c
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 3096
    nop

    .line 3095
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3098
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    iget-object v7, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3103
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    move-object/from16 v7, v35

    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .local v7, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v1

    .line 3104
    .local v1, "group":I
    nop

    .line 3105
    nop

    .line 3106
    invoke-direct {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v21

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    add-int v0, v21, v22

    .line 3104
    invoke-direct {v9, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2

    .line 3098
    .end local v1    # "group":I
    .end local v7    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    :cond_6
    move-object/from16 v7, v35

    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v7    # "anchor":Landroidx/compose/runtime/Anchor;
    goto :goto_2

    .line 3094
    .end local v7    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    :cond_7
    move-object/from16 v7, v35

    .line 3112
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v7    # "anchor":Landroidx/compose/runtime/Anchor;
    :goto_2
    :try_start_d
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 3113
    nop

    .line 3114
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3115
    nop

    .line 3116
    nop

    .line 3112
    move-object/from16 v35, v7

    move-object/from16 v7, v26

    .end local v26    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .local v7, "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v0, v5, v1, v6, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 3119
    move-object/from16 v21, v4

    .local v21, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/16 v22, 0x0

    .line 4252
    .local v22, "$i$f$read":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    .line 4253
    move-object/from16 v24, v0

    .local v24, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/16 v26, 0x0

    .line 4254
    .local v26, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4255
    move-object/from16 v1, v24

    .local v1, "reader":Landroidx/compose/runtime/SlotReader;
    const/16 v27, 0x0

    .line 3120
    .local v27, "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    move-object/from16 v29, p0

    .local v29, "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    const/16 v30, 0x0

    .line 4256
    .local v30, "$i$f$withReader":I
    :try_start_e
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/ComposerImpl;->getReader$runtime_release()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    move-object/from16 v31, v0

    .line 4257
    .local v31, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/ComposerImpl;->access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v0

    move-object/from16 v32, v0

    .line 4258
    .local v32, "savedCountOverrides$iv":[I
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/ComposerImpl;->access$getProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/collection/IntMap;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    move-object/from16 v33, v0

    .line 4259
    .local v33, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    move-object/from16 v34, v11

    move-object/from16 v11, v29

    const/4 v0, 0x0

    .end local v29    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .local v11, "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .local v34, "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    :try_start_f
    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 4260
    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 4261
    nop

    .line 4262
    :try_start_10
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 4263
    const/16 v20, 0x0

    .line 3121
    .local v20, "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    move/from16 v29, v0

    .line 3122
    .local v29, "newLocation":I
    move/from16 v36, v12

    move/from16 v12, v29

    .end local v29    # "newLocation":I
    .local v12, "newLocation":I
    .local v36, "$i$f$withChangeList":I
    :try_start_11
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 3123
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V

    .line 3124
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    move-object/from16 v29, v0

    .line 3125
    .local v29, "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    move-object/from16 v37, v0

    .local v37, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    const/16 v38, 0x0

    .line 4264
    .local v38, "$i$f$withChangeList":I
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v39, v0

    .line 4265
    .local v39, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    nop

    .line 4266
    move/from16 v40, v12

    move-object/from16 v12, v29

    move/from16 v29, v14

    move-object/from16 v14, v37

    .end local v37    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .local v12, "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .local v14, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .local v29, "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .local v40, "newLocation":I
    :try_start_12
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4267
    const/16 v37, 0x0

    .line 3126
    .local v37, "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1":I
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    move-object/from16 v41, v0

    .local v41, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    const/16 v42, 0x0

    .line 4268
    .local v42, "$i$f$withoutImplicitRootStart":I
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move/from16 v43, v0

    .line 4269
    .local v43, "previousImplicitRootStart$iv":Z
    nop

    .line 4270
    move-object/from16 v44, v15

    move-object/from16 v15, v41

    const/4 v0, 0x0

    .end local v41    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .local v15, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .local v44, "$this$fastForEach$iv":Ljava/util/List;
    :try_start_13
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .line 4271
    const/4 v0, 0x0

    .line 3127
    .local v0, "$i$a$-withoutImplicitRootStart-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1":I
    nop

    .line 3128
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v23

    .line 3129
    invoke-virtual {v7}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v41

    .line 3130
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 3131
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime_release()Ljava/util/List;

    move-result-object v46

    .line 3127
    move/from16 v47, v0

    .end local v0    # "$i$a$-withoutImplicitRootStart-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1":I
    .local v47, "$i$a$-withoutImplicitRootStart-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1":I
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;

    invoke-direct {v0, v9, v7}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object/from16 v48, v1

    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .local v48, "reader":Landroidx/compose/runtime/SlotReader;
    move-object/from16 v1, p0

    move-object/from16 v49, v2

    .end local v2    # "nodesToInsert":Ljava/util/List;
    .local v49, "nodesToInsert":Ljava/util/List;
    move-object/from16 v2, v23

    move-object/from16 v23, v3

    .end local v3    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v23, "fromAnchor":Landroidx/compose/runtime/Anchor;
    move-object/from16 v3, v41

    move-object/from16 v41, v4

    .end local v4    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v41, "fromTable":Landroidx/compose/runtime/SlotTable;
    move-object/from16 v4, v45

    move-object/from16 v45, v5

    .end local v5    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .local v45, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    move-object/from16 v5, v46

    move-object/from16 v46, v6

    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v46, "from":Landroidx/compose/runtime/MovableContentStateReference;
    move-object v6, v0

    :try_start_14
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 3140
    nop

    .line 4271
    .end local v47    # "$i$a$-withoutImplicitRootStart-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1":I
    nop

    .line 4273
    move/from16 v1, v43

    .end local v43    # "previousImplicitRootStart$iv":Z
    .local v1, "previousImplicitRootStart$iv":Z
    :try_start_15
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 4274
    nop

    .line 4275
    nop

    .line 3141
    .end local v1    # "previousImplicitRootStart$iv":Z
    .end local v15    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v42    # "$i$f$withoutImplicitRootStart":I
    nop

    .line 4267
    .end local v37    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1":I
    nop

    .line 4276
    move-object/from16 v2, v39

    .end local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .local v2, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    :try_start_16
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4277
    nop

    .line 4278
    nop

    .line 3142
    .end local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v14    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v38    # "$i$f$withChangeList":I
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 3143
    nop

    .line 3144
    nop

    .line 3142
    invoke-virtual {v0, v12, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3146
    nop

    .end local v12    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v20    # "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    .end local v40    # "newLocation":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 4263
    nop

    .line 4279
    move-object/from16 v3, v31

    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .local v3, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    :try_start_17
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 4280
    move-object/from16 v4, v32

    .end local v32    # "savedCountOverrides$iv":[I
    .local v4, "savedCountOverrides$iv":[I
    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 4281
    move-object/from16 v5, v33

    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .local v5, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V

    .line 4263
    nop

    .line 3147
    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .end local v30    # "$i$f$withReader":I
    nop

    .end local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 4255
    nop

    .line 4282
    :try_start_18
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 4283
    nop

    .line 4254
    nop

    .line 4253
    .end local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4284
    nop

    .line 3149
    .end local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v22    # "$i$f$read":I
    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    :goto_3
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->skipToEndOfCurrentGroup()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 3150
    nop

    .line 4243
    .end local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v25    # "location":I
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    nop

    .line 4241
    .end local v17    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v19, 0x1

    move/from16 v8, v28

    move/from16 v14, v29

    move-object/from16 v11, v34

    move/from16 v12, v36

    move-object/from16 v15, v44

    .end local v19    # "index$iv":I
    .local v7, "index$iv":I
    goto/16 :goto_0

    .line 4279
    .local v7, "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .restart local v17    # "item$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .restart local v19    # "index$iv":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v22    # "$i$f$read":I
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v25    # "location":I
    .restart local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .restart local v30    # "$i$f$withReader":I
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    :catchall_5
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "savedCountOverrides$iv":[I
    .restart local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    goto/16 :goto_6

    .line 4276
    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v12    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v14    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v20    # "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v38    # "$i$f$withChangeList":I
    .restart local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v40    # "newLocation":I
    :catchall_6
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v2, v39

    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "savedCountOverrides$iv":[I
    .restart local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    goto :goto_5

    .line 4273
    .end local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v15    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v37    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1":I
    .restart local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v42    # "$i$f$withoutImplicitRootStart":I
    .restart local v43    # "previousImplicitRootStart$iv":Z
    :catchall_7
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v2, v39

    move/from16 v1, v43

    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v43    # "previousImplicitRootStart$iv":Z
    .restart local v1    # "previousImplicitRootStart$iv":Z
    .restart local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "savedCountOverrides$iv":[I
    .restart local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    goto :goto_4

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .local v1, "reader":Landroidx/compose/runtime/SlotReader;
    .local v2, "nodesToInsert":Ljava/util/List;
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v43    # "previousImplicitRootStart$iv":Z
    :catchall_8
    move-exception v0

    move-object/from16 v48, v1

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v2, v39

    move/from16 v1, v43

    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v43    # "previousImplicitRootStart$iv":Z
    .local v1, "previousImplicitRootStart$iv":Z
    .local v2, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .local v3, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .local v4, "savedCountOverrides$iv":[I
    .local v5, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    :goto_4
    :try_start_19
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .end local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .end local v12    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v14    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "item$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v19    # "index$iv":I
    .end local v20    # "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v22    # "$i$f$read":I
    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v25    # "location":I
    .end local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .end local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v30    # "$i$f$withReader":I
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "$i$f$withChangeList":I
    .end local v38    # "$i$f$withChangeList":I
    .end local v40    # "newLocation":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .end local p1    # "references":Ljava/util/List;
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 4276
    .end local v1    # "previousImplicitRootStart$iv":Z
    .end local v15    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v37    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1$1$2$1$1":I
    .end local v42    # "$i$f$withoutImplicitRootStart":I
    .restart local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "savedCountOverrides$iv":[I
    .restart local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .restart local v12    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v14    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v16    # "$i$f$fastForEach":I
    .restart local v17    # "item$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .restart local v19    # "index$iv":I
    .restart local v20    # "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v22    # "$i$f$read":I
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v25    # "location":I
    .restart local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v30    # "$i$f$withReader":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v38    # "$i$f$withChangeList":I
    .restart local v40    # "newLocation":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    .restart local p1    # "references":Ljava/util/List;
    :catchall_9
    move-exception v0

    goto :goto_5

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .local v1, "reader":Landroidx/compose/runtime/SlotReader;
    .local v2, "nodesToInsert":Ljava/util/List;
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v15, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    :catchall_a
    move-exception v0

    move-object/from16 v48, v1

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v44, v15

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v2, v39

    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v39    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .local v2, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .local v3, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .local v4, "savedCountOverrides$iv":[I
    .local v5, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    :goto_5
    :try_start_1a
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "item$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v19    # "index$iv":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v22    # "$i$f$read":I
    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v25    # "location":I
    .end local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .end local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v30    # "$i$f$withReader":I
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "$i$f$withChangeList":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .end local p1    # "references":Ljava/util/List;
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 4279
    .end local v2    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v12    # "offsetChanges":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v14    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v20    # "$i$a$-withReader-ComposerImpl$insertMovableContentGuarded$1$1$2$1":I
    .end local v38    # "$i$f$withChangeList":I
    .end local v40    # "newLocation":I
    .restart local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "savedCountOverrides$iv":[I
    .restart local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v16    # "$i$f$fastForEach":I
    .restart local v17    # "item$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .restart local v19    # "index$iv":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v22    # "$i$f$read":I
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v25    # "location":I
    .restart local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v30    # "$i$f$withReader":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    .restart local p1    # "references":Ljava/util/List;
    :catchall_b
    move-exception v0

    goto :goto_6

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .restart local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .local v2, "nodesToInsert":Ljava/util/List;
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v14, "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    :catchall_c
    move-exception v0

    move-object/from16 v48, v1

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move/from16 v29, v14

    move-object/from16 v44, v15

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v2    # "nodesToInsert":Ljava/util/List;
    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .local v3, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .local v4, "savedCountOverrides$iv":[I
    .local v5, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    goto :goto_6

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v36    # "$i$f$withChangeList":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .restart local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v2    # "nodesToInsert":Ljava/util/List;
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v12, "$i$f$withChangeList":I
    .restart local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v32    # "savedCountOverrides$iv":[I
    .restart local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    :catchall_d
    move-exception v0

    move-object/from16 v48, v1

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move/from16 v36, v12

    move/from16 v29, v14

    move-object/from16 v44, v15

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    .end local v1    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v2    # "nodesToInsert":Ljava/util/List;
    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v12    # "$i$f$withChangeList":I
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v31    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v32    # "savedCountOverrides$iv":[I
    .end local v33    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .local v3, "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .local v4, "savedCountOverrides$iv":[I
    .local v5, "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    :goto_6
    :try_start_1b
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 4280
    invoke-static {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 4281
    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V

    .end local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "item$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v19    # "index$iv":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v22    # "$i$f$read":I
    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v25    # "location":I
    .end local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v36    # "$i$f$withChangeList":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .end local p1    # "references":Ljava/util/List;
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 4282
    .end local v3    # "savedReader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "savedCountOverrides$iv":[I
    .end local v5    # "savedProviderUpdates$iv":Landroidx/compose/runtime/collection/IntMap;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/ComposerImpl;
    .end local v27    # "$i$a$-read-ComposerImpl$insertMovableContentGuarded$1$1$2":I
    .end local v30    # "$i$f$withReader":I
    .end local v48    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v7    # "to":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v16    # "$i$f$fastForEach":I
    .restart local v17    # "item$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .restart local v19    # "index$iv":I
    .restart local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v22    # "$i$f$read":I
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v25    # "location":I
    .restart local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    .restart local p1    # "references":Ljava/util/List;
    :catchall_e
    move-exception v0

    goto :goto_7

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v36    # "$i$f$withChangeList":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .restart local v2    # "nodesToInsert":Ljava/util/List;
    .local v3, "fromAnchor":Landroidx/compose/runtime/Anchor;
    .local v4, "fromTable":Landroidx/compose/runtime/SlotTable;
    .local v5, "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v12    # "$i$f$withChangeList":I
    .restart local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    :catchall_f
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move/from16 v36, v12

    move/from16 v29, v14

    move-object/from16 v44, v15

    .end local v2    # "nodesToInsert":Ljava/util/List;
    .end local v3    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v4    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v5    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v12    # "$i$f$withChangeList":I
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    goto :goto_7

    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v36    # "$i$f$withChangeList":I
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .restart local v2    # "nodesToInsert":Ljava/util/List;
    .restart local v3    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v4    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v5    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .local v11, "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v12    # "$i$f$withChangeList":I
    .restart local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    :catchall_10
    move-exception v0

    move-object/from16 v49, v2

    move-object/from16 v23, v3

    move-object/from16 v41, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v34, v11

    move/from16 v36, v12

    move/from16 v29, v14

    move-object/from16 v44, v15

    .end local v2    # "nodesToInsert":Ljava/util/List;
    .end local v3    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v4    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v5    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v6    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v12    # "$i$f$withChangeList":I
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .restart local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .restart local v49    # "nodesToInsert":Ljava/util/List;
    :goto_7
    :try_start_1c
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SlotReader;->close()V

    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v36    # "$i$f$withChangeList":I
    .end local p1    # "references":Ljava/util/List;
    throw v0

    .line 4241
    .end local v8    # "effectiveNodeIndex":Landroidx/compose/runtime/internal/IntRef;
    .end local v17    # "item$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ComposerImpl$insertMovableContentGuarded$1$1":I
    .end local v19    # "index$iv":I
    .end local v21    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v22    # "$i$f$read":I
    .end local v23    # "fromAnchor":Landroidx/compose/runtime/Anchor;
    .end local v24    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v25    # "location":I
    .end local v26    # "$i$a$-let-SlotTable$read$1$iv":I
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v35    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v41    # "fromTable":Landroidx/compose/runtime/SlotTable;
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v45    # "resolvedState":Landroidx/compose/runtime/MovableContentState;
    .end local v46    # "from":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v49    # "nodesToInsert":Ljava/util/List;
    .local v7, "index$iv":I
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v12    # "$i$f$withChangeList":I
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local p1    # "references":Ljava/util/List;
    :cond_8
    move/from16 v19, v7

    move-object/from16 v34, v11

    move/from16 v36, v12

    move/from16 v29, v14

    move-object/from16 v44, v15

    .line 4285
    .end local v7    # "index$iv":I
    .end local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v12    # "$i$f$withChangeList":I
    .end local v14    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .end local v15    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v36    # "$i$f$withChangeList":I
    .restart local v44    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 3151
    .end local v16    # "$i$f$fastForEach":I
    .end local v44    # "$this$fastForEach$iv":Ljava/util/List;
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endMovableContentPlacement()V

    .line 3152
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    .line 3153
    nop

    .line 4239
    .end local v29    # "$i$a$-withChangeList-ComposerImpl$insertMovableContentGuarded$1":I
    nop

    .line 4286
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4287
    nop

    .line 4288
    nop

    .line 3154
    .end local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v36    # "$i$f$withChangeList":I
    return-void

    .line 4286
    .restart local v10    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v13    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v36    # "$i$f$withChangeList":I
    :catchall_11
    move-exception v0

    goto :goto_8

    .end local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v36    # "$i$f$withChangeList":I
    .restart local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v12    # "$i$f$withChangeList":I
    :catchall_12
    move-exception v0

    move-object/from16 v34, v11

    move/from16 v36, v12

    .end local v11    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v12    # "$i$f$withChangeList":I
    .restart local v34    # "newChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v36    # "$i$f$withChangeList":I
    :goto_8
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    throw v0
.end method

.method private final insertedGroupVirtualIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2604
    rsub-int/lit8 v0, p1, -0x2

    return v0
.end method

.method private final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 16
    .param p1, "content"    # Landroidx/compose/runtime/MovableContent;
    .param p2, "locals"    # Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .param p3, "parameter"    # Ljava/lang/Object;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 2964
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const v0, 0x78cc281

    invoke-virtual {v1, v0, v10}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    .line 2965
    invoke-direct {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 2969
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v13

    .line 2971
    .local v13, "savedCompoundKeyHash":I
    nop

    .line 2972
    const/4 v14, 0x0

    :try_start_0
    iput v0, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2974
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0, v2, v3, v14}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 2979
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    move v0, v2

    .line 2980
    .local v0, "providersChanged":Z
    if-eqz v0, :cond_3

    invoke-direct {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2981
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v4

    const/16 v5, 0xca

    invoke-direct {v1, v5, v2, v4, v11}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2982
    iput-object v14, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2987
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p4, :cond_4

    .line 2988
    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 2991
    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v4, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v7

    .line 2992
    .local v7, "anchor":Landroidx/compose/runtime/Anchor;
    new-instance v15, Landroidx/compose/runtime/MovableContentStateReference;

    .line 2993
    nop

    .line 2994
    nop

    .line 2995
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    .line 2996
    iget-object v6, v1, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2997
    nop

    .line 2998
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 2999
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    .line 2992
    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    move-object v2, v15

    .line 3001
    .local v2, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    .end local v2    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v7    # "anchor":Landroidx/compose/runtime/Anchor;
    goto :goto_1

    .line 3003
    :cond_4
    iget-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 3004
    .local v2, "savedProvidersInvalid":Z
    iput-boolean v0, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 3005
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/Composer;

    new-instance v5, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;

    invoke-direct {v5, v10, v12}, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    const v6, 0x12d6006f

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3006
    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    .end local v0    # "providersChanged":Z
    .end local v2    # "savedProvidersInvalid":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 3011
    iput-object v14, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3012
    iput v13, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3013
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    .line 3014
    nop

    .line 3015
    return-void

    .line 3010
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 3011
    iput-object v14, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3012
    iput v13, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3013
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    throw v0
.end method

.method private final nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;
    .locals 1
    .param p1, "$this$nodeAt"    # Landroidx/compose/runtime/SlotReader;
    .param p2, "index"    # I

    .line 3332
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final nodeIndexOf(IIII)I
    .locals 6
    .param p1, "groupLocation"    # I
    .param p2, "group"    # I
    .param p3, "recomposeGroup"    # I
    .param p4, "recomposeIndex"    # I

    .line 2658
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    .line 2659
    .local v0, "anchorGroup":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 2660
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2661
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_0

    .line 2664
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p4

    .line 2667
    .local v1, "index":I
    :goto_1
    if-ne v0, p2, :cond_2

    return v1

    .line 2670
    :cond_2
    move v2, v0

    .line 2671
    .local v2, "current":I
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 2672
    .local v3, "nodeIndexLimit":I
    :cond_3
    if-ge v1, v3, :cond_5

    .line 2673
    if-eq v2, p1, :cond_5

    .line 2674
    add-int/lit8 v2, v2, 0x1

    .line 2675
    :goto_2
    if-ge v2, p1, :cond_4

    .line 2676
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 2677
    .local v4, "end":I
    if-lt p1, v4, :cond_3

    .line 2678
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 2679
    move v2, v4

    .end local v4    # "end":I
    goto :goto_2

    .line 2681
    :cond_4
    nop

    .line 2683
    :cond_5
    return v1
.end method

.method private final recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 19
    .param p1, "from"    # Landroidx/compose/runtime/ControlledComposition;
    .param p2, "to"    # Landroidx/compose/runtime/ControlledComposition;
    .param p3, "index"    # Ljava/lang/Integer;
    .param p4, "invalidations"    # Ljava/util/List;
    .param p5, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 3179
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3180
    .local v3, "savedIsComposing":Z
    iget v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3181
    .local v4, "savedNodeIndex":I
    nop

    .line 3182
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3183
    const/4 v0, 0x0

    iput v0, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3184
    move-object/from16 v0, p4

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 4289
    .local v5, "$i$f$fastForEach":I
    nop

    .line 4290
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    .line 4291
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 4292
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    const/4 v10, 0x0

    .line 3184
    .local v10, "$i$a$-fastForEach-ComposerImpl$recomposeMovableContent$1":I
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .local v11, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 3185
    .local v9, "instances":Landroidx/compose/runtime/collection/IdentityArraySet;
    if-eqz v9, :cond_1

    .line 3186
    move-object v12, v9

    .local v12, "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/4 v13, 0x0

    .line 4293
    .local v13, "$i$f$fastForEach":I
    nop

    .line 4294
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v14

    .line 4295
    .local v14, "values$iv":[Ljava/lang/Object;
    const/4 v15, 0x0

    move-object/from16 v16, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v15, "i$iv":I
    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    :goto_1
    if-ge v15, v0, :cond_0

    .line 4297
    move/from16 v17, v0

    aget-object v0, v14, v15

    move/from16 v18, v5

    .end local v5    # "$i$f$fastForEach":I
    .local v18, "$i$f$fastForEach":I
    const-string/jumbo v5, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "instance":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 3187
    .local v5, "$i$a$-fastForEach-ComposerImpl$recomposeMovableContent$1$1":I
    invoke-virtual {v1, v11, v0}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 3188
    nop

    .line 4297
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v5    # "$i$a$-fastForEach-ComposerImpl$recomposeMovableContent$1$1":I
    nop

    .line 4295
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    move/from16 v5, v18

    goto :goto_1

    .end local v18    # "$i$f$fastForEach":I
    .local v5, "$i$f$fastForEach":I
    :cond_0
    move/from16 v18, v5

    .line 4299
    .end local v5    # "$i$f$fastForEach":I
    .end local v15    # "i$iv":I
    .restart local v18    # "$i$f$fastForEach":I
    nop

    .end local v12    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v13    # "$i$f$fastForEach":I
    .end local v14    # "values$iv":[Ljava/lang/Object;
    goto :goto_2

    .line 3190
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    :cond_1
    move-object/from16 v16, v0

    move/from16 v18, v5

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    invoke-virtual {v1, v11, v0}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 3192
    :goto_2
    nop

    .line 4292
    .end local v9    # "instances":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v10    # "$i$a$-fastForEach-ComposerImpl$recomposeMovableContent$1":I
    .end local v11    # "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    nop

    .line 4290
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v5, v18

    goto :goto_0

    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    :cond_2
    move-object/from16 v16, v0

    move/from16 v18, v5

    .line 4300
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .end local v6    # "index$iv":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastForEach":I
    nop

    .line 3193
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    if-eqz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    :goto_3
    move-object/from16 v5, p2

    move-object/from16 v6, p5

    :try_start_1
    invoke-interface {v2, v5, v0, v6}, Landroidx/compose/runtime/ControlledComposition;->delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_4
    move-object/from16 v5, p2

    move-object/from16 v6, p5

    :goto_4
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3195
    :cond_5
    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3196
    iput v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3193
    return-object v0

    .line 3195
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    :goto_5
    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3196
    iput v4, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    throw v0
.end method

.method static synthetic recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 3172
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 3173
    move-object v2, v0

    goto :goto_0

    .line 3172
    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 3174
    move-object v3, v0

    goto :goto_1

    .line 3172
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 3175
    move-object v4, v0

    goto :goto_2

    .line 3172
    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 3176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    move-object v5, p4

    goto :goto_3

    .line 3172
    :cond_3
    move-object v5, p4

    :goto_3
    move-object v1, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final recomposeToGroupEnd()V
    .locals 14

    .line 2509
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 2510
    .local v0, "wasComposing":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 2511
    const/4 v1, 0x0

    .line 2513
    .local v1, "recomposed":Z
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    .line 2514
    .local v2, "parent":I
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 2515
    .local v3, "end":I
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2516
    .local v4, "recomposeIndex":I
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v5

    .line 2517
    .local v5, "recomposeCompoundKey":I
    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2518
    .local v6, "oldGroupNodeCount":I
    move v7, v2

    .line 2520
    .local v7, "oldGroup":I
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v9

    invoke-static {v8, v9, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v8

    .line 2521
    .local v8, "firstInRange":Landroidx/compose/runtime/Invalidation;
    :goto_0
    if-eqz v8, :cond_1

    .line 2522
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v9

    .line 2524
    .local v9, "location":I
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 2526
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2527
    const/4 v1, 0x1

    .line 2529
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2530
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v10

    .line 2532
    .local v10, "newGroup":I
    invoke-direct {p0, v7, v10, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    .line 2533
    move v7, v10

    .line 2537
    nop

    .line 2538
    nop

    .line 2539
    nop

    .line 2540
    nop

    .line 2541
    nop

    .line 2537
    invoke-direct {p0, v9, v10, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->nodeIndexOf(IIII)I

    move-result v11

    iput v11, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2546
    nop

    .line 2547
    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v11

    .line 2548
    nop

    .line 2549
    nop

    .line 2546
    invoke-direct {p0, v11, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(III)I

    move-result v11

    iput v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2553
    const/4 v11, 0x0

    iput-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2556
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    move-object v13, p0

    check-cast v13, Landroidx/compose/runtime/Composer;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->compose(Landroidx/compose/runtime/Composer;)V

    .line 2559
    iput-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2562
    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/SlotReader;->restoreParent(I)V

    .end local v10    # "newGroup":I
    goto :goto_1

    .line 2567
    :cond_0
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Stack;->push(Ljava/lang/Object;)Z

    .line 2568
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V

    .line 2569
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v10}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    .line 2578
    :goto_1
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v11

    invoke-static {v10, v11, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v8

    .end local v9    # "location":I
    goto :goto_0

    .line 2581
    :cond_1
    if-eqz v1, :cond_2

    .line 2582
    invoke-direct {p0, v7, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    .line 2583
    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2584
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v9

    .line 2585
    .local v9, "parentGroupNodes":I
    add-int v10, v4, v9

    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2586
    add-int v10, v6, v9

    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .end local v9    # "parentGroupNodes":I
    goto :goto_2

    .line 2589
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    .line 2591
    :goto_2
    iput v5, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2593
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 2594
    return-void
.end method

.method private final recordDelete()V
    .locals 1

    .line 3374
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3375
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeCurrentGroup()V

    .line 3376
    return-void
.end method

.method private final recordInsert(Landroidx/compose/runtime/Anchor;)V
    .locals 3
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 3363
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/FixupList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3364
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;)V

    goto :goto_0

    .line 3366
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/changelist/FixupList;)V

    .line 3367
    new-instance v0, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    .line 3369
    :goto_0
    return-void
.end method

.method private final recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 6
    .param p1, "providers"    # Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2067
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    .local v0, "$this$recordProviderUpdate_u24lambda_u2413":Landroidx/compose/runtime/ComposerImpl;
    const/4 v1, 0x0

    .line 2068
    .local v1, "$i$a$-run-ComposerImpl$recordProviderUpdate$providerUpdates$1":I
    new-instance v2, Landroidx/compose/runtime/collection/IntMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroidx/compose/runtime/collection/IntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2069
    .local v2, "newProviderUpdates":Landroidx/compose/runtime/collection/IntMap;
    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 2070
    nop

    .line 2067
    .end local v0    # "$this$recordProviderUpdate_u24lambda_u2413":Landroidx/compose/runtime/ComposerImpl;
    .end local v1    # "$i$a$-run-ComposerImpl$recordProviderUpdate$providerUpdates$1":I
    .end local v2    # "newProviderUpdates":Landroidx/compose/runtime/collection/IntMap;
    move-object v0, v2

    .line 2072
    .local v0, "providerUpdates":Landroidx/compose/runtime/collection/IntMap;
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/IntMap;->set(ILjava/lang/Object;)V

    .line 2073
    return-void
.end method

.method private final recordUpsAndDowns(III)V
    .locals 4
    .param p1, "oldGroup"    # I
    .param p2, "newGroup"    # I
    .param p3, "commonRoot"    # I

    .line 2729
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2730
    .local v0, "reader":Landroidx/compose/runtime/SlotReader;
    nop

    .line 2731
    nop

    .line 2732
    nop

    .line 2733
    nop

    .line 2730
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result v1

    .line 2737
    .local v1, "nearestCommonRoot":I
    move v2, p1

    .line 2738
    .local v2, "current":I
    :goto_0
    if-lez v2, :cond_1

    if-eq v2, v1, :cond_1

    .line 2739
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 2740
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    goto :goto_0

    .line 2744
    :cond_1
    invoke-direct {p0, p2, v1}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    .line 2745
    return-void
.end method

.method private final reportAllMovableContent()V
    .locals 12

    .line 3494
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->containsMark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    .line 3496
    .local v0, "changes":Landroidx/compose/runtime/changelist/ChangeList;
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 3497
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v2, 0x0

    .line 4348
    .local v2, "$i$f$read":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v3

    .line 4349
    nop

    .local v3, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/4 v4, 0x0

    .line 4350
    .local v4, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4351
    move-object v5, v3

    .local v5, "reader":Landroidx/compose/runtime/SlotReader;
    const/4 v6, 0x0

    .line 3498
    .local v6, "$i$a$-read-ComposerImpl$reportAllMovableContent$1":I
    :try_start_0
    iput-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3499
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .local v7, "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    const/4 v8, 0x0

    .line 4352
    .local v8, "$i$f$withChangeList":I
    invoke-virtual {v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4353
    .local v9, "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    nop

    .line 4354
    :try_start_1
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4355
    const/4 v10, 0x0

    .line 3500
    .local v10, "$i$a$-withChangeList-ComposerImpl$reportAllMovableContent$1$1":I
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3501
    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->releaseMovableContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3502
    nop

    .line 4355
    .end local v10    # "$i$a$-withChangeList-ComposerImpl$reportAllMovableContent$1$1":I
    nop

    .line 4357
    :try_start_2
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 4358
    nop

    .line 4359
    nop

    .line 3503
    .end local v7    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v8    # "$i$f$withChangeList":I
    .end local v9    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    nop

    .end local v5    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v6    # "$i$a$-read-ComposerImpl$reportAllMovableContent$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4351
    nop

    .line 4360
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 4361
    nop

    .line 4350
    nop

    .line 4349
    .end local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 4362
    goto :goto_0

    .line 4357
    .restart local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    .restart local v5    # "reader":Landroidx/compose/runtime/SlotReader;
    .restart local v6    # "$i$a$-read-ComposerImpl$reportAllMovableContent$1":I
    .restart local v7    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .restart local v8    # "$i$f$withChangeList":I
    .restart local v9    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .end local v0    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$read":I
    .end local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4360
    .end local v5    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v6    # "$i$a$-read-ComposerImpl$reportAllMovableContent$1":I
    .end local v7    # "this_$iv":Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .end local v8    # "$i$f$withChangeList":I
    .end local v9    # "previousChangeList$iv":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v0    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v2    # "$i$f$read":I
    .restart local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    :catchall_1
    move-exception v5

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v5

    .line 3505
    .end local v0    # "changes":Landroidx/compose/runtime/changelist/ChangeList;
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$read":I
    .end local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    :cond_0
    :goto_0
    return-void
.end method

.method private final reportFreeMovableContent(I)V
    .locals 1
    .param p1, "groupBeingRemoved"    # I

    .line 3485
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    .line 3486
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 3487
    return-void
.end method

.method private static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 25
    .param p0, "this$0"    # Landroidx/compose/runtime/ComposerImpl;
    .param p1, "group"    # I
    .param p2, "needsNodeDelete"    # Z
    .param p3, "nodeIndex"    # I

    .line 3391
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3392
    .local v3, "reader":Landroidx/compose/runtime/SlotReader;
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->hasMark(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    .line 3395
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v4

    .line 3396
    .local v4, "key":I
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v7

    .line 3397
    .local v7, "objectKey":Ljava/lang/Object;
    const v8, 0x78cc281

    if-ne v4, v8, :cond_2

    instance-of v8, v7, Landroidx/compose/runtime/MovableContent;

    if-eqz v8, :cond_2

    .line 3404
    move-object v6, v7

    check-cast v6, Landroidx/compose/runtime/MovableContent;

    .line 3405
    .local v6, "movableContent":Landroidx/compose/runtime/MovableContent;
    invoke-virtual {v3, v1, v5}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v8

    .line 3406
    .local v8, "parameter":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v17

    .line 3407
    .local v17, "anchor":Landroidx/compose/runtime/Anchor;
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v9

    add-int v14, v1, v9

    .line 3408
    .local v14, "end":I
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v9, v1, v14}, Landroidx/compose/runtime/ComposerKt;->access$filterToRange(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    .local v9, "$this$fastMap$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 4370
    .local v10, "$i$f$fastMap":I
    nop

    .line 4371
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 4372
    .local v11, "target$iv":Ljava/util/ArrayList;
    move-object v12, v9

    .local v12, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 4373
    .local v13, "$i$f$fastForEach":I
    nop

    .line 4374
    const/4 v15, 0x0

    .local v15, "index$iv$iv":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v15, v5, :cond_0

    .line 4375
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 4376
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 4377
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v20, v5

    move-object v5, v11

    check-cast v5, Ljava/util/Collection;

    move-object/from16 v21, v18

    check-cast v21, Landroidx/compose/runtime/Invalidation;

    .local v21, "it":Landroidx/compose/runtime/Invalidation;
    const/16 v22, 0x0

    .line 3409
    .local v22, "$i$a$-fastMap-ComposerImpl$reportFreeMovableContent$reportGroup$invalidations$1":I
    move-object/from16 v23, v9

    .end local v9    # "$this$fastMap$iv":Ljava/util/List;
    .local v23, "$this$fastMap$iv":Ljava/util/List;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    move/from16 v24, v10

    .end local v10    # "$i$f$fastMap":I
    .local v24, "$i$f$fastMap":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Invalidation;->getInstances()Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 4377
    .end local v21    # "it":Landroidx/compose/runtime/Invalidation;
    .end local v22    # "$i$a$-fastMap-ComposerImpl$reportFreeMovableContent$reportGroup$invalidations$1":I
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4378
    nop

    .line 4376
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 4374
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v20

    move-object/from16 v9, v23

    move/from16 v10, v24

    goto :goto_0

    .end local v23    # "$this$fastMap$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastMap":I
    .restart local v9    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v10    # "$i$f$fastMap":I
    :cond_0
    move-object/from16 v23, v9

    move/from16 v24, v10

    .line 4379
    .end local v9    # "$this$fastMap$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastMap":I
    .end local v15    # "index$iv$iv":I
    .restart local v23    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastMap":I
    nop

    .line 4380
    .end local v12    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    move-object v15, v11

    check-cast v15, Ljava/util/List;

    .line 3408
    .end local v11    # "target$iv":Ljava/util/ArrayList;
    .end local v23    # "$this$fastMap$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastMap":I
    nop

    .line 3411
    .local v15, "invalidations":Ljava/util/List;
    new-instance v5, Landroidx/compose/runtime/MovableContentStateReference;

    .line 3412
    nop

    .line 3413
    nop

    .line 3414
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v12

    .line 3415
    iget-object v13, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 3416
    nop

    .line 3417
    nop

    .line 3418
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v16

    .line 3411
    move-object v9, v5

    move-object v10, v6

    move-object v11, v8

    move/from16 v18, v14

    .end local v14    # "end":I
    .local v18, "end":I
    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v16}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 3420
    .local v5, "reference":Landroidx/compose/runtime/MovableContentStateReference;
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 3421
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 3422
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 3423
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v10

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3422
    invoke-virtual {v9, v10, v11, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 3425
    if-eqz p2, :cond_1

    .line 3426
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v9, v2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovementAndDeleteNode(II)V

    .line 3427
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 3428
    :cond_1
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v5

    .end local v5    # "reference":Landroidx/compose/runtime/MovableContentStateReference;
    .end local v6    # "movableContent":Landroidx/compose/runtime/MovableContent;
    .end local v8    # "parameter":Ljava/lang/Object;
    .end local v15    # "invalidations":Ljava/util/List;
    .end local v17    # "anchor":Landroidx/compose/runtime/Anchor;
    .end local v18    # "end":I
    goto/16 :goto_7

    .line 3429
    :cond_2
    const/16 v5, 0xce

    if-ne v4, v5, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3433
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v6, :cond_3

    check-cast v5, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 3434
    .local v5, "contextHolder":Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;
    :goto_1
    if-eqz v5, :cond_5

    .line 3439
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v6

    .line 3440
    .local v6, "compositionContext":Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->getComposers()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 4381
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    .local v12, "composer":Landroidx/compose/runtime/ComposerImpl;
    const/4 v13, 0x0

    .line 3441
    .local v13, "$i$a$-forEach-ComposerImpl$reportFreeMovableContent$reportGroup$1":I
    invoke-direct {v12}, Landroidx/compose/runtime/ComposerImpl;->reportAllMovableContent()V

    .line 3445
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    .line 3446
    nop

    .line 4381
    .end local v12    # "composer":Landroidx/compose/runtime/ComposerImpl;
    .end local v13    # "$i$a$-forEach-ComposerImpl$reportFreeMovableContent$reportGroup$1":I
    nop

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 4382
    :cond_4
    nop

    .line 3448
    .end local v6    # "compositionContext":Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    :cond_5
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v5

    .end local v5    # "contextHolder":Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;
    goto/16 :goto_7

    .line 3449
    :cond_6
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v5

    .end local v4    # "key":I
    .end local v7    # "objectKey":Ljava/lang/Object;
    goto/16 :goto_7

    .line 3450
    :cond_8
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->containsMark(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3454
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v4

    .line 3455
    .local v4, "size":I
    add-int v7, v1, v4

    .line 3456
    .local v7, "end":I
    add-int/lit8 v8, v1, 0x1

    .line 3457
    .local v8, "current":I
    const/4 v9, 0x0

    .line 3458
    .local v9, "runningNodeCount":I
    :goto_3
    if-ge v8, v7, :cond_e

    .line 3466
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v10

    .line 3467
    .local v10, "isNode":Z
    if-eqz v10, :cond_9

    .line 3468
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 3469
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    .line 3471
    :cond_9
    nop

    .line 3472
    nop

    .line 3473
    if-nez v10, :cond_b

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    move v11, v5

    goto :goto_5

    :cond_b
    :goto_4
    move v11, v6

    .line 3474
    :goto_5
    if-eqz v10, :cond_c

    move v12, v5

    goto :goto_6

    :cond_c
    add-int v12, v2, v9

    .line 3471
    :goto_6
    invoke-static {v0, v8, v11, v12}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    move-result v11

    add-int/2addr v9, v11

    .line 3476
    if-eqz v10, :cond_d

    .line 3477
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 3478
    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 3480
    :cond_d
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v11

    add-int/2addr v8, v11

    .end local v10    # "isNode":Z
    goto :goto_3

    .line 3482
    :cond_e
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    goto :goto_7

    :cond_f
    move v5, v9

    .end local v4    # "size":I
    .end local v7    # "end":I
    .end local v8    # "current":I
    .end local v9    # "runningNodeCount":I
    goto :goto_7

    .line 3483
    :cond_10
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move v5, v6

    goto :goto_7

    :cond_11
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v5

    .line 3392
    :goto_7
    return v5
.end method

.method private final skipGroup()V
    .locals 2

    .line 1611
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 1612
    return-void
.end method

.method private final skipReaderToGroupEnd()V
    .locals 1

    .line 2834
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParentNodes()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2835
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2836
    return-void
.end method

.method private final start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 20
    .param p1, "key"    # I
    .param p2, "objectKey"    # Ljava/lang/Object;
    .param p3, "kind"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .line 2208
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 2210
    invoke-direct {v0, v7, v8, v10}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2214
    const/4 v1, 0x0

    .line 4223
    .local v1, "$i$f$isNode-impl":I
    sget-object v2, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v2

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eq v9, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v11

    .line 2214
    .end local v1    # "$i$f$isNode-impl":I
    :goto_0
    move v12, v1

    .line 2215
    .local v12, "isNode":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    const/4 v13, 0x0

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    .line 2216
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 2217
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v11

    .line 2218
    .local v11, "startIndex":I
    nop

    .line 2219
    if-eqz v12, :cond_1

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_3

    .line 2220
    :cond_1
    if-eqz v10, :cond_3

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v8, :cond_2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v8

    :goto_1
    invoke-virtual {v1, v7, v3, v10}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 2221
    :cond_3
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v8, :cond_4

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v8

    :goto_2
    invoke-virtual {v1, v7, v3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 2223
    :goto_3
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v1, :cond_5

    move-object v14, v1

    .local v14, "pending":Landroidx/compose/runtime/Pending;
    const/4 v15, 0x0

    .line 2224
    .local v15, "$i$a$-let-ComposerImpl$start$1":I
    new-instance v16, Landroidx/compose/runtime/KeyInfo;

    .line 2225
    nop

    .line 2226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2227
    invoke-direct {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v4

    .line 2228
    const/4 v5, -0x1

    .line 2229
    const/4 v6, 0x0

    .line 2224
    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 2231
    .local v1, "insertKeyInfo":Landroidx/compose/runtime/KeyInfo;
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v14}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2232
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2223
    .end local v1    # "insertKeyInfo":Landroidx/compose/runtime/KeyInfo;
    .end local v14    # "pending":Landroidx/compose/runtime/Pending;
    .end local v15    # "$i$a$-let-ComposerImpl$start$1":I
    nop

    .line 2234
    :cond_5
    invoke-direct {v0, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    .line 2235
    return-void

    .line 2238
    .end local v11    # "startIndex":I
    :cond_6
    const/4 v1, 0x0

    .line 4224
    .local v1, "$i$f$isReusable-impl":I
    sget-object v4, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/GroupKind$Companion;->getNode-ULZAiWs()I

    move-result v4

    if-eq v9, v4, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v11

    .end local v1    # "$i$f$isReusable-impl":I
    :goto_4
    if-nez v1, :cond_8

    .line 2238
    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v11

    :goto_5
    move v14, v1

    .line 2239
    .local v14, "forceReplace":Z
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v1, :cond_a

    .line 2240
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    .line 2241
    .local v1, "slotKey":I
    if-nez v14, :cond_9

    if-ne v1, v7, :cond_9

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2243
    invoke-direct {v0, v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto :goto_6

    .line 2245
    :cond_9
    new-instance v4, Landroidx/compose/runtime/Pending;

    .line 2246
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->extractKeys()Ljava/util/List;

    move-result-object v5

    .line 2247
    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2245
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    iput-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2252
    .end local v1    # "slotKey":I
    :cond_a
    :goto_6
    iget-object v15, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2253
    .local v15, "pending":Landroidx/compose/runtime/Pending;
    const/16 v16, 0x0

    .line 2254
    .local v16, "newPending":Landroidx/compose/runtime/Pending;
    if-eqz v15, :cond_12

    .line 2256
    invoke-virtual {v15, v7, v8}, Landroidx/compose/runtime/Pending;->getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;

    move-result-object v6

    .line 2257
    .local v6, "keyInfo":Landroidx/compose/runtime/KeyInfo;
    if-nez v14, :cond_c

    if-eqz v6, :cond_c

    .line 2259
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2264
    invoke-virtual {v6}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v1

    .line 2268
    .local v1, "location":I
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    invoke-virtual {v15}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2271
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/Pending;->slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    .line 2272
    .local v2, "relativePosition":I
    invoke-virtual {v15}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v3

    sub-int v3, v2, v3

    .line 2273
    .local v3, "currentRelativePosition":I
    invoke-virtual {v15}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v4

    invoke-virtual {v15, v2, v4}, Landroidx/compose/runtime/Pending;->registerMoveSlot(II)V

    .line 2274
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2275
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2276
    if-lez v3, :cond_b

    .line 2278
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCurrentGroup(I)V

    .line 2280
    :cond_b
    invoke-direct {v0, v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    .end local v1    # "location":I
    .end local v2    # "relativePosition":I
    .end local v3    # "currentRelativePosition":I
    goto/16 :goto_b

    .line 2285
    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 2286
    iput-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 2287
    iput-object v13, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2288
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->ensureWriter()V

    .line 2289
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 2290
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v13

    .line 2291
    .local v13, "startIndex":I
    nop

    .line 2292
    if-eqz v12, :cond_d

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_9

    .line 2293
    :cond_d
    if-eqz v10, :cond_f

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v8, :cond_e

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :cond_e
    move-object v3, v8

    :goto_7
    invoke-virtual {v1, v7, v3, v10}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 2294
    :cond_f
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v8, :cond_10

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_10
    move-object v3, v8

    :goto_8
    invoke-virtual {v1, v7, v3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 2296
    :goto_9
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 2297
    new-instance v17, Landroidx/compose/runtime/KeyInfo;

    .line 2298
    nop

    .line 2299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2300
    invoke-direct {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v4

    .line 2301
    const/4 v5, -0x1

    .line 2302
    const/16 v18, 0x0

    .line 2297
    move-object/from16 v1, v17

    move/from16 v2, p1

    move-object/from16 v19, v6

    .end local v6    # "keyInfo":Landroidx/compose/runtime/KeyInfo;
    .local v19, "keyInfo":Landroidx/compose/runtime/KeyInfo;
    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 2304
    .local v1, "insertKeyInfo":Landroidx/compose/runtime/KeyInfo;
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v15}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v15, v1, v2}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2305
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2306
    new-instance v2, Landroidx/compose/runtime/Pending;

    .line 2307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 2308
    if-eqz v12, :cond_11

    goto :goto_a

    :cond_11
    iget v11, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2306
    :goto_a
    invoke-direct {v2, v3, v11}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    move-object/from16 v16, v2

    move-object/from16 v1, v16

    goto :goto_c

    .line 2313
    .end local v1    # "insertKeyInfo":Landroidx/compose/runtime/KeyInfo;
    .end local v13    # "startIndex":I
    .end local v19    # "keyInfo":Landroidx/compose/runtime/KeyInfo;
    :cond_12
    :goto_b
    move-object/from16 v1, v16

    .end local v16    # "newPending":Landroidx/compose/runtime/Pending;
    .local v1, "newPending":Landroidx/compose/runtime/Pending;
    :goto_c
    invoke-direct {v0, v12, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    .line 2314
    return-void
.end method

.method private final startGroup(I)V
    .locals 2
    .param p1, "key"    # I

    .line 1600
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startGroup(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;

    .line 1602
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startReaderGroup(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "isNode"    # Z
    .param p2, "data"    # Ljava/lang/Object;

    .line 2197
    if-eqz p1, :cond_0

    .line 2198
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->startNode()V

    goto :goto_0

    .line 2200
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 2201
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateAuxData(Ljava/lang/Object;)V

    .line 2203
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 2205
    :goto_0
    return-void
.end method

.method private final startRoot()V
    .locals 3

    .line 1448
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1449
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    .line 1452
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    .line 1453
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1454
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1455
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1459
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 1464
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    if-nez v0, :cond_1

    .line 1465
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    .line 1468
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/util/Set;
    const/4 v1, 0x0

    .line 1469
    .local v1, "$i$a$-let-ComposerImpl$startRoot$1":I
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1470
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    .line 1471
    nop

    .line 1468
    .end local v0    # "it":Ljava/util/Set;
    .end local v1    # "$i$a$-let-ComposerImpl$startRoot$1":I
    nop

    .line 1472
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    .line 1473
    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "groupKey"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;
    .param p3, "data"    # Ljava/lang/Object;

    .line 3677
    if-nez p2, :cond_1

    .line 3678
    if-eqz p3, :cond_0

    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3679
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 3681
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 3682
    :cond_1
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_2

    .line 3683
    move-object v0, p2

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    goto :goto_0

    .line 3685
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroupKeyHash(I)V

    .line 3686
    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeEnterGroupKeyHash(I)V
    .locals 4
    .param p1, "keyHash"    # I

    .line 3689
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    .local v0, "$this$rol$iv":I
    const/4 v1, 0x3

    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 4368
    .local v2, "$i$f$rol":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    .line 3689
    .end local v0    # "$this$rol$iv":I
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$rol":I
    xor-int v0, v3, p1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3690
    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "groupKey"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;
    .param p3, "data"    # Ljava/lang/Object;

    .line 3693
    if-nez p2, :cond_1

    .line 3694
    if-eqz p3, :cond_0

    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3695
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 3697
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 3698
    :cond_1
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_2

    .line 3699
    move-object v0, p2

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    goto :goto_0

    .line 3701
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroupKeyHash(I)V

    .line 3702
    :goto_0
    return-void
.end method

.method private final updateCompoundKeyWhenWeExitGroupKeyHash(I)V
    .locals 4
    .param p1, "groupKey"    # I

    .line 3705
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v0, v1

    .local v0, "$this$ror$iv":I
    const/4 v1, 0x3

    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 4369
    .local v2, "$i$f$ror":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v3

    .line 3705
    .end local v0    # "$this$ror$iv":I
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$ror":I
    iput v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3706
    return-void
.end method

.method private final updateNodeCount(II)V
    .locals 9
    .param p1, "group"    # I
    .param p2, "count"    # I

    .line 2699
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 2700
    if-gez p1, :cond_1

    .line 2701
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    .local v0, "$this$updateNodeCount_u24lambda_u2418":Landroidx/compose/runtime/ComposerImpl;
    const/4 v1, 0x0

    .line 2702
    .local v1, "$i$a$-run-ComposerImpl$updateNodeCount$virtualCounts$1":I
    new-instance v2, Landroidx/collection/MutableIntIntMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2703
    .local v2, "newCounts":Landroidx/collection/MutableIntIntMap;
    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 2704
    nop

    .line 2701
    .end local v0    # "$this$updateNodeCount_u24lambda_u2418":Landroidx/compose/runtime/ComposerImpl;
    .end local v1    # "$i$a$-run-ComposerImpl$updateNodeCount$virtualCounts$1":I
    .end local v2    # "newCounts":Landroidx/collection/MutableIntIntMap;
    move-object v0, v2

    .line 2706
    .local v0, "virtualCounts":Landroidx/collection/MutableIntIntMap;
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .end local v0    # "virtualCounts":Landroidx/collection/MutableIntIntMap;
    goto :goto_0

    .line 2708
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    .local v0, "$this$updateNodeCount_u24lambda_u2419":Landroidx/compose/runtime/ComposerImpl;
    const/4 v1, 0x0

    .line 2709
    .local v1, "$i$a$-run-ComposerImpl$updateNodeCount$nodeCounts$1":I
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v2

    new-array v2, v2, [I

    .line 2710
    .local v2, "newCounts":[I
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 2711
    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2712
    nop

    .line 2708
    .end local v0    # "$this$updateNodeCount_u24lambda_u2419":Landroidx/compose/runtime/ComposerImpl;
    .end local v1    # "$i$a$-run-ComposerImpl$updateNodeCount$nodeCounts$1":I
    .end local v2    # "newCounts":[I
    move-object v0, v2

    .line 2714
    .local v0, "nodeCounts":[I
    :cond_2
    aput p2, v0, p1

    .line 2717
    .end local v0    # "nodeCounts":[I
    :cond_3
    :goto_0
    return-void
.end method

.method private final updateNodeCountOverrides(II)V
    .locals 9
    .param p1, "group"    # I
    .param p2, "newCount"    # I

    .line 2617
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    .line 2618
    .local v0, "currentCount":I
    if-eq v0, p2, :cond_3

    .line 2620
    sub-int v1, p2, v0

    .line 2621
    .local v1, "delta":I
    move v2, p1

    .line 2623
    .local v2, "current":I
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v3}, Landroidx/compose/runtime/Stack;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2624
    .local v3, "minPending":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 2625
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v5

    add-int/2addr v5, v1

    .line 2626
    .local v5, "newCurrentNodes":I
    invoke-direct {p0, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    .line 2627
    move v6, v3

    .local v6, "pendingIndex":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 2628
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/Stack;->peek(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/Pending;

    .line 2629
    .local v7, "pending":Landroidx/compose/runtime/Pending;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2, v5}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2630
    add-int/lit8 v3, v6, -0x1

    .line 2631
    goto :goto_2

    .line 2627
    .end local v7    # "pending":Landroidx/compose/runtime/Pending;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2635
    .end local v6    # "pendingIndex":I
    :cond_1
    :goto_2
    if-gez v2, :cond_2

    .line 2636
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    goto :goto_0

    .line 2638
    :cond_2
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2639
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v2

    .end local v5    # "newCurrentNodes":I
    goto :goto_0

    .line 2643
    .end local v1    # "delta":I
    .end local v2    # "current":I
    .end local v3    # "minPending":I
    :cond_3
    return-void
.end method

.method private final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 6
    .param p1, "parentScope"    # Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .param p2, "currentProviders"    # Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2020
    move-object v0, p1

    .local v0, "$this$mutate$iv":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/4 v1, 0x0

    .line 4222
    .local v1, "$i$f$mutate":I
    invoke-interface {v0}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    .local v3, "it":Ljava/util/Map;
    const/4 v4, 0x0

    .line 2020
    .local v4, "$i$a$-mutate-ComposerImpl$updateProviderMapGroup$providerScope$1":I
    move-object v5, p2

    check-cast v5, Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4222
    .end local v3    # "it":Ljava/util/Map;
    .end local v4    # "$i$a$-mutate-ComposerImpl$updateProviderMapGroup$providerScope$1":I
    invoke-interface {v2}, Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;->build()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    .line 2020
    .end local v0    # "$this$mutate$iv":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .end local v1    # "$i$f$mutate":I
    nop

    .line 2021
    .local v0, "providerScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/16 v1, 0xcc

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderMaps()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2022
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 2023
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 2024
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2025
    return-object v0
.end method

.method private final updateSlot(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1921
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    .line 1922
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1923
    return-void
.end method

.method private final updatedNodeCount(I)I
    .locals 4
    .param p1, "group"    # I

    .line 2687
    if-gez p1, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .local v0, "it":Landroidx/collection/MutableIntIntMap;
    const/4 v2, 0x0

    .line 2688
    .local v2, "$i$a$-let-ComposerImpl$updatedNodeCount$1":I
    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntIntMap;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntIntMap;->get(I)I

    move-result v1

    .line 2687
    .end local v0    # "it":Landroidx/collection/MutableIntIntMap;
    .end local v2    # "$i$a$-let-ComposerImpl$updatedNodeCount$1":I
    :cond_0
    goto :goto_0

    .line 2689
    :cond_1
    nop

    .line 2687
    :goto_0
    return v1

    .line 2690
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2691
    .local v0, "nodeCounts":[I
    if-eqz v0, :cond_3

    .line 2692
    aget v1, v0, p1

    .line 2693
    .local v1, "override":I
    if-ltz v1, :cond_3

    return v1

    .line 2695
    .end local v1    # "override":I
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v1

    return v1
.end method

.method private final validateNodeExpected()V
    .locals 4

    .line 3335
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4338
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4342
    nop

    .line 3338
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 3339
    return-void

    .line 4339
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v2, 0x0

    .line 3336
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$validateNodeExpected$1":I
    nop

    .line 4339
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$validateNodeExpected$1":I
    const-string v2, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 4340
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final validateNodeNotExpected()V
    .locals 4

    .line 3342
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4343
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4347
    nop

    .line 3343
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    return-void

    .line 4344
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v2, 0x0

    .line 3342
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$validateNodeNotExpected$1":I
    nop

    .line 4344
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$validateNodeNotExpected$1":I
    const-string v2, "A call to createNode(), emitNode() or useNode() expected"

    .line 4345
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final withReader(Landroidx/compose/runtime/SlotReader;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p1, "reader"    # Landroidx/compose/runtime/SlotReader;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/SlotReader;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3157
    .local v0, "$i$f$withReader":I
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getReader$runtime_release()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 3158
    .local v1, "savedReader":Landroidx/compose/runtime/SlotReader;
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v2

    .line 3159
    .local v2, "savedCountOverrides":[I
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/collection/IntMap;

    move-result-object v3

    .line 3160
    .local v3, "savedProviderUpdates":Landroidx/compose/runtime/collection/IntMap;
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3161
    invoke-static {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V

    .line 3162
    nop

    .line 3163
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3164
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 3166
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3167
    invoke-static {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3168
    invoke-static {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 3164
    return-object v5

    .line 3166
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3167
    invoke-static {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3168
    invoke-static {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/collection/IntMap;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1743
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/FixupList;->updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 1746
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1748
    :goto_0
    return-void
.end method

.method public buildContext()Landroidx/compose/runtime/CompositionContext;
    .locals 10

    .line 2141
    const/16 v0, 0xce

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2142
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 2145
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2146
    .local v0, "holder":Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;
    :goto_0
    if-nez v0, :cond_4

    .line 2147
    new-instance v2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 2148
    new-instance v9, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2149
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v5

    .line 2150
    iget-boolean v6, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 2151
    iget-boolean v7, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    .line 2152
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl;->getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v1

    :cond_3
    move-object v8, v1

    .line 2148
    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZZLandroidx/compose/runtime/CompositionObserverHolder;)V

    .line 2147
    invoke-direct {v2, v9}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    move-object v0, v2

    .line 2155
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 2157
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2158
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2160
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionContext;

    return-object v1
.end method

.method public final cache(ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1, "invalid"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1909
    .local v0, "$i$f$cache":I
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlotForCache()Ljava/lang/Object;

    move-result-object v1

    .line 1910
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_1

    .line 1911
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 1912
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateCachedValue(Ljava/lang/Object;)V

    .line 1913
    move-object v1, v2

    .line 1917
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public changed(B)Z
    .locals 3
    .param p1, "value"    # B
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1825
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1826
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 1827
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    .line 1828
    .local v1, "nextPrimitive":B
    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1830
    .end local v1    # "nextPrimitive":B
    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1831
    const/4 v1, 0x1

    return v1
.end method

.method public changed(C)Z
    .locals 3
    .param p1, "value"    # C
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1814
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1815
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 1816
    move-object v1, v0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 1817
    .local v1, "nextPrimitive":C
    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1819
    .end local v1    # "nextPrimitive":C
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1820
    const/4 v1, 0x1

    return v1
.end method

.method public changed(D)Z
    .locals 6
    .param p1, "value"    # D
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1880
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1881
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1882
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 1883
    .local v3, "nextPrimitive":D
    cmpg-double v1, p1, v3

    const/4 v5, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    if-eqz v1, :cond_1

    return v5

    .line 1885
    .end local v3    # "nextPrimitive":D
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1886
    return v2
.end method

.method public changed(F)Z
    .locals 5
    .param p1, "value"    # F
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1858
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1859
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1860
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 1861
    .local v1, "nextPrimitive":F
    cmpg-float v3, p1, v1

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    return v4

    .line 1863
    .end local v1    # "nextPrimitive":F
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1864
    return v2
.end method

.method public changed(I)Z
    .locals 3
    .param p1, "value"    # I
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1891
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1892
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1893
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1894
    .local v1, "nextPrimitive":I
    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1896
    .end local v1    # "nextPrimitive":I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1897
    const/4 v1, 0x1

    return v1
.end method

.method public changed(J)Z
    .locals 4
    .param p1, "value"    # J
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1869
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1870
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1871
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1872
    .local v1, "nextPrimitive":J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 1874
    .end local v1    # "nextPrimitive":J
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1875
    const/4 v1, 0x1

    return v1
.end method

.method public changed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1794
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1796
    const/4 v0, 0x1

    goto :goto_0

    .line 1798
    :cond_0
    const/4 v0, 0x0

    .line 1794
    :goto_0
    return v0
.end method

.method public changed(S)Z
    .locals 3
    .param p1, "value"    # S
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1836
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1837
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 1838
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    .line 1839
    .local v1, "nextPrimitive":S
    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1841
    .end local v1    # "nextPrimitive":S
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1842
    const/4 v1, 0x1

    return v1
.end method

.method public changed(Z)Z
    .locals 3
    .param p1, "value"    # Z
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1847
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1848
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1849
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1850
    .local v1, "nextPrimitive":Z
    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1852
    .end local v1    # "nextPrimitive":Z
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1853
    const/4 v1, 0x1

    return v1
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1804
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1805
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1806
    const/4 v0, 0x1

    goto :goto_0

    .line 1808
    :cond_0
    const/4 v0, 0x0

    .line 1804
    :goto_0
    return v0
.end method

.method public final changesApplied$runtime_release()V
    .locals 1

    .line 1521
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1522
    return-void
.end method

.method public collectParameterInformation()V
    .locals 1

    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 1560
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    .line 1561
    return-void
.end method

.method public final composeContent$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1, "invalidationsRequested"    # Landroidx/compose/runtime/collection/IdentityArrayMap;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 3234
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4301
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4305
    nop

    .line 3235
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    .line 3236
    return-void

    .line 4302
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v2, 0x0

    .line 3234
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$composeContent$1":I
    nop

    .line 4302
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$composeContent$1":I
    const-string v2, "Expected applyChanges() to have been called"

    .line 4303
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Landroidx/compose/runtime/CompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2135
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "factory"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1637
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1638
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4212
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4216
    nop

    .line 1639
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndexStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    .line 1640
    .local v0, "insertIndex":I
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 1641
    .local v1, "groupAnchor":Landroidx/compose/runtime/Anchor;
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 1642
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v2, p1, v0, v1}, Landroidx/compose/runtime/changelist/FixupList;->createAndInsertNode(Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Anchor;)V

    .line 1643
    return-void

    .line 4213
    .local v0, "value$iv":Z
    .local v1, "$i$f$runtimeCheck":I
    :cond_0
    const/4 v2, 0x0

    .line 1638
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$createNode$1":I
    nop

    .line 4213
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$createNode$1":I
    const-string/jumbo v2, "createNode() can only be called when inserting"

    .line 4214
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final deactivate$runtime_release()V
    .locals 1

    .line 1574
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->clear()V

    .line 1575
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1576
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1577
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    .line 1578
    return-void
.end method

.method public deactivateToEndGroup(Z)V
    .locals 4
    .param p1, "changed"    # Z
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2856
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 4231
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_3

    .line 4235
    nop

    .line 2859
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2860
    if-nez p1, :cond_1

    .line 2861
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    .line 2862
    return-void

    .line 2864
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    .line 2865
    .local v0, "start":I
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getCurrentEnd()I

    move-result v1

    .line 2866
    .local v1, "end":I
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->deactivateCurrentGroup()V

    .line 2867
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    .line 2868
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2870
    .end local v0    # "start":I
    .end local v1    # "end":I
    :cond_2
    return-void

    .line 4232
    .local v0, "value$iv":Z
    .local v1, "$i$f$runtimeCheck":I
    :cond_3
    const/4 v2, 0x0

    .line 2857
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$deactivateToEndGroup$1":I
    nop

    .line 4232
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$deactivateToEndGroup$1":I
    const-string/jumbo v2, "No nodes can be emitted before calling dactivateToEndGroup"

    .line 4233
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public disableReusing()V
    .locals 1

    .line 1685
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1686
    return-void
.end method

.method public disableSourceInformation()V
    .locals 1

    .line 3222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    .line 3223
    return-void
.end method

.method public final dispose$runtime_release()V
    .locals 6

    .line 1565
    const-string v0, "Compose:Composer.dispose"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4207
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4208
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 4209
    const/4 v3, 0x0

    .line 1566
    .local v3, "$i$a$-trace-ComposerImpl$dispose$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    move-object v5, p0

    check-cast v5, Landroidx/compose/runtime/Composer;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    .line 1567
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->deactivate$runtime_release()V

    .line 1568
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/Applier;->clear()V

    .line 1569
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    .line 1570
    nop

    .end local v3    # "$i$a$-trace-ComposerImpl$dispose$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4209
    nop

    .line 4211
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 4209
    nop

    .line 1571
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    return-void

    .line 4211
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v3
.end method

.method public enableReusing()V
    .locals 1

    .line 1689
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1690
    return-void
.end method

.method public endDefaults()V
    .locals 2
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1379
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1380
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    .line 1381
    .local v0, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInScope(Z)V

    .line 1384
    :cond_0
    return-void
.end method

.method public endMovableGroup()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1440
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endNode()V
    .locals 1

    .line 1663
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public endProvider()V
    .locals 1

    .line 2077
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2078
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2079
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2080
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2081
    return-void
.end method

.method public endProviders()V
    .locals 1

    .line 2128
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2129
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2130
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2131
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2132
    return-void
.end method

.method public endReplaceableGroup()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1356
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 7
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2920
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    .line 2921
    :cond_0
    move-object v0, v1

    .line 2920
    :goto_0
    nop

    .line 2922
    .local v0, "scope":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    .line 2923
    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_2

    .local v3, "it":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 2924
    .local v4, "$i$a$-let-ComposerImpl$endRestartGroup$1":I
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/Composition;

    invoke-virtual {v5, v3, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endCompositionScope(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composition;)V

    .line 2925
    nop

    .line 2923
    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$a$-let-ComposerImpl$endRestartGroup$1":I
    :cond_2
    nop

    .line 2926
    if-eqz v0, :cond_6

    .line 2927
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime_release()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2928
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-eqz v3, :cond_6

    .line 2930
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2931
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2932
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    goto :goto_2

    .line 2934
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 2931
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setAnchor(Landroidx/compose/runtime/Anchor;)V

    .line 2937
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    .line 2938
    move-object v1, v0

    goto :goto_3

    .line 2940
    :cond_6
    nop

    .line 2926
    :goto_3
    nop

    .line 2942
    .local v1, "result":Landroidx/compose/runtime/RecomposeScopeImpl;
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 2943
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ScopeUpdateScope;

    return-object v2
.end method

.method public endReusableGroup()V
    .locals 3

    .line 1677
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne v0, v2, :cond_0

    .line 1678
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1679
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1681
    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 1682
    return-void
.end method

.method public final endReuseFromRoot()V
    .locals 3

    .line 1698
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1701
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1702
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1703
    return-void

    .line 1698
    :cond_1
    const/4 v0, 0x0

    .line 1699
    .local v0, "$i$a$-require-ComposerImpl$endReuseFromRoot$1":I
    nop

    .line 1698
    .end local v0    # "$i$a$-require-ComposerImpl$endReuseFromRoot$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot disable reuse from root if it was caused by other groups"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endToMarker(I)V
    .locals 4
    .param p1, "marker"    # I

    .line 1709
    if-gez p1, :cond_0

    .line 1711
    neg-int v0, p1

    .line 1712
    .local v0, "writerLocation":I
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1713
    .local v1, "writer":Landroidx/compose/runtime/SlotWriter;
    :goto_0
    nop

    .line 1714
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    .line 1715
    .local v2, "parent":I
    if-le v2, v0, :cond_2

    .line 1716
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .end local v2    # "parent":I
    goto :goto_0

    .line 1721
    .end local v0    # "writerLocation":I
    .end local v1    # "writer":Landroidx/compose/runtime/SlotWriter;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1725
    .local v0, "writer":Landroidx/compose/runtime/SlotWriter;
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1726
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    .line 1729
    .end local v0    # "writer":Landroidx/compose/runtime/SlotWriter;
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1730
    .local v0, "reader":Landroidx/compose/runtime/SlotReader;
    :goto_2
    nop

    .line 1731
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    .line 1732
    .local v1, "parent":I
    if-le v1, p1, :cond_2

    .line 1733
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .end local v1    # "parent":I
    goto :goto_2

    .line 1736
    .end local v0    # "reader":Landroidx/compose/runtime/SlotReader;
    :cond_2
    return-void
.end method

.method public final forceRecomposeScopes$runtime_release()Z
    .locals 1

    .line 1581
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v0, :cond_0

    .line 1582
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 1583
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 1584
    goto :goto_0

    .line 1586
    :cond_0
    const/4 v0, 0x0

    .line 1581
    :goto_0
    return v0
.end method

.method public getApplier()Landroidx/compose/runtime/Applier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object v0
.end method

.method public getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1317
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getAreChildrenComposing$runtime_release()Z
    .locals 1

    .line 1299
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getChangeCount$runtime_release()I
    .locals 1

    .line 2170
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->getSize()I

    move-result v0

    return v0
.end method

.method public getComposition()Landroidx/compose/runtime/ControlledComposition;
    .locals 1

    .line 1258
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    return-object v0
.end method

.method public getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 1

    .line 1957
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionData;

    return-object v0
.end method

.method public getCompoundKeyHash()I
    .locals 1

    .line 1550
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return v0
.end method

.method public getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 1

    .line 1972
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocalMap;

    return-object v0
.end method

.method public getCurrentMarker()I
    .locals 1

    .line 1706
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 3

    .line 2173
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    .local v0, "it":Landroidx/compose/runtime/Stack;
    const/4 v1, 0x0

    .line 2174
    .local v1, "$i$a$-let-ComposerImpl$currentRecomposeScope$1":I
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2173
    .end local v0    # "it":Landroidx/compose/runtime/Stack;
    .end local v1    # "$i$a$-let-ComposerImpl$currentRecomposeScope$1":I
    :goto_0
    nop

    .line 2175
    return-object v2
.end method

.method public getDefaultsInvalid()Z
    .locals 3

    .line 1390
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInvalid()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final getDeferredChanges$runtime_release()Landroidx/compose/runtime/changelist/ChangeList;
    .locals 1

    .line 1310
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    return-object v0
.end method

.method public final getHasInvalidations()Z
    .locals 1

    .line 3328
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getHasPendingChanges$runtime_release()Z
    .locals 1

    .line 1301
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result v0

    return v0
.end method

.method public final getInsertTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 1305
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public getInserting()Z
    .locals 1

    .line 1530
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    return v0
.end method

.method public final getReader$runtime_release()Landroidx/compose/runtime/SlotReader;
    .locals 1

    .line 1303
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-object v0
.end method

.method public getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 1

    .line 3708
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScope;

    return-object v0
.end method

.method public getRecomposeScopeIdentity()Ljava/lang/Object;
    .locals 1

    .line 3709
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSkipping()Z
    .locals 3

    .line 1539
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_1

    .line 1540
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    .line 1541
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRequiresRecompose()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1542
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    nop

    .line 1539
    :goto_1
    return v1
.end method

.method public insertMovableContent(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Landroidx/compose/runtime/MovableContent;
    .param p2, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2949
    nop

    .line 2950
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.runtime.MovableContent<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2951
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    .line 2952
    nop

    .line 2953
    nop

    .line 2949
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/ComposerImpl;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    .line 2955
    return-void
.end method

.method public insertMovableContentReferences(Ljava/util/List;)V
    .locals 2
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

    .line 3021
    const/4 v0, 0x0

    .line 3022
    .local v0, "completed":Z
    nop

    .line 3023
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    const/4 v0, 0x1

    .line 3026
    nop

    .line 3027
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    .line 3032
    nop

    .line 3033
    return-void

    .line 3026
    :catchall_0
    move-exception v1

    .line 3030
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw v1
.end method

.method public final isComposing$runtime_release()Z
    .locals 1

    .line 1295
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return v0
.end method

.method public final isDisposed$runtime_release()Z
    .locals 1

    .line 1297
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    return v0
.end method

.method public joinKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1757
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 3

    .line 1764
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 1766
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1767
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1768
    .local v1, "$i$a$-let-ComposerImpl$nextSlot$1":I
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroidx/compose/runtime/ReusableRememberObserver;

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 1767
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-ComposerImpl$nextSlot$1":I
    :cond_1
    nop

    .line 1769
    :goto_0
    return-object v0
.end method

.method public final nextSlotForCache()Ljava/lang/Object;
    .locals 3

    .line 1774
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 1776
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1777
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1778
    .local v1, "$i$a$-let-ComposerImpl$nextSlotForCache$1":I
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroidx/compose/runtime/ReusableRememberObserver;

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1779
    :cond_1
    instance-of v2, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v2}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v2

    goto :goto_0

    .line 1780
    :cond_2
    move-object v2, v0

    .line 1778
    :goto_0
    nop

    .line 1777
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-ComposerImpl$nextSlotForCache$1":I
    move-object v0, v2

    .line 1774
    :goto_1
    return-object v0
.end method

.method public final parentKey$runtime_release()I
    .locals 2

    .line 2805
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2806
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v0

    goto :goto_0

    .line 2808
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    .line 2805
    :goto_0
    return v0
.end method

.method public final prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V
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

    .line 3239
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v2, 0x0

    .line 4306
    .local v2, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_0

    .line 4310
    nop

    .line 3240
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3241
    nop

    .line 3242
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3244
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3245
    nop

    .line 3246
    return-void

    .line 3244
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    throw v1

    .line 4307
    .restart local v0    # "value$iv":Z
    .restart local v2    # "$i$f$runtimeCheck":I
    :cond_0
    const/4 v1, 0x0

    .line 3239
    .local v1, "$i$a$-runtimeCheck-ComposerImpl$prepareCompose$1":I
    nop

    .line 4307
    .end local v1    # "$i$a$-runtimeCheck-ComposerImpl$prepareCompose$1":I
    const-string/jumbo v1, "Preparing a composition while composing is not supported"

    .line 4308
    .local v1, "message$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final recompose$runtime_release(Landroidx/compose/runtime/collection/IdentityArrayMap;)Z
    .locals 4
    .param p1, "invalidationsRequested"    # Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 3255
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4311
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_2

    .line 4315
    nop

    .line 3260
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    nop

    .line 3261
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3262
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3263
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3268
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3265
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/IdentityArrayMap;Lkotlin/jvm/functions/Function2;)V

    .line 3266
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result v0

    return v0

    .line 4312
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_2
    const/4 v2, 0x0

    .line 3255
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$recompose$1":I
    nop

    .line 4312
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$recompose$1":I
    const-string v2, "Expected applyChanges() to have been called"

    .line 4313
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "effect"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->sideEffect(Lkotlin/jvm/functions/Function0;)V

    .line 1964
    return-void
.end method

.method public recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 2
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScope;

    .line 3712
    instance-of v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    :goto_1
    return-void
.end method

.method public rememberedValue()Ljava/lang/Object;
    .locals 1

    .line 3710
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlotForCache()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setDeferredChanges$runtime_release(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/changelist/ChangeList;

    .line 1310
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    return-void
.end method

.method public final setInsertTable$runtime_release(Landroidx/compose/runtime/SlotTable;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/SlotTable;

    .line 1305
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    return-void
.end method

.method public final setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/SlotReader;

    .line 1303
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-void
.end method

.method public skipCurrentGroup()V
    .locals 6
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2818
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    goto :goto_0

    .line 2821
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2822
    .local v0, "reader":Landroidx/compose/runtime/SlotReader;
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    .line 2823
    .local v1, "key":I
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v2

    .line 2824
    .local v2, "dataKey":Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    .line 2825
    .local v3, "aux":Ljava/lang/Object;
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeEnterGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2826
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->isNode()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    .line 2827
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    .line 2828
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 2829
    invoke-direct {p0, v1, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateCompoundKeyWhenWeExitGroup(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2831
    .end local v0    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v1    # "key":I
    .end local v2    # "dataKey":Ljava/lang/Object;
    .end local v3    # "aux":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method public skipToGroupEnd()V
    .locals 4
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2843
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 4226
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_3

    .line 4230
    nop

    .line 2846
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->scopeSkipped()V

    .line 2847
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2848
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_1

    .line 2850
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    .line 2852
    :goto_1
    return-void

    .line 4227
    .restart local v0    # "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_3
    const/4 v2, 0x0

    .line 2844
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$skipToGroupEnd$1":I
    nop

    .line 4227
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$skipToGroupEnd$1":I
    const-string/jumbo v2, "No nodes can be emitted before calling skipAndEndGroup"

    .line 4228
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public sourceInformation(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceInformation"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 3202
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->recordGroupSourceInformation(Ljava/lang/String;)V

    .line 3205
    :cond_0
    return-void
.end method

.method public sourceInformationMarkerEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 3216
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->recordGrouplessCallSourceInformationEnd()V

    .line 3219
    :cond_0
    return-void
.end method

.method public sourceInformationMarkerStart(ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "sourceInformation"    # Ljava/lang/String;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 3209
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceInformationEnabled:Z

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V

    .line 3212
    :cond_0
    return-void
.end method

.method public startDefaults()V
    .locals 3
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1367
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/16 v1, -0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startMovableGroup(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1422
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startNode()V
    .locals 3

    .line 1622
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getNode-ULZAiWs()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 1624
    return-void
.end method

.method public startProvider(Landroidx/compose/runtime/ProvidedValue;)V
    .locals 10
    .param p1, "value"    # Landroidx/compose/runtime/ProvidedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    .line 2031
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    .line 2032
    .local v0, "parentScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/16 v1, 0xc9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2033
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2034
    .local v2, "$i$a$-let-ComposerImpl$startProvider$oldState$1":I
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 2035
    :cond_0
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.State<kotlin.Any?>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/State;

    .line 2034
    :goto_0
    nop

    .line 2033
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ComposerImpl$startProvider$oldState$1":I
    move-object v1, v3

    .line 2037
    .local v1, "oldState":Landroidx/compose/runtime/State;
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2038
    .local v2, "local":Landroidx/compose/runtime/CompositionLocal;
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/CompositionLocal;->updatedStateOf$runtime_release(Ljava/lang/Object;Landroidx/compose/runtime/State;)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 2039
    .local v3, "state":Landroidx/compose/runtime/State;
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 2040
    .local v4, "change":Z
    if-eqz v4, :cond_1

    .line 2041
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2043
    :cond_1
    const/4 v6, 0x0

    .line 2044
    .local v6, "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/4 v7, 0x0

    .line 2045
    .local v7, "invalid":Z
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2046
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/State;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    .line 2047
    const/4 v7, 0x0

    .line 2048
    iput-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    goto :goto_4

    .line 2050
    :cond_2
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2052
    .local v8, "oldScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCanOverride()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v0, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->contains(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    .line 2054
    :cond_4
    move-object v9, v8

    goto :goto_2

    .line 2053
    :cond_5
    :goto_1
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/State;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    .line 2051
    :goto_2
    move-object v6, v9

    .line 2055
    iget-boolean v9, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v9, :cond_7

    if-eq v8, v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_3
    move v7, v5

    .line 2057
    .end local v8    # "oldScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    :goto_4
    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2058
    invoke-direct {p0, v6}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2060
    :cond_8
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v8, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2061
    iput-boolean v7, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2062
    iput-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2063
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v8

    const/16 v9, 0xca

    invoke-direct {p0, v9, v5, v8, v6}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2064
    return-void
.end method

.method public startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 9
    .param p1, "values"    # [Landroidx/compose/runtime/ProvidedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation

    .line 2085
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    .line 2086
    .local v0, "parentScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/16 v1, 0xc9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2087
    const/4 v1, 0x0

    .line 2088
    .local v1, "providers":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    const/4 v2, 0x0

    .line 2089
    .local v2, "invalid":Z
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2090
    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-static {p1, v0, v5, v3, v5}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap$default([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;ILjava/lang/Object;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    .line 2091
    .local v3, "currentProviders":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    .line 2092
    const/4 v2, 0x0

    .line 2093
    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .end local v3    # "currentProviders":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    goto :goto_2

    .line 2095
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v6, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2096
    .local v3, "oldScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v7

    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2097
    .local v6, "oldValues":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    invoke-static {p1, v0, v6}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    .line 2099
    .local v7, "currentProviders":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v8, :cond_2

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 2111
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    .line 2112
    move-object v1, v3

    .line 2113
    const/4 v2, 0x0

    goto :goto_2

    .line 2100
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    .line 2108
    iget-boolean v8, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v8, :cond_4

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :cond_4
    :goto_1
    move v2, v4

    .line 2117
    .end local v3    # "oldScope":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .end local v6    # "oldValues":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .end local v7    # "currentProviders":Landroidx/compose/runtime/PersistentCompositionLocalMap;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2118
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2120
    :cond_5
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2121
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2122
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2123
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v4

    const/16 v5, 0xca

    invoke-direct {p0, v5, v3, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2124
    return-void
.end method

.method public startReplaceableGroup(I)V
    .locals 2
    .param p1, "key"    # I
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1341
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .locals 2
    .param p1, "key"    # I
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2880
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 2881
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->addRecomposeScope()V

    .line 2882
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/Composer;

    return-object v0
.end method

.method public startReusableGroup(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "dataKey"    # Ljava/lang/Object;

    .line 1666
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    .line 1669
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1670
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1673
    :cond_0
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 1674
    return-void
.end method

.method public startReusableNode()V
    .locals 3

    .line 1627
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getReusableNode-ULZAiWs()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 1629
    return-void
.end method

.method public final startReuseFromRoot()V
    .locals 1

    .line 1693
    const/16 v0, 0x64

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1695
    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p2, "instance"    # Ljava/lang/Object;

    .line 2791
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2792
    .local v0, "anchor":Landroidx/compose/runtime/Anchor;
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v2

    .line 2793
    .local v2, "slotTable":Landroidx/compose/runtime/SlotTable;
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v3

    .line 2794
    .local v3, "location":I
    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 2797
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v1, v3, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    .line 2798
    const/4 v1, 0x1

    return v1

    .line 2800
    :cond_1
    return v1
.end method

.method public final updateCachedValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1949
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_1

    .line 1950
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->remember(Landroidx/compose/runtime/RememberObserver;)V

    .line 1951
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1952
    new-instance v0, Landroidx/compose/runtime/RememberObserverHolder;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;)V

    goto :goto_0

    .line 1953
    :cond_1
    move-object v0, p1

    .line 1949
    :goto_0
    nop

    .line 1954
    .local v0, "toStore":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 1955
    return-void
.end method

.method public updateRememberedValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 3711
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCachedValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1933
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1936
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupSlotIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1937
    .local v0, "groupSlotIndex":I
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, p1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateValue(Ljava/lang/Object;I)V

    .line 1939
    .end local v0    # "groupSlotIndex":I
    :goto_0
    return-void
.end method

.method public useNode()V
    .locals 4

    .line 1650
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1651
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 4217
    .local v1, "$i$f$runtimeCheck":I
    if-eqz v0, :cond_1

    .line 4221
    nop

    .line 1652
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$runtimeCheck":I
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;

    move-result-object v0

    .line 1653
    .local v0, "node":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    .line 1655
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->useNode(Ljava/lang/Object;)V

    .line 1658
    :cond_0
    return-void

    .line 4218
    .local v0, "value$iv":Z
    .restart local v1    # "$i$f$runtimeCheck":I
    :cond_1
    const/4 v2, 0x0

    .line 1651
    .local v2, "$i$a$-runtimeCheck-ComposerImpl$useNode$1":I
    nop

    .line 4218
    .end local v2    # "$i$a$-runtimeCheck-ComposerImpl$useNode$1":I
    const-string/jumbo v2, "useNode() called while inserting"

    .line 4219
    .local v2, "message$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final verifyConsistent$runtime_release()V
    .locals 1

    .line 3525
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed()V

    .line 3526
    return-void
.end method
