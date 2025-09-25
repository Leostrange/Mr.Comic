.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api29Impl;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;,
        Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeViewAccessibilityDelegateCompat.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n*L\n1#1,3790:1\n583#1,5:3798\n1747#2,3:3791\n33#3,4:3794\n38#3:3803\n33#3,6:3806\n33#3,6:3812\n33#3,6:3820\n33#3,6:3830\n69#3,6:3836\n69#3,6:3842\n33#3,6:3852\n33#3,6:3867\n33#3,6:3873\n151#3,3:3879\n33#3,4:3882\n154#3,2:3886\n38#3:3888\n156#3:3889\n151#3,3:3890\n33#3,4:3893\n154#3,2:3897\n38#3:3899\n156#3:3900\n33#3,6:3901\n33#3,6:3907\n33#3,6:3913\n33#3,6:3919\n33#3,6:3925\n33#3,6:3931\n3586#4:3804\n3588#4:3805\n3586#4:3818\n3585#4:3819\n3583#4:3826\n3585#4:3827\n3586#4:3828\n3586#4:3829\n3583#4:3848\n3586#4:3850\n3586#4:3851\n3585#4:3862\n3585#4:3863\n3583#4:3864\n3585#4:3865\n3583#4:3866\n3585#4:3937\n1#5:3849\n37#6,2:3858\n76#7:3860\n76#7:3861\n*S KotlinDebug\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat\n*L\n661#1:3798,5\n459#1:3791,3\n659#1:3794,4\n659#1:3803\n720#1:3806,6\n742#1:3812,6\n830#1:3820,6\n1227#1:3830,6\n1238#1:3836,6\n1245#1:3842,6\n1942#1:3852,6\n2703#1:3867,6\n2707#1:3873,6\n2980#1:3879,3\n2980#1:3882,4\n2980#1:3886,2\n2980#1:3888\n2980#1:3889\n2987#1:3890,3\n2987#1:3893,4\n2987#1:3897,2\n2987#1:3899\n2987#1:3900\n3001#1:3901,6\n3009#1:3907,6\n3084#1:3913,6\n3102#1:3919,6\n3124#1:3925,6\n3137#1:3931,6\n703#1:3804\n707#1:3805\n756#1:3818\n811#1:3819\n908#1:3826\n910#1:3827\n1132#1:3828\n1142#1:3829\n1591#1:3848\n1775#1:3850\n1929#1:3851\n2563#1:3862\n2596#1:3863\n2597#1:3864\n2598#1:3865\n2599#1:3866\n3368#1:3937\n1998#1:3858,2\n2113#1:3860\n2332#1:3861\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u0000 \u00b3\u00022\u00020\u00012\u00020\u0002:\u0016\u00b1\u0002\u00b2\u0002\u00b3\u0002\u00b4\u0002\u00b5\u0002\u00b6\u0002\u00b7\u0002\u00b8\u0002\u00b9\u0002\u00ba\u0002\u00bb\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J.\u0010~\u001a\u00020\u001c2\u0006\u0010\u007f\u001a\u00020\r2\u0007\u0010\u0080\u0001\u001a\u0002062\u0007\u0010\u0081\u0001\u001a\u00020\u00072\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u0001H\u0002J\u0013\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u000201H\u0002J\u0013\u0010\u0087\u0001\u001a\u00020\u001cH\u0080@\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u001d\u0010\u008a\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\r2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u001fH\u0002J\u0012\u0010\u008d\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\rH\u0002J1\u0010\u008e\u0001\u001a\u00020\u000f2\u0007\u0010\u008f\u0001\u001a\u00020\u000f2\u0007\u0010\u0090\u0001\u001a\u00020\r2\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001J@\u0010\u008e\u0001\u001a\u00020\u000f2\r\u0010/\u001a\t\u0012\u0004\u0012\u0002010\u0095\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u000f2\u0007\u0010\u0090\u0001\u001a\u00020\r2\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\t\u0010\u0098\u0001\u001a\u00020\u001cH\u0002J\u0011\u0010\u0099\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\rH\u0002J\t\u0010\u009a\u0001\u001a\u00020\u001cH\u0002J\u001a\u0010\u009b\u0001\u001a\u00020\\2\u0006\u0010\u007f\u001a\u00020\r2\u0007\u0010\u009c\u0001\u001a\u00020\rH\u0003J\u0013\u0010\u009d\u0001\u001a\u0004\u0018\u0001062\u0006\u0010\u007f\u001a\u00020\rH\u0002JC\u0010\u009e\u0001\u001a\u00020\\2\u0006\u0010\u007f\u001a\u00020\r2\t\u0010\u009f\u0001\u001a\u0004\u0018\u00010\r2\t\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\r2\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\r2\t\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0003\u0010\u00a3\u0001J\u0019\u0010\u00a4\u0001\u001a\u00020\u000f2\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0000\u00a2\u0006\u0003\u0008\u00a7\u0001JL\u0010\u00a8\u0001\u001a\u00020\u001c2\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u00012\u001b\u0010\u00ab\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u00aa\u00010\u00ac\u0001j\n\u0012\u0005\u0012\u00030\u00aa\u0001`\u00ad\u00012\u001a\u0010\u00ae\u0001\u001a\u0015\u0012\u0004\u0012\u00020\r\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00aa\u0001080iH\u0002J\u0013\u0010\u00af\u0001\u001a\u00020Y2\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u0001H\u0016J\u0013\u0010\u00b2\u0001\u001a\u00020\r2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0013\u0010\u00b3\u0001\u001a\u00020\r2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0013\u0010\u00b4\u0001\u001a\u00020\u000f2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0015\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0016\u0010\u00b6\u0001\u001a\u0005\u0018\u00010\u00b7\u00012\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0017\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u00072\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u00aa\u0001H\u0002J!\u0010\u00b9\u0001\u001a\u0005\u0018\u00010\u00ba\u00012\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u00aa\u00012\u0007\u0010\u00bb\u0001\u001a\u00020\rH\u0002J\u0016\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u00bd\u00012\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0002J\t\u0010\u00c0\u0001\u001a\u00020\u001cH\u0002J#\u0010\u00c1\u0001\u001a\u00020\r2\u0008\u0010\u00c2\u0001\u001a\u00030\u00c3\u00012\u0008\u0010\u00c4\u0001\u001a\u00030\u00c3\u0001H\u0001\u00a2\u0006\u0003\u0008\u00c5\u0001J\u0012\u0010\u00c6\u0001\u001a\u00020\u001c2\u0007\u0010\u00c7\u0001\u001a\u00020\u000fH\u0002J\u0011\u0010\u00c8\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\rH\u0002J\u0013\u0010\u00c9\u0001\u001a\u00020\u000f2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0013\u0010\u00ca\u0001\u001a\u00020\u000f2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\t\u0010\u00cb\u0001\u001a\u00020\u001cH\u0002J\u0012\u0010\u00cc\u0001\u001a\u00020\u001c2\u0007\u0010\u00cd\u0001\u001a\u00020uH\u0002J\u000f\u0010\u00ce\u0001\u001a\u00020\u001cH\u0000\u00a2\u0006\u0003\u0008\u00cf\u0001J6\u0010\u00d0\u0001\u001a\u00020\u001c2\u0008\u0010\u00d1\u0001\u001a\u00030\u00d2\u00012\u0008\u0010\u00d3\u0001\u001a\u00030\u00d4\u00012\u0011\u0010\u00d5\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00d7\u00010\u00d6\u0001H\u0001\u00a2\u0006\u0003\u0008\u00d8\u0001J\u000f\u0010\u00d9\u0001\u001a\u00020\u001cH\u0000\u00a2\u0006\u0003\u0008\u00da\u0001J\u0018\u0010\u00db\u0001\u001a\u00020\u001c2\u0007\u0010\u00cd\u0001\u001a\u00020uH\u0000\u00a2\u0006\u0003\u0008\u00dc\u0001J\u000f\u0010\u00dd\u0001\u001a\u00020\u001cH\u0000\u00a2\u0006\u0003\u0008\u00de\u0001J\u000f\u0010\u00df\u0001\u001a\u00020\u001cH\u0000\u00a2\u0006\u0003\u0008\u00e0\u0001J\u0013\u0010\u00c7\u0001\u001a\u00020\u001c2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u0001H\u0016J\u0013\u0010\u00e3\u0001\u001a\u00020\u001c2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u0001H\u0016J\"\u0010\u00e4\u0001\u001a\u00020\u001c2\u0011\u0010\u00e5\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00e7\u00010\u00e6\u0001H\u0001\u00a2\u0006\u0003\u0008\u00e8\u0001J&\u0010\u00e9\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\r2\u0007\u0010\u00ea\u0001\u001a\u00020\r2\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u0001H\u0002J%\u0010\u00eb\u0001\u001a\u00020\u001c2\u0006\u0010\u007f\u001a\u00020\r2\u0008\u0010\u0080\u0001\u001a\u00030\u00ec\u00012\u0008\u0010\u00ed\u0001\u001a\u00030\u00aa\u0001H\u0002J!\u0010\u00ee\u0001\u001a\u00020\u000f2\u0007\u0010\u00ef\u0001\u001a\u00020\r2\r\u0010\u00f0\u0001\u001a\u0008\u0012\u0004\u0012\u00020o0;H\u0002J\u0011\u0010\u00f1\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\rH\u0002J\u0012\u0010\u00f2\u0001\u001a\u00020\u001c2\u0007\u0010\u00f3\u0001\u001a\u00020oH\u0002J\'\u0010\u00f4\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u00aa\u00010\u00f5\u0001j\n\u0012\u0005\u0012\u00030\u00aa\u0001`\u00f6\u00012\u0007\u0010\u00f7\u0001\u001a\u00020\u000fH\u0082\u0008J\u0012\u0010\u00f8\u0001\u001a\u00020\r2\u0007\u0010\u00ef\u0001\u001a\u00020\rH\u0002J\u001c\u0010\u00f9\u0001\u001a\u00020\u001c2\u0008\u0010\u00fa\u0001\u001a\u00030\u00aa\u00012\u0007\u0010\u00fb\u0001\u001a\u00020jH\u0002J\u001c\u0010\u00fc\u0001\u001a\u00020\u001c2\u0008\u0010\u00fa\u0001\u001a\u00030\u00aa\u00012\u0007\u0010\u00fb\u0001\u001a\u00020jH\u0002J\u001b\u0010\u00fd\u0001\u001a\u00020\u001c2\u0007\u0010\u00ef\u0001\u001a\u00020\r2\u0007\u0010\u00fe\u0001\u001a\u00020\u0007H\u0002J\u0012\u0010\u00ff\u0001\u001a\u00020\u000f2\u0007\u0010\u00a5\u0001\u001a\u00020\\H\u0002J@\u0010\u0080\u0002\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\r2\u0007\u0010\u009c\u0001\u001a\u00020\r2\u000b\u0008\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\r2\u0011\u0008\u0002\u0010\u0082\u0002\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010;H\u0002\u00a2\u0006\u0003\u0010\u0083\u0002J&\u0010\u0084\u0002\u001a\u00020\u001c2\u0007\u0010\u0085\u0002\u001a\u00020\r2\u0007\u0010\u0081\u0002\u001a\u00020\r2\t\u0010\u0086\u0002\u001a\u0004\u0018\u00010\u0007H\u0002J\u0012\u0010\u0087\u0002\u001a\u00020\u001c2\u0007\u0010\u0085\u0002\u001a\u00020\rH\u0002J\u001e\u0010\u0088\u0002\u001a\u00020\u001c2\u0013\u0010\u0089\u0002\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020100H\u0002J!\u0010\u008a\u0002\u001a\u00020\u001c2\u0007\u0010\u00cd\u0001\u001a\u00020u2\r\u0010\u008b\u0002\u001a\u0008\u0012\u0004\u0012\u00020\r0!H\u0002J\u0012\u0010\u008c\u0002\u001a\u00020\u001c2\u0007\u0010\u00cd\u0001\u001a\u00020uH\u0002J.\u0010\u008d\u0002\u001a\u00020\u000f2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0007\u0010\u008e\u0002\u001a\u00020\r2\u0007\u0010\u008f\u0002\u001a\u00020\r2\u0007\u0010\u0090\u0002\u001a\u00020\u000fH\u0002J\u001d\u0010\u0091\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u00ec\u0001H\u0002J\u001d\u0010\u0092\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u00ec\u0001H\u0002J\u001d\u0010\u0093\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u00ec\u0001H\u0002J\u001d\u0010\u0094\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u00ec\u0001H\u0002J\t\u0010\u0095\u0002\u001a\u00020\u001cH\u0002J\t\u0010\u0096\u0002\u001a\u00020\u001cH\u0002JT\u0010\u0097\u0002\u001a\t\u0012\u0005\u0012\u00030\u00aa\u0001082\u0007\u0010\u00f7\u0001\u001a\u00020\u000f2\u001b\u0010\u0098\u0002\u001a\u0016\u0012\u0005\u0012\u00030\u00aa\u00010\u00ac\u0001j\n\u0012\u0005\u0012\u00030\u00aa\u0001`\u00ad\u00012\u001c\u0008\u0002\u0010\u0099\u0002\u001a\u0015\u0012\u0004\u0012\u00020\r\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00aa\u0001080iH\u0002J)\u0010\u009a\u0002\u001a\t\u0012\u0005\u0012\u00030\u00aa\u0001082\u0007\u0010\u00f7\u0001\u001a\u00020\u000f2\u000e\u0010\u009b\u0002\u001a\t\u0012\u0005\u0012\u00030\u00aa\u000108H\u0002J\"\u0010\u009c\u0002\u001a\u0005\u0018\u00010\u009d\u00022\n\u0010\u009e\u0002\u001a\u0005\u0018\u00010\u00aa\u00012\u0008\u0010\u009f\u0002\u001a\u00030\u00a0\u0002H\u0002J.\u0010\u00a1\u0002\u001a\u00020\u000f2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u00012\u0007\u0010\u00bb\u0001\u001a\u00020\r2\u0007\u0010\u00a2\u0002\u001a\u00020\u000f2\u0007\u0010\u00a3\u0002\u001a\u00020\u000fH\u0002J4\u0010\u00a4\u0002\u001a\u0005\u0018\u0001H\u00a5\u0002\"\t\u0008\u0000\u0010\u00a5\u0002*\u00020\u00192\n\u0010\u00a2\u0001\u001a\u0005\u0018\u0001H\u00a5\u00022\t\u0008\u0001\u0010\u00a6\u0002\u001a\u00020\rH\u0002\u00a2\u0006\u0003\u0010\u00a7\u0002J\u0013\u0010\u00a8\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0013\u0010\u00a9\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0011\u0010\u00aa\u0002\u001a\u00020\u001c2\u0006\u0010\u007f\u001a\u00020\rH\u0002J\t\u0010\u00ab\u0002\u001a\u00020\u001cH\u0002J\u0013\u0010\u00ac\u0002\u001a\u00020\u001c2\u0008\u0010\u0086\u0001\u001a\u00030\u00aa\u0001H\u0002J\u0010\u0010\u00ad\u0002\u001a\u0004\u0018\u00010)*\u00030\u00b1\u0001H\u0002J\u0011\u0010\u00ae\u0002\u001a\u0005\u0018\u00010\u00af\u0002*\u00030\u00bf\u0001H\u0002J\u0010\u0010\u00b0\u0002\u001a\u0004\u0018\u00010\u001f*\u00030\u00aa\u0001H\u0002R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u0007X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\r0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010#\u001a\u00020\u000f8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\u0012\"\u0004\u0008\'\u0010\u0014R&\u0010(\u001a\u0004\u0018\u00010)8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000201008BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u000e\u00104\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u00107\u001a&\u0012\u000c\u0012\n :*\u0004\u0018\u00010909 :*\u0012\u0012\u000c\u0012\n :*\u0004\u0018\u00010909\u0018\u00010;08X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010A\u001a\u00020\r8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008B\u0010%\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR6\u0010G\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0Hj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r`IX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR6\u0010N\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0Hj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r`IX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010K\"\u0004\u0008P\u0010MR\u0014\u0010Q\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010\u0012R\u0014\u0010R\u001a\u00020\u000f8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010\u0012R\u001a\u0010T\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008U\u0010%\u001a\u0004\u0008T\u0010\u0012R\u0014\u0010V\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010\u0012R \u0010W\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\r000\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020\u000f0[8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008]\u0010%\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\r0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010c\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020d0Hj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020d`IX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u0004\u0018\u00010fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010g\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020d0Hj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020d`IX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010h\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020j0iX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020jX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010l\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010mR\u001a\u0010n\u001a\u000e\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020\u001c0[X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010p\u001a\u0008\u0012\u0004\u0012\u00020o08X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010t\u001a\u0008\u0012\u0004\u0012\u00020u0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010v\u001a\u00020wX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010x\u001a\u00020yX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020{X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008|\u0010}\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u00bc\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "view",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "(Landroidx/compose/ui/platform/AndroidComposeView;)V",
        "ExtraDataTestTraversalAfterVal",
        "",
        "getExtraDataTestTraversalAfterVal$ui_release",
        "()Ljava/lang/String;",
        "ExtraDataTestTraversalBeforeVal",
        "getExtraDataTestTraversalBeforeVal$ui_release",
        "accessibilityCursorPosition",
        "",
        "value",
        "",
        "accessibilityForceEnabledForTesting",
        "getAccessibilityForceEnabledForTesting$ui_release",
        "()Z",
        "setAccessibilityForceEnabledForTesting$ui_release",
        "(Z)V",
        "accessibilityManager",
        "Landroid/view/accessibility/AccessibilityManager;",
        "actionIdToLabel",
        "Landroidx/collection/SparseArrayCompat;",
        "",
        "boundsUpdateChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "",
        "bufferedContentCaptureAppearedNodes",
        "Landroidx/collection/ArrayMap;",
        "Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;",
        "bufferedContentCaptureDisappearedNodes",
        "Landroidx/collection/ArraySet;",
        "checkingForSemanticsChanges",
        "contentCaptureForceEnabledForTesting",
        "getContentCaptureForceEnabledForTesting$ui_release$annotations",
        "()V",
        "getContentCaptureForceEnabledForTesting$ui_release",
        "setContentCaptureForceEnabledForTesting$ui_release",
        "contentCaptureSession",
        "Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;",
        "getContentCaptureSession$ui_release$annotations",
        "getContentCaptureSession$ui_release",
        "()Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;",
        "setContentCaptureSession$ui_release",
        "(Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;)V",
        "currentSemanticsNodes",
        "",
        "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
        "getCurrentSemanticsNodes",
        "()Ljava/util/Map;",
        "currentSemanticsNodesInvalidated",
        "currentlyFocusedANI",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "enabledServices",
        "",
        "Landroid/accessibilityservice/AccessibilityServiceInfo;",
        "kotlin.jvm.PlatformType",
        "",
        "enabledStateListener",
        "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
        "focusedVirtualViewId",
        "handler",
        "Landroid/os/Handler;",
        "hoveredVirtualViewId",
        "getHoveredVirtualViewId$ui_release$annotations",
        "getHoveredVirtualViewId$ui_release",
        "()I",
        "setHoveredVirtualViewId$ui_release",
        "(I)V",
        "idToAfterMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getIdToAfterMap$ui_release",
        "()Ljava/util/HashMap;",
        "setIdToAfterMap$ui_release",
        "(Ljava/util/HashMap;)V",
        "idToBeforeMap",
        "getIdToBeforeMap$ui_release",
        "setIdToBeforeMap$ui_release",
        "isEnabled",
        "isEnabledForAccessibility",
        "isEnabledForAccessibility$ui_release",
        "isEnabledForContentCapture",
        "isEnabledForContentCapture$annotations",
        "isTouchExplorationEnabled",
        "labelToActionId",
        "nodeProvider",
        "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;",
        "onSendAccessibilityEvent",
        "Lkotlin/Function1;",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "getOnSendAccessibilityEvent$ui_release$annotations",
        "getOnSendAccessibilityEvent$ui_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSendAccessibilityEvent$ui_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "paneDisplayed",
        "pendingHorizontalScrollEvents",
        "Landroidx/compose/ui/semantics/ScrollAxisRange;",
        "pendingTextTraversedEvent",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;",
        "pendingVerticalScrollEvents",
        "previousSemanticsNodes",
        "",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;",
        "previousSemanticsRoot",
        "previousTraversedNode",
        "Ljava/lang/Integer;",
        "scheduleScrollEventIfNeededLambda",
        "Landroidx/compose/ui/platform/ScrollObservationScope;",
        "scrollObservationScopes",
        "semanticsChangeChecker",
        "Ljava/lang/Runnable;",
        "sendingFocusAffectingEvent",
        "subtreeChangedLayoutNodes",
        "Landroidx/compose/ui/node/LayoutNode;",
        "touchExplorationStateListener",
        "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
        "translateStatus",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;",
        "urlSpanCache",
        "Landroidx/compose/ui/text/platform/URLSpanCache;",
        "getView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "addExtraDataToAccessibilityNodeInfoHelper",
        "virtualViewId",
        "info",
        "extraDataKey",
        "arguments",
        "Landroid/os/Bundle;",
        "boundsInScreen",
        "Landroid/graphics/Rect;",
        "node",
        "boundsUpdatesEventLoop",
        "boundsUpdatesEventLoop$ui_release",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bufferContentCaptureViewAppeared",
        "virtualId",
        "viewStructure",
        "bufferContentCaptureViewDisappeared",
        "canScroll",
        "vertical",
        "direction",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "canScroll-0AR0LA0$ui_release",
        "(ZIJ)Z",
        "",
        "canScroll-moWRBKg",
        "(Ljava/util/Collection;ZIJ)Z",
        "checkForSemanticsChanges",
        "clearAccessibilityFocus",
        "clearTranslatedText",
        "createEvent",
        "eventType",
        "createNodeInfo",
        "createTextSelectionChangedEvent",
        "fromIndex",
        "toIndex",
        "itemCount",
        "text",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;",
        "dispatchHoverEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "dispatchHoverEvent$ui_release",
        "geometryDepthFirstSearch",
        "currNode",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "geometryList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "containerMapToChildren",
        "getAccessibilityNodeProvider",
        "host",
        "Landroid/view/View;",
        "getAccessibilitySelectionEnd",
        "getAccessibilitySelectionStart",
        "getInfoIsCheckable",
        "getInfoStateDescriptionOrNull",
        "getInfoText",
        "Landroid/text/SpannableString;",
        "getIterableTextForAccessibility",
        "getIteratorForGranularity",
        "Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;",
        "granularity",
        "getTextLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "configuration",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "hideTranslatedText",
        "hitTestSemanticsAt",
        "x",
        "",
        "y",
        "hitTestSemanticsAt$ui_release",
        "initContentCapture",
        "onStart",
        "isAccessibilityFocused",
        "isAccessibilitySelectionExtendable",
        "isScreenReaderFocusable",
        "notifyContentCaptureChanges",
        "notifySubtreeAccessibilityStateChangedIfNeeded",
        "layoutNode",
        "onClearTranslation",
        "onClearTranslation$ui_release",
        "onCreateVirtualViewTranslationRequests",
        "virtualIds",
        "",
        "supportedFormats",
        "",
        "requestsCollector",
        "Ljava/util/function/Consumer;",
        "Landroid/view/translation/ViewTranslationRequest;",
        "onCreateVirtualViewTranslationRequests$ui_release",
        "onHideTranslation",
        "onHideTranslation$ui_release",
        "onLayoutChange",
        "onLayoutChange$ui_release",
        "onSemanticsChange",
        "onSemanticsChange$ui_release",
        "onShowTranslation",
        "onShowTranslation$ui_release",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onStop",
        "onVirtualViewTranslationResponses",
        "response",
        "Landroid/util/LongSparseArray;",
        "Landroid/view/translation/ViewTranslationResponse;",
        "onVirtualViewTranslationResponses$ui_release",
        "performActionHelper",
        "action",
        "populateAccessibilityNodeInfoProperties",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "semanticsNode",
        "registerScrollingId",
        "id",
        "oldScrollObservationScopes",
        "requestAccessibilityFocus",
        "scheduleScrollEventIfNeeded",
        "scrollObservationScope",
        "semanticComparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "layoutIsRtl",
        "semanticsNodeIdToAccessibilityVirtualNodeId",
        "sendAccessibilitySemanticsStructureChangeEvents",
        "newNode",
        "oldNode",
        "sendContentCaptureSemanticsStructureChangeEvents",
        "sendContentCaptureTextUpdateEvent",
        "newText",
        "sendEvent",
        "sendEventForVirtualView",
        "contentChangeType",
        "contentDescription",
        "(IILjava/lang/Integer;Ljava/util/List;)Z",
        "sendPaneChangeEvents",
        "semanticsNodeId",
        "title",
        "sendPendingTextTraversedAtGranularityEvent",
        "sendSemanticsPropertyChangeEvents",
        "newSemanticsNodes",
        "sendSubtreeChangeAccessibilityEvents",
        "subtreeChangedSemanticsNodesIds",
        "sendTypeViewScrolledAccessibilityEvent",
        "setAccessibilitySelection",
        "start",
        "end",
        "traversalMode",
        "setContentInvalid",
        "setIsCheckable",
        "setStateDescription",
        "setText",
        "setTraversalValues",
        "showTranslatedText",
        "sortByGeometryGroupings",
        "parentListToSort",
        "containerChildrenMapping",
        "subtreeSortedByGeometryGrouping",
        "listToSort",
        "toScreenCoords",
        "Landroid/graphics/RectF;",
        "textNode",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "traverseAtGranularity",
        "forward",
        "extendSelection",
        "trimToSize",
        "T",
        "size",
        "(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;",
        "updateContentCaptureBuffersOnAppeared",
        "updateContentCaptureBuffersOnDisappeared",
        "updateHoveredVirtualView",
        "updateSemanticsNodesCopyAndPanes",
        "updateTranslationOnAppeared",
        "getContentCaptureSessionCompat",
        "getTextForTextField",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "toViewStructure",
        "Api24Impl",
        "Api29Impl",
        "Companion",
        "ComposeAccessibilityNodeProvider",
        "LtrBoundsComparator",
        "PendingTextTraversedEvent",
        "RtlBoundsComparator",
        "SemanticsNodeCopy",
        "TopBottomBoundsComparator",
        "TranslateStatus",
        "ViewTranslationHelperMethodsS",
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

.field private static final AccessibilityActionsResourceIds:[I

.field public static final AccessibilityCursorPositionUndefined:I = -0x1

.field public static final AccessibilitySliderStepsCount:I = 0x14

.field public static final ClassName:Ljava/lang/String; = "android.view.View"

.field public static final Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

.field public static final ExtraDataIdKey:Ljava/lang/String; = "androidx.compose.ui.semantics.id"

.field public static final ExtraDataTestTagKey:Ljava/lang/String; = "androidx.compose.ui.semantics.testTag"

.field public static final InvalidId:I = -0x80000000

.field public static final LogTag:Ljava/lang/String; = "AccessibilityDelegate"

.field public static final ParcelSafeTextLength:I = 0x186a0

.field public static final SendRecurringAccessibilityEventsIntervalMillis:J = 0x64L

.field public static final TextClassName:Ljava/lang/String; = "android.widget.TextView"

.field public static final TextFieldClassName:Ljava/lang/String; = "android.widget.EditText"

.field public static final TextTraversedEventTimeoutMillis:J = 0x3e8L


# instance fields
.field private final ExtraDataTestTraversalAfterVal:Ljava/lang/String;

.field private final ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

.field private accessibilityCursorPosition:I

.field private accessibilityForceEnabledForTesting:Z

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private actionIdToLabel:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private final boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private checkingForSemanticsChanges:Z

.field private contentCaptureForceEnabledForTesting:Z

.field private contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

.field private currentSemanticsNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation
.end field

.field private currentSemanticsNodesInvalidated:Z

.field private currentlyFocusedANI:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private enabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledStateListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private focusedVirtualViewId:I

.field private final handler:Landroid/os/Handler;

.field private hoveredVirtualViewId:I

.field private idToAfterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private idToBeforeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private labelToActionId:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

.field private onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private paneDisplayed:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingHorizontalScrollEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

.field private final pendingVerticalScrollEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ">;"
        }
    .end annotation
.end field

.field private previousSemanticsNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;",
            ">;"
        }
    .end annotation
.end field

.field private previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

.field private previousTraversedNode:Ljava/lang/Integer;

.field private final scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollObservationScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation
.end field

.field private final semanticsChangeChecker:Ljava/lang/Runnable;

.field private sendingFocusAffectingEvent:Z

.field private final subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private final touchExplorationStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

.field private final urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

.field private final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public static synthetic $r8$lambda$A5854EBxUZ0AAY8o-ALxs0fffYE(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener$lambda$0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WeiSrUW61031BxwrbdpKiNWr8NE(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker$lambda$46(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k_mDmL6XbYVDiYXxthXc0R95qZ4(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sortByGeometryGroupings$lambda$7(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$si7RJd1YNpLYzgPw5VvhP8SsU3U(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener$lambda$1(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->Companion:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->$stable:I

    .line 177
    nop

    .line 178
    const/16 v1, 0x20

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Landroidx/compose/ui/R$id;->accessibility_custom_action_0:I

    aput v3, v1, v2

    .line 179
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_1:I

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 178
    nop

    .line 180
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_2:I

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 178
    nop

    .line 181
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_3:I

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 178
    nop

    .line 182
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_4:I

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 178
    nop

    .line 183
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_5:I

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 178
    nop

    .line 184
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_6:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 178
    nop

    .line 185
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_7:I

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 178
    nop

    .line 186
    sget v2, Landroidx/compose/ui/R$id;->accessibility_custom_action_8:I

    aput v2, v1, v0

    .line 178
    nop

    .line 187
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_9:I

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 178
    nop

    .line 188
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_10:I

    const/16 v2, 0xa

    aput v0, v1, v2

    .line 178
    nop

    .line 189
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_11:I

    const/16 v2, 0xb

    aput v0, v1, v2

    .line 178
    nop

    .line 190
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_12:I

    const/16 v2, 0xc

    aput v0, v1, v2

    .line 178
    nop

    .line 191
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_13:I

    const/16 v2, 0xd

    aput v0, v1, v2

    .line 178
    nop

    .line 192
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_14:I

    const/16 v2, 0xe

    aput v0, v1, v2

    .line 178
    nop

    .line 193
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_15:I

    const/16 v2, 0xf

    aput v0, v1, v2

    .line 178
    nop

    .line 194
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_16:I

    const/16 v2, 0x10

    aput v0, v1, v2

    .line 178
    nop

    .line 195
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_17:I

    const/16 v2, 0x11

    aput v0, v1, v2

    .line 178
    nop

    .line 196
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_18:I

    const/16 v2, 0x12

    aput v0, v1, v2

    .line 178
    nop

    .line 197
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_19:I

    const/16 v2, 0x13

    aput v0, v1, v2

    .line 178
    nop

    .line 198
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_20:I

    const/16 v2, 0x14

    aput v0, v1, v2

    .line 178
    nop

    .line 199
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_21:I

    const/16 v2, 0x15

    aput v0, v1, v2

    .line 178
    nop

    .line 200
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_22:I

    const/16 v2, 0x16

    aput v0, v1, v2

    .line 178
    nop

    .line 201
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_23:I

    const/16 v2, 0x17

    aput v0, v1, v2

    .line 178
    nop

    .line 202
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_24:I

    const/16 v2, 0x18

    aput v0, v1, v2

    .line 178
    nop

    .line 203
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_25:I

    const/16 v2, 0x19

    aput v0, v1, v2

    .line 178
    nop

    .line 204
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_26:I

    const/16 v2, 0x1a

    aput v0, v1, v2

    .line 178
    nop

    .line 205
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_27:I

    const/16 v2, 0x1b

    aput v0, v1, v2

    .line 178
    nop

    .line 206
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_28:I

    const/16 v2, 0x1c

    aput v0, v1, v2

    .line 178
    nop

    .line 207
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_29:I

    const/16 v2, 0x1d

    aput v0, v1, v2

    .line 178
    nop

    .line 208
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_30:I

    const/16 v2, 0x1e

    aput v0, v1, v2

    .line 178
    nop

    .line 209
    sget v0, Landroidx/compose/ui/R$id;->accessibility_custom_action_31:I

    const/16 v2, 0x1f

    aput v0, v1, v2

    .line 178
    nop

    .line 177
    sput-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 5
    .param p1, "view"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 137
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 218
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 223
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    .line 228
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 236
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 244
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 249
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    .line 282
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    .line 293
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    .line 294
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    new-instance v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;

    invoke-direct {v3, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    invoke-direct {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 296
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Ljava/util/HashMap;

    .line 305
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 306
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 307
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 312
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    .line 313
    const/4 v0, 0x6

    invoke-static {v3, v4, v4, v0, v4}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    .line 314
    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 319
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    .line 320
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    .line 338
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    .line 349
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1, v3, v4}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    .line 354
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 356
    const-string v0, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 358
    new-instance v0, Landroidx/compose/ui/text/platform/URLSpanCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/URLSpanCache;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 386
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    .line 388
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 391
    nop

    .line 393
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 413
    nop

    .line 2187
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    .line 2756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 2764
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;

    .line 136
    return-void
.end method

.method public static final synthetic access$addExtraDataToAccessibilityNodeInfoHelper(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$boundsInScreen(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "node"    # Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createNodeInfo(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAccessibilityManager$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public static final synthetic access$getContentCaptureSessionCompat(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "$receiver"    # Landroid/view/View;

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCurrentSemanticsNodes(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCurrentlyFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public static final synthetic access$getEnabledStateListener$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledStateListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    return-object v0
.end method

.method public static final synthetic access$getFocusedVirtualViewId$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    return v0
.end method

.method public static final synthetic access$getHandler$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getPendingHorizontalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getPendingVerticalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/util/HashMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getSemanticsChangeChecker$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getSendingFocusAffectingEvent$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    return v0
.end method

.method public static final synthetic access$getTouchExplorationStateListener$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 134
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->touchExplorationStateListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object v0
.end method

.method public static final synthetic access$notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public static final synthetic access$performActionHelper(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "scrollObservationScope"    # Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    return-void
.end method

.method public static final synthetic access$semanticsNodeIdToAccessibilityVirtualNodeId(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "id"    # I

    .line 134
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setCurrentlyFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "<set-?>"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 134
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method private final addExtraDataToAccessibilityNodeInfoHelper(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 1958
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1959
    .local v0, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    .line 1963
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1964
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .local v2, "it":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1965
    .local v3, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$1":I
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1966
    nop

    .line 1964
    .end local v2    # "it":Ljava/lang/Integer;
    .end local v3    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$1":I
    goto/16 :goto_4

    .line 1967
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1968
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .restart local v2    # "it":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1969
    .local v3, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$2":I
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1970
    nop

    .line 1968
    .end local v2    # "it":Ljava/lang/Integer;
    .end local v3    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$addExtraDataToAccessibilityNodeInfoHelper$2":I
    goto/16 :goto_4

    .line 1971
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1972
    if-eqz p4, :cond_9

    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1974
    nop

    .line 1975
    nop

    .line 1974
    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    const/4 v3, -0x1

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1977
    .local v2, "positionInfoStartIndex":I
    nop

    .line 1978
    nop

    .line 1977
    const-string v4, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {p4, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1980
    .local v3, "positionInfoLength":I
    if-lez v3, :cond_8

    if-ltz v2, :cond_8

    .line 1981
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_3
    const v4, 0x7fffffff

    :goto_0
    if-lt v2, v4, :cond_4

    goto :goto_3

    .line 1986
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    .line 1987
    .local v4, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1988
    .local v5, "boundingRects":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_7

    .line 1990
    add-int v7, v2, v6

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 1991
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    goto :goto_2

    .line 1994
    :cond_6
    add-int v7, v2, v6

    invoke-virtual {v4, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    .line 1995
    .local v7, "bounds":Landroidx/compose/ui/geometry/Rect;
    invoke-direct {p0, v0, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toScreenCoords(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1996
    .local v8, "boundsOnScreen":Landroid/graphics/RectF;
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1988
    .end local v7    # "bounds":Landroidx/compose/ui/geometry/Rect;
    .end local v8    # "boundsOnScreen":Landroid/graphics/RectF;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1998
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    .local v7, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 3858
    .local v8, "$i$f$toTypedArray":I
    move-object v9, v7

    .line 3859
    .local v9, "thisCollection$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    new-array v10, v10, [Landroid/graphics/RectF;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v9    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v7, [Landroid/os/Parcelable;

    .line 1998
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v2    # "positionInfoStartIndex":I
    .end local v3    # "positionInfoLength":I
    .end local v4    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v5    # "boundingRects":Ljava/util/List;
    goto :goto_4

    .line 1983
    .restart local v2    # "positionInfoStartIndex":I
    .restart local v3    # "positionInfoLength":I
    :cond_8
    :goto_3
    const-string v4, "AccessibilityDelegate"

    const-string v5, "Invalid arguments for accessibility character locations"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return-void

    .line 1999
    .end local v2    # "positionInfoStartIndex":I
    .end local v3    # "positionInfoLength":I
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2000
    if-eqz p4, :cond_a

    const-string v2, "androidx.compose.ui.semantics.testTag"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2002
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2003
    .local v2, "testTag":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 2004
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .end local v2    # "testTag":Ljava/lang/String;
    goto :goto_4

    .line 2006
    :cond_a
    const-string v2, "androidx.compose.ui.semantics.id"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2007
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    invoke-virtual {v2, p3, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2009
    :cond_b
    :goto_4
    return-void

    .line 1958
    .end local v0    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v1    # "text":Ljava/lang/String;
    :cond_c
    :goto_5
    return-void
.end method

.method private final boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "node"    # Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 515
    invoke-virtual {p1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 517
    .local v0, "boundsInRoot":Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v1

    .line 516
    nop

    .line 519
    .local v1, "topLeftInScreen":J
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v3

    .line 518
    nop

    .line 521
    .local v3, "bottomRightInScreen":J
    new-instance v5, Landroid/graphics/Rect;

    .line 522
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    .line 523
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    .line 524
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    .line 525
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-int v9, v9

    .line 521
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method private final bufferContentCaptureViewAppeared(ILandroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V
    .locals 2
    .param p1, "virtualId"    # I
    .param p2, "viewStructure"    # Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    .line 2950
    if-nez p2, :cond_0

    .line 2951
    return-void

    .line 2954
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2956
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2958
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2960
    :goto_0
    return-void
.end method

.method private final bufferContentCaptureViewDisappeared(I)V
    .locals 2
    .param p1, "virtualId"    # I

    .line 2962
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2966
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2968
    :goto_0
    return-void
.end method

.method private final canScroll-moWRBKg(Ljava/util/Collection;ZIJ)Z
    .locals 17
    .param p1, "currentSemanticsNodes"    # Ljava/util/Collection;
    .param p2, "vertical"    # Z
    .param p3, "direction"    # I
    .param p4, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;ZIJ)Z"
        }
    .end annotation

    .line 452
    move/from16 v0, p2

    move/from16 v1, p3

    move-wide/from16 v2, p4

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_d

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 454
    :cond_0
    nop

    .line 455
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    goto :goto_0

    .line 456
    :cond_1
    if-nez v0, :cond_c

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    .line 454
    :goto_0
    nop

    .line 459
    .local v6, "scrollRangeProperty":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 3791
    .local v8, "$i$f$any":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_2

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    .line 3792
    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .local v11, "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    const/4 v12, 0x0

    .line 464
    .local v12, "$i$a$-any-AndroidComposeViewAccessibilityDelegateCompat$canScroll$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-static {v13}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result v13

    if-nez v13, :cond_4

    .line 465
    move v15, v5

    goto/16 :goto_3

    .line 468
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    invoke-static {v13, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v13, :cond_5

    .line 469
    move v15, v5

    goto :goto_3

    .line 473
    .local v13, "scrollRange":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v14

    if-eqz v14, :cond_6

    neg-int v14, v1

    goto :goto_1

    :cond_6
    move v14, v1

    .line 474
    .local v14, "actualDirection":I
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 478
    const/4 v14, -0x1

    .line 481
    :cond_7
    if-gez v14, :cond_9

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_8

    move v15, v4

    goto :goto_2

    :cond_8
    move v15, v5

    goto :goto_2

    .line 482
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_a

    move v15, v4

    goto :goto_2

    :cond_a
    move v15, v5

    .line 481
    :goto_2
    nop

    .line 3792
    .end local v11    # "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    .end local v12    # "$i$a$-any-AndroidComposeViewAccessibilityDelegateCompat$canScroll$1":I
    .end local v13    # "scrollRange":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v14    # "actualDirection":I
    :goto_3
    if-eqz v15, :cond_3

    move v5, v4

    goto :goto_4

    .line 3793
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_b
    nop

    .line 459
    .end local v7    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_4
    return v5

    .line 456
    .end local v6    # "scrollRangeProperty":Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    :cond_c
    new-instance v4, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v4}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v4

    .line 452
    :cond_d
    :goto_5
    return v5
.end method

.method private final checkForSemanticsChanges()V
    .locals 2

    .line 2357
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    nop

    .line 2359
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    .line 2360
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 2358
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 2363
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForContentCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2364
    nop

    .line 2365
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    .line 2366
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 2364
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendContentCaptureSemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 2370
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSemanticsPropertyChangeEvents(Ljava/util/Map;)V

    .line 2371
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateSemanticsNodesCopyAndPanes()V

    .line 2372
    return-void
.end method

.method private final clearAccessibilityFocus(I)Z
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 1624
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1627
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    .line 1628
    nop

    .line 1629
    nop

    .line 1630
    const/high16 v3, 0x10000

    .line 1628
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1632
    const/4 v0, 0x1

    return v0

    .line 1634
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final clearTranslatedText()V
    .locals 4

    .line 3069
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 3070
    .local v1, "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    invoke-virtual {v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 3071
    .local v2, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsShowingTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3072
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getClearTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    .line 3075
    .end local v1    # "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    .end local v2    # "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_1
    return-void
.end method

.method private final createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 1580
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1581
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1582
    const-string v1, "android.view.View"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1585
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1586
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 1588
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v1, :cond_0

    .local v1, "it":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    const/4 v2, 0x0

    .line 1591
    .local v2, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createEvent$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    .local v3, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v4, 0x0

    .line 3848
    .local v4, "$i$f$isPassword":I
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v3

    .line 1591
    .end local v3    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v4    # "$i$f$isPassword":I
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 1592
    nop

    .line 1590
    .end local v1    # "it":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    .end local v2    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createEvent$1":I
    nop

    .line 1595
    :cond_0
    return-object v0
.end method

.method private final createNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I

    .line 487
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 488
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    .line 490
    return-object v1

    .line 492
    :cond_1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 493
    .local v0, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-nez v2, :cond_2

    return-object v1

    .line 494
    .local v2, "semanticsNodeWithAdjustedBounds":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    .line 495
    .local v3, "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    .line 496
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_3

    move-object v1, v4

    check-cast v1, Landroid/view/View;

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    goto :goto_1

    .line 498
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 501
    .local v1, "parentId":I
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 502
    const/4 v1, -0x1

    .line 504
    :cond_6
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 506
    .end local v1    # "parentId":I
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 507
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 509
    invoke-direct {p0, p1, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 511
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 498
    :cond_7
    const/4 v1, 0x0

    .line 499
    .local v1, "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$createNodeInfo$parentId$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semanticsNode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has null parent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .end local v1    # "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$createNodeInfo$parentId$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "fromIndex"    # Ljava/lang/Integer;
    .param p3, "toIndex"    # Ljava/lang/Integer;
    .param p4, "itemCount"    # Ljava/lang/Integer;
    .param p5, "text"    # Ljava/lang/CharSequence;

    .line 1605
    nop

    .line 1606
    nop

    .line 1607
    nop

    .line 1605
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1608
    move-object v1, v0

    .local v1, "$this$createTextSelectionChangedEvent_u24lambda_u2441":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x0

    .line 1609
    .local v2, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1":I
    if-eqz p2, :cond_0

    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3849
    .local v3, "it":I
    const/4 v4, 0x0

    .line 1609
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$1":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1610
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$1":I
    :cond_0
    if-eqz p3, :cond_1

    move-object v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3849
    .restart local v3    # "it":I
    const/4 v4, 0x0

    .line 1610
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$2":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1611
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$2":I
    :cond_1
    if-eqz p4, :cond_2

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 3849
    .restart local v3    # "it":I
    const/4 v4, 0x0

    .line 1611
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$3":I
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1612
    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$3":I
    :cond_2
    if-eqz p5, :cond_3

    move-object v3, p5

    .line 3849
    .local v3, "it":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1612
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$4":I
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    .end local v3    # "it":Ljava/lang/CharSequence;
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1$4":I
    :cond_3
    nop

    .line 1608
    .end local v1    # "$this$createTextSelectionChangedEvent_u24lambda_u2441":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$createTextSelectionChangedEvent$1":I
    nop

    .line 1605
    return-object v0
.end method

.method private static final enabledStateListener$lambda$0(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 2
    .param p0, "this$0"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "enabled"    # Z

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 237
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    .line 242
    return-void
.end method

.method private final geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 9
    .param p1, "currNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "geometryList"    # Ljava/util/ArrayList;
    .param p3, "containerMapToChildren"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;>;)V"
        }
    .end annotation

    .line 703
    move-object v0, p1

    .local v0, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v1, 0x0

    .line 3804
    .local v1, "$i$f$isRtl":I
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 703
    .end local v0    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v1    # "$i$f$isRtl":I
    :goto_0
    move v0, v2

    .line 707
    .local v0, "currRTL":Z
    move-object v1, p1

    .local v1, "$this$isTraversalGroup$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v2, 0x0

    .line 3805
    .local v2, "$i$f$isTraversalGroup":I
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt$isTraversalGroup$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt$isTraversalGroup$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getOrElse(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 707
    .end local v1    # "$this$isTraversalGroup$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v2    # "$i$f$isTraversalGroup":I
    nop

    .line 708
    .local v1, "isTraversalGroup":Z
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_2
    if-eqz v1, :cond_3

    .line 714
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 715
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 714
    invoke-direct {p0, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeSortedByGeometryGrouping(ZLjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 720
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 3806
    .local v3, "$i$f$fastForEach":I
    nop

    .line 3807
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    .line 3808
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 3809
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v7, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v8, 0x0

    .line 721
    .local v8, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$geometryDepthFirstSearch$1":I
    invoke-direct {p0, v7, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 722
    nop

    .line 3809
    .end local v7    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v8    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$geometryDepthFirstSearch$1":I
    nop

    .line 3807
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3811
    .end local v4    # "index$iv":I
    :cond_4
    nop

    .line 724
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    :goto_2
    return-void
.end method

.method private final getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3281
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3284
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    return v0

    .line 3286
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return v0
.end method

.method private final getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3271
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3272
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3274
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    return v0

    .line 3276
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    return v0
.end method

.method public static synthetic getContentCaptureForceEnabledForTesting$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getContentCaptureSession$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 1
    .param p1, "$this$getContentCaptureSessionCompat"    # Landroid/view/View;

    .line 2879
    nop

    .line 2880
    nop

    .line 2878
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->setImportantForContentCapture(Landroid/view/View;I)V

    .line 2882
    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->getContentCaptureSession(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentSemanticsNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 342
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getAllUncoveredSemanticsNodesToMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    .line 343
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setTraversalValues()V

    .line 347
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodes:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic getHoveredVirtualViewId$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 7
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "isCheckable":Z
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/state/ToggleableState;

    .line 1396
    .local v1, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/Role;

    .line 1398
    .local v2, "role":Landroidx/compose/ui/semantics/Role;
    if-eqz v1, :cond_0

    move-object v3, v1

    .local v3, "it":Landroidx/compose/ui/state/ToggleableState;
    const/4 v4, 0x0

    .line 1399
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoIsCheckable$1":I
    const/4 v0, 0x1

    .line 1400
    nop

    .line 1398
    .end local v3    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoIsCheckable$1":I
    nop

    .line 1402
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "it":Z
    const/4 v4, 0x0

    .line 1403
    .local v4, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoIsCheckable$2":I
    sget-object v5, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v5

    if-nez v2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v6

    invoke-static {v6, v5}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_2

    .line 1404
    const/4 v0, 0x1

    .line 1406
    :cond_2
    nop

    .line 1402
    .end local v3    # "it":Z
    .end local v4    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoIsCheckable$2":I
    nop

    .line 1408
    :cond_3
    return v0
.end method

.method private final getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 13
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1302
    const/4 v0, 0x0

    .local v0, "stateDescription":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 1303
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/state/ToggleableState;

    .line 1304
    .local v1, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/Role;

    .line 1307
    .local v2, "role":Landroidx/compose/ui/semantics/Role;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v4, v1

    .local v4, "it":Landroidx/compose/ui/state/ToggleableState;
    const/4 v5, 0x0

    .line 1308
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$1":I
    sget-object v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Landroidx/compose/ui/state/ToggleableState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 1326
    :pswitch_0
    if-nez v0, :cond_2

    .line 1327
    nop

    .line 1328
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->indeterminate:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1327
    move-object v0, v6

    goto :goto_2

    .line 1320
    :pswitch_1
    sget-object v6, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v6

    if-nez v2, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v7

    invoke-static {v7, v6}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 1321
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->off:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1312
    :pswitch_2
    sget-object v6, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v6

    if-nez v2, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v7

    invoke-static {v7, v6}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 1313
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->on:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    :cond_2
    :goto_2
    nop

    .line 1307
    .end local v4    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$1":I
    nop

    .line 1335
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .local v4, "it":Z
    const/4 v5, 0x0

    .line 1336
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$2":I
    sget-object v6, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v6

    if-nez v2, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v7

    invoke-static {v7, v6}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v6

    :goto_3
    if-nez v6, :cond_6

    .line 1337
    if-nez v0, :cond_6

    .line 1341
    if-eqz v4, :cond_5

    .line 1342
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->selected:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1344
    :cond_5
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/compose/ui/R$string;->not_selected:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1341
    :goto_4
    move-object v0, v6

    .line 1348
    :cond_6
    nop

    .line 1335
    .end local v4    # "it":Z
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$2":I
    nop

    .line 1352
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1351
    nop

    .line 1353
    .local v4, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    if-eqz v4, :cond_10

    move-object v5, v4

    .local v5, "it":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    const/4 v6, 0x0

    .line 1358
    .local v6, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$3":I
    sget-object v7, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;->getIndeterminate()Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    move-result-object v7

    if-eq v4, v7, :cond_e

    .line 1359
    if-nez v0, :cond_f

    .line 1360
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    .line 1362
    .local v7, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    const/4 v10, 0x1

    if-nez v8, :cond_8

    move v8, v10

    goto :goto_5

    :cond_8
    move v8, v3

    :goto_5
    if-eqz v8, :cond_9

    move v8, v9

    goto :goto_6

    .line 1363
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v8

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    sub-float/2addr v8, v11

    .line 1364
    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    sub-float/2addr v11, v12

    .line 1363
    div-float/2addr v8, v11

    .line 1365
    :goto_6
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 1361
    nop

    .line 1368
    .local v8, "progress":F
    nop

    .line 1369
    cmpg-float v9, v8, v9

    if-nez v9, :cond_a

    move v9, v10

    goto :goto_7

    :cond_a
    move v9, v3

    :goto_7
    if-eqz v9, :cond_b

    goto :goto_8

    .line 1370
    :cond_b
    cmpg-float v9, v8, v11

    if-nez v9, :cond_c

    move v3, v10

    :cond_c
    const/16 v9, 0x64

    if-eqz v3, :cond_d

    move v3, v9

    goto :goto_8

    .line 1371
    :cond_d
    int-to-float v3, v9

    mul-float/2addr v3, v8

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    const/16 v9, 0x63

    invoke-static {v3, v10, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 1368
    :goto_8
    nop

    .line 1373
    .local v3, "percent":I
    nop

    .line 1374
    iget-object v9, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroidx/compose/ui/R$string;->template_percent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1373
    move-object v0, v9

    .end local v3    # "percent":I
    .end local v7    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v8    # "progress":F
    goto :goto_9

    .line 1376
    :cond_e
    if-nez v0, :cond_f

    .line 1377
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Landroidx/compose/ui/R$string;->in_progress:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1379
    :cond_f
    :goto_9
    nop

    .line 1353
    .end local v5    # "it":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v6    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$getInfoStateDescriptionOrNull$3":I
    nop

    .line 1381
    :cond_10
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1424
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v0

    .line 1425
    .local v0, "fontFamilyResolver":Landroidx/compose/ui/text/font/FontFamily$Resolver;
    nop

    .line 1427
    nop

    .line 1426
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 1427
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1426
    nop

    .line 1428
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    .line 1429
    nop

    .line 1430
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 1427
    invoke-static {v1, v3, v0, v4}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->toAccessibilitySpannableString(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    .line 1432
    nop

    .line 1425
    const v3, 0x186a0

    invoke-direct {p0, v1, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    .line 1435
    .local v1, "editableTextToAssign":Landroid/text/SpannableString;
    nop

    .line 1436
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    .line 1437
    if-eqz v4, :cond_1

    .line 1436
    nop

    .line 1438
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    .line 1439
    nop

    .line 1440
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 1437
    invoke-static {v4, v2, v0, v5}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->toAccessibilitySpannableString(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_1

    .line 1436
    :cond_1
    nop

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    .line 1442
    nop

    .line 1435
    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableString;

    .line 1444
    .local v2, "textToAssign":Landroid/text/SpannableString;
    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    return-object v3
.end method

.method private final getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 10
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3358
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3359
    return-object v0

    .line 3363
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3364
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 3365
    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3364
    return-object v0

    .line 3368
    :cond_1
    move-object v1, p1

    .local v1, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v2, 0x0

    .line 3937
    .local v2, "$i$f$isTextField":I
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    .line 3368
    .end local v1    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v2    # "$i$f$isTextField":I
    if-eqz v1, :cond_3

    .line 3369
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 3372
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private final getIteratorForGranularity(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;
    .locals 5
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "granularity"    # I

    .line 3299
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3301
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    .line 3302
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 3303
    return-object v0

    .line 3306
    :cond_3
    const/4 v2, 0x0

    .line 3308
    .local v2, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    sparse-switch p2, :sswitch_data_0

    .line 3345
    return-object v0

    .line 3324
    :sswitch_0
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3325
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .local v0, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3331
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :sswitch_1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3332
    return-object v0

    .line 3334
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    if-nez v3, :cond_5

    return-object v0

    :cond_5
    move-object v0, v3

    .line 3335
    .local v0, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_6

    .line 3336
    sget-object v3, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3337
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    invoke-virtual {v3, v1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->initialize(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;)V

    move-object v0, v2

    goto :goto_2

    .line 3339
    :cond_6
    sget-object v3, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;->getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3341
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    invoke-virtual {v3, v1, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->initialize(Ljava/lang/String;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/semantics/SemanticsNode;)V

    move-object v0, v2

    .end local v0    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    goto :goto_2

    .line 3317
    :sswitch_2
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;

    .line 3318
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3317
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator$Companion;->getInstance(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3320
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .local v0, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_2

    .line 3310
    .end local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    :sswitch_3
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    .line 3311
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3310
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;->getInstance(Ljava/util/Locale;)Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;

    .line 3313
    .end local v2    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    .restart local v0    # "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 3347
    :goto_2
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic getOnSendAccessibilityEvent$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 1
    .param p1, "$this$getTextForTextField"    # Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 3376
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method private final getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 3
    .param p1, "configuration"    # Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2887
    .local v0, "textLayoutResults":Ljava/util/List;
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2888
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2887
    nop

    .line 2888
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2887
    nop

    .line 2889
    .local v1, "getLayoutResult":Z
    if-eqz v1, :cond_0

    .line 2890
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_0

    .line 2892
    :cond_0
    nop

    .line 2889
    :goto_0
    return-object v2

    .line 2888
    .end local v1    # "getLayoutResult":Z
    :cond_1
    return-object v2
.end method

.method private final hideTranslatedText()V
    .locals 5

    .line 3058
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 3059
    .local v1, "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    invoke-virtual {v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 3060
    .local v2, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsShowingTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3061
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getShowTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_0

    .line 3062
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3061
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    .line 3066
    .end local v1    # "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    .end local v2    # "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_1
    return-void
.end method

.method private final initContentCapture(Z)V
    .locals 1
    .param p1, "onStart"    # Z

    .line 3111
    if-eqz p1, :cond_0

    .line 3112
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateContentCaptureBuffersOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    goto :goto_0

    .line 3114
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateContentCaptureBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 3116
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifyContentCaptureChanges()V

    .line 3117
    return-void
.end method

.method private final isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 1460
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isAccessibilitySelectionExtendable(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3291
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3292
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3291
    :goto_0
    return v0
.end method

.method private final isEnabled()Z
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForContentCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isEnabledForContentCapture()Z
    .locals 1

    .line 272
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getDisableContentCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureForceEnabledForTesting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic isEnabledForContentCapture$annotations()V
    .locals 0

    return-void
.end method

.method private final isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 4
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 775
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getInfoContentDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 776
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroid/text/SpannableString;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 777
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 775
    :goto_1
    nop

    .line 779
    .local v0, "isSpeakingNode":Z
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v3

    if-nez v3, :cond_2

    .line 780
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui_release()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 779
    :cond_3
    return v1
.end method

.method private final isTouchExplorationEnabled()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final notifyContentCaptureChanges()V
    .locals 14

    .line 2971
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v0, :cond_0

    return-void

    .line 2972
    .local v0, "session":Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 2973
    return-void

    .line 2976
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 2977
    nop

    .line 2978
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 2979
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 2980
    nop

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3879
    .local v2, "$i$f$fastMap":I
    nop

    .line 3880
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3881
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3882
    .local v5, "$i$f$fastForEach":I
    nop

    .line 3883
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    .line 3884
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3885
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 3886
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    .local v12, "it":Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    const/4 v13, 0x0

    .line 2980
    .local v13, "$i$a$-fastMap-AndroidComposeViewAccessibilityDelegateCompat$notifyContentCaptureChanges$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->toViewStructure()Landroid/view/ViewStructure;

    move-result-object v12

    .line 3886
    .end local v12    # "it":Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .end local v13    # "$i$a$-fastMap-AndroidComposeViewAccessibilityDelegateCompat$notifyContentCaptureChanges$1":I
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3887
    nop

    .line 3885
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 3883
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3888
    .end local v6    # "index$iv$iv":I
    :cond_2
    nop

    .line 3889
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 2977
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->notifyViewsAppeared(Ljava/util/List;)V

    .line 2981
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureAppearedNodes:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->clear()V

    .line 2983
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 2984
    nop

    .line 2985
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    check-cast v1, Ljava/lang/Iterable;

    .line 2986
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 2987
    nop

    .restart local v1    # "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3890
    .restart local v2    # "$i$f$fastMap":I
    nop

    .line 3891
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3892
    .restart local v3    # "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3893
    .restart local v5    # "$i$f$fastForEach":I
    nop

    .line 3894
    const/4 v6, 0x0

    .restart local v6    # "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_4

    .line 3895
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3896
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .restart local v9    # "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 3897
    .restart local v10    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v11, v3

    check-cast v11, Ljava/util/Collection;

    move-object v12, v9

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "it":I
    const/4 v13, 0x0

    .line 2987
    .local v13, "$i$a$-fastMap-AndroidComposeViewAccessibilityDelegateCompat$notifyContentCaptureChanges$2":I
    int-to-long v12, v12

    .end local v12    # "it":I
    .end local v13    # "$i$a$-fastMap-AndroidComposeViewAccessibilityDelegateCompat$notifyContentCaptureChanges$2":I
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3897
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3898
    nop

    .line 3896
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 3894
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3899
    .end local v6    # "index$iv$iv":I
    :cond_4
    nop

    .line 3900
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    check-cast v1, Ljava/util/Collection;

    .line 2988
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 2984
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->notifyViewsDisappeared([J)V

    .line 2989
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferedContentCaptureDisappearedNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->clear()V

    .line 2991
    :cond_5
    return-void
.end method

.method private final notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2270
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    :cond_0
    return-void
.end method

.method private final performActionHelper(IILandroid/os/Bundle;)Z
    .locals 23
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1642
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/4 v10, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-nez v0, :cond_0

    move/from16 v1, p1

    move v3, v10

    goto/16 :goto_2c

    :cond_0
    move-object v11, v0

    .line 1645
    .local v11, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v0, 0x1

    sparse-switch v8, :sswitch_data_0

    .line 1697
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1698
    return v10

    .line 1671
    :sswitch_0
    const/4 v0, -0x1

    if-eqz v9, :cond_1

    .line 1672
    nop

    .line 1671
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1673
    :cond_1
    move v1, v0

    .line 1671
    :goto_0
    move v12, v1

    .line 1674
    .local v12, "start":I
    if-eqz v9, :cond_2

    .line 1675
    nop

    .line 1674
    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1676
    :cond_2
    nop

    .line 1674
    :goto_1
    move v13, v0

    .line 1678
    .local v13, "end":I
    invoke-direct {v7, v11, v12, v13, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    move-result v10

    .line 1681
    .local v10, "success":Z
    if-eqz v10, :cond_3

    .line 1682
    nop

    .line 1683
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 1684
    const/4 v2, 0x0

    .line 1682
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1687
    :cond_3
    return v10

    .line 1691
    .end local v10    # "success":Z
    .end local v12    # "start":I
    .end local v13    # "end":I
    :sswitch_1
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1692
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1691
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1693
    if-eqz v0, :cond_4

    .line 1691
    nop

    .line 1693
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1691
    nop

    :cond_4
    return v10

    .line 1654
    :sswitch_2
    if-eqz v9, :cond_6

    .line 1655
    nop

    .line 1656
    nop

    .line 1655
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1658
    .local v1, "granularity":I
    nop

    .line 1659
    nop

    .line 1658
    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1661
    .local v2, "extendSelection":Z
    nop

    .line 1662
    nop

    .line 1663
    const/16 v3, 0x100

    if-ne v8, v3, :cond_5

    move v10, v0

    .line 1664
    :cond_5
    nop

    .line 1661
    invoke-direct {v7, v11, v1, v10, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->traverseAtGranularity(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z

    move-result v0

    return v0

    .line 1667
    .end local v1    # "granularity":I
    .end local v2    # "extendSelection":Z
    :cond_6
    return v10

    .line 1650
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 1647
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 1702
    :cond_7
    const/4 v1, 0x0

    sparse-switch v8, :sswitch_data_1

    .line 1940
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_4e

    invoke-virtual {v0, v8}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_4a

    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 1856
    :sswitch_5
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1857
    if-eqz v0, :cond_8

    .line 1856
    nop

    .line 1857
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1856
    nop

    :cond_8
    return v10

    .line 1817
    :sswitch_6
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageRight()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1818
    .local v0, "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_9
    return v10

    .line 1812
    .end local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_7
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageLeft()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1813
    .restart local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_a
    return v10

    .line 1807
    .end local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_8
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageDown()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1808
    .restart local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_b
    return v10

    .line 1802
    .end local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_9
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPageUp()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1803
    .restart local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :cond_c
    return v10

    .line 1822
    .end local v0    # "pageAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :sswitch_a
    if-eqz v9, :cond_f

    .line 1823
    nop

    .line 1822
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    .line 1828
    :cond_d
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_e

    .line 1829
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1828
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_2

    .line 1830
    :cond_e
    nop

    .line 1828
    :goto_2
    return v10

    .line 1826
    :cond_f
    :goto_3
    return v10

    .line 1892
    :sswitch_b
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .line 1893
    .local v2, "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    if-eqz v3, :cond_10

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_4

    :cond_10
    move-object v3, v1

    .line 1894
    .local v3, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :goto_4
    if-eqz v2, :cond_13

    .line 1895
    if-eqz v3, :cond_11

    .line 1896
    goto :goto_6

    .line 1898
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .line 1899
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    if-eqz v4, :cond_12

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_5

    :cond_12
    move-object v4, v1

    :goto_5
    move-object v3, v4

    goto :goto_4

    .line 1901
    :cond_13
    :goto_6
    if-nez v2, :cond_14

    .line 1902
    return v10

    .line 1907
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 1908
    .local v1, "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    .line 1909
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    .line 1908
    goto :goto_7

    .line 1909
    :cond_15
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    .line 1908
    :goto_7
    nop

    .line 1910
    .local v4, "parentInRoot":J
    invoke-virtual {v1, v4, v5}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    .line 1911
    .local v6, "viewport":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getPositionInRoot-F1C5BW0()J

    move-result-wide v12

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getSize-YbymL2g()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v12

    .line 1913
    .local v12, "target":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    .line 1914
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1913
    nop

    .line 1915
    .local v13, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    .line 1916
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1915
    nop

    .line 1926
    .local v14, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v15

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v16

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v17

    sub-float v10, v16, v17

    invoke-static {v15, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$scrollDelta(FF)F

    move-result v10

    .line 1928
    .local v10, "dx":F
    if-eqz v13, :cond_16

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v15

    if-ne v15, v0, :cond_16

    move v15, v0

    goto :goto_8

    :cond_16
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_17

    neg-float v10, v10

    .line 1929
    :cond_17
    move-object v15, v11

    .local v15, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v16, 0x0

    .line 3851
    .local v16, "$i$f$isRtl":I
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    .local v17, "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    .line 1929
    .end local v15    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v16    # "$i$f$isRtl":I
    :goto_9
    if-eqz v0, :cond_19

    neg-float v10, v10

    .line 1932
    :cond_19
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v15

    sub-float/2addr v1, v15

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$scrollDelta(FF)F

    move-result v0

    .line 1934
    .local v0, "dy":F
    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_1a

    const/16 v19, 0x1

    goto :goto_a

    :cond_1a
    const/16 v19, 0x0

    :goto_a
    if-eqz v19, :cond_1b

    neg-float v0, v0

    .line 1936
    :cond_1b
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_1c

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v2

    .end local v2    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v16, "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v15, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_b

    .end local v16    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v2    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_1c
    move-object/from16 v16, v2

    .end local v2    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v16    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 1848
    .end local v0    # "dy":F
    .end local v3    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v4    # "parentInRoot":J
    .end local v6    # "viewport":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "dx":F
    .end local v12    # "target":Landroidx/compose/ui/geometry/Rect;
    .end local v13    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v14    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v16    # "scrollableAncestor":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v17    # "viewportInParent":Landroidx/compose/ui/geometry/Rect;
    :sswitch_c
    if-eqz v9, :cond_1d

    .line 1849
    nop

    .line 1848
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    move-object v0, v1

    .line 1851
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1852
    if-eqz v1, :cond_1f

    .line 1851
    nop

    .line 1852
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1f

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    if-nez v0, :cond_1e

    const-string v3, ""

    move-object v13, v3

    goto :goto_c

    :cond_1e
    move-object v13, v0

    :goto_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1851
    goto :goto_d

    .line 1852
    :cond_1f
    const/4 v10, 0x0

    .line 1851
    :goto_d
    return v10

    .line 1885
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1886
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1885
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1887
    if-eqz v0, :cond_20

    .line 1885
    nop

    .line 1887
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1885
    goto :goto_e

    .line 1887
    :cond_20
    const/4 v10, 0x0

    .line 1885
    :goto_e
    return v10

    .line 1879
    :sswitch_e
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1880
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1879
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1881
    if-eqz v0, :cond_21

    .line 1879
    nop

    .line 1881
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1879
    goto :goto_f

    .line 1881
    :cond_21
    const/4 v10, 0x0

    .line 1879
    :goto_f
    return v10

    .line 1873
    :sswitch_f
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1874
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1873
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1875
    if-eqz v0, :cond_22

    .line 1873
    nop

    .line 1875
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1873
    goto :goto_10

    .line 1875
    :cond_22
    const/4 v10, 0x0

    .line 1873
    :goto_10
    return v10

    .line 1867
    :sswitch_10
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1868
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1867
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1869
    if-eqz v0, :cond_23

    .line 1867
    nop

    .line 1869
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1867
    goto :goto_11

    .line 1869
    :cond_23
    const/4 v10, 0x0

    .line 1867
    :goto_11
    return v10

    .line 1861
    :sswitch_11
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 1862
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 1861
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1863
    if-eqz v0, :cond_24

    .line 1861
    nop

    .line 1863
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1861
    goto :goto_12

    .line 1863
    :cond_24
    const/4 v10, 0x0

    .line 1861
    :goto_12
    return v10

    .line 1722
    :sswitch_12
    const/16 v0, 0x1000

    if-ne v8, v0, :cond_25

    const/4 v0, 0x1

    goto :goto_13

    :cond_25
    const/4 v0, 0x0

    .line 1723
    .local v0, "scrollForward":Z
    :goto_13
    const/16 v1, 0x2000

    if-ne v8, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_14

    :cond_26
    const/4 v1, 0x0

    .line 1724
    .local v1, "scrollBackward":Z
    :goto_14
    const v2, 0x1020039

    if-ne v8, v2, :cond_27

    const/4 v2, 0x1

    goto :goto_15

    :cond_27
    const/4 v2, 0x0

    .line 1725
    .local v2, "scrollLeft":Z
    :goto_15
    const v3, 0x102003b

    if-ne v8, v3, :cond_28

    const/4 v3, 0x1

    goto :goto_16

    :cond_28
    const/4 v3, 0x0

    .line 1726
    .local v3, "scrollRight":Z
    :goto_16
    const v4, 0x1020038

    if-ne v8, v4, :cond_29

    const/4 v4, 0x1

    goto :goto_17

    :cond_29
    const/4 v4, 0x0

    .line 1727
    .local v4, "scrollUp":Z
    :goto_17
    const v5, 0x102003a

    if-ne v8, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_18

    :cond_2a
    const/4 v5, 0x0

    .line 1729
    .local v5, "scrollDown":Z
    :goto_18
    if-nez v2, :cond_2c

    if-nez v3, :cond_2c

    if-nez v0, :cond_2c

    if-eqz v1, :cond_2b

    goto :goto_19

    :cond_2b
    const/4 v6, 0x0

    goto :goto_1a

    :cond_2c
    :goto_19
    const/4 v6, 0x1

    .line 1730
    .local v6, "scrollHorizontal":Z
    :goto_1a
    if-nez v4, :cond_2e

    if-nez v5, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_2d

    goto :goto_1b

    :cond_2d
    const/4 v10, 0x0

    goto :goto_1c

    :cond_2e
    :goto_1b
    const/4 v10, 0x1

    .line 1732
    .local v10, "scrollVertical":Z
    :goto_1c
    if-nez v0, :cond_30

    if-eqz v1, :cond_2f

    goto :goto_1d

    :cond_2f
    move/from16 v17, v0

    move/from16 v20, v5

    goto/16 :goto_20

    .line 1734
    :cond_30
    :goto_1d
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1733
    nop

    .line 1736
    .local v12, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1735
    nop

    .line 1737
    .local v13, "setProgressAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    if-eqz v12, :cond_34

    if-eqz v13, :cond_34

    .line 1738
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v14

    .line 1739
    .local v14, "max":F
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move/from16 v17, v0

    .end local v0    # "scrollForward":Z
    .local v17, "scrollForward":Z
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v15, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    .line 1740
    .local v0, "min":F
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getSteps()I

    move-result v15

    if-lez v15, :cond_31

    .line 1741
    sub-float v15, v14, v0

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getSteps()I

    move-result v16

    move/from16 v20, v5

    const/16 v19, 0x1

    .end local v5    # "scrollDown":Z
    .local v20, "scrollDown":Z
    add-int/lit8 v5, v16, 0x1

    int-to-float v5, v5

    div-float/2addr v15, v5

    goto :goto_1e

    .line 1743
    .end local v20    # "scrollDown":Z
    .restart local v5    # "scrollDown":Z
    :cond_31
    move/from16 v20, v5

    .end local v5    # "scrollDown":Z
    .restart local v20    # "scrollDown":Z
    sub-float v5, v14, v0

    const/16 v15, 0x14

    int-to-float v15, v15

    div-float v15, v5, v15

    .line 1740
    :goto_1e
    move v5, v15

    .line 1745
    .local v5, "increment":F
    if-eqz v1, :cond_32

    .line 1746
    neg-float v5, v5

    .line 1748
    :cond_32
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v15

    check-cast v15, Lkotlin/jvm/functions/Function1;

    if-eqz v15, :cond_33

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v16

    add-float v16, v16, v5

    move/from16 v19, v0

    .end local v0    # "min":F
    .local v19, "min":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v15, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1f

    .line 1749
    .end local v19    # "min":F
    .restart local v0    # "min":F
    :cond_33
    move/from16 v19, v0

    .end local v0    # "min":F
    .restart local v19    # "min":F
    const/4 v0, 0x0

    .line 1748
    :goto_1f
    return v0

    .line 1737
    .end local v14    # "max":F
    .end local v17    # "scrollForward":Z
    .end local v19    # "min":F
    .end local v20    # "scrollDown":Z
    .local v0, "scrollForward":Z
    .local v5, "scrollDown":Z
    :cond_34
    move/from16 v17, v0

    move/from16 v20, v5

    .line 1758
    .end local v0    # "scrollForward":Z
    .end local v5    # "scrollDown":Z
    .end local v12    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v13    # "setProgressAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v17    # "scrollForward":Z
    .restart local v20    # "scrollDown":Z
    :goto_20
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutInfo;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v12

    .line 1763
    .local v12, "viewport":J
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-nez v0, :cond_35

    const/4 v0, 0x0

    return v0

    .line 1762
    :cond_35
    nop

    .line 1766
    .local v0, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v5, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1765
    nop

    .line 1767
    .local v5, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v5, :cond_3e

    if-eqz v6, :cond_3e

    .line 1768
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v15

    .line 1769
    .local v15, "amountToScroll":F
    if-nez v2, :cond_36

    if-eqz v1, :cond_37

    .line 1770
    :cond_36
    neg-float v15, v15

    .line 1772
    :cond_37
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v16

    if-eqz v16, :cond_38

    .line 1773
    neg-float v15, v15

    .line 1775
    :cond_38
    move-object/from16 v16, v11

    .local v16, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v21, 0x0

    .line 3850
    .local v21, "$i$f$isRtl":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v14

    move/from16 v22, v6

    .end local v6    # "scrollHorizontal":Z
    .local v22, "scrollHorizontal":Z
    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v14, v6, :cond_39

    const/16 v19, 0x1

    goto :goto_21

    :cond_39
    const/16 v19, 0x0

    .line 1775
    .end local v16    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v21    # "$i$f$isRtl":I
    :goto_21
    if-eqz v19, :cond_3b

    if-nez v2, :cond_3a

    if-eqz v3, :cond_3b

    .line 1776
    :cond_3a
    neg-float v15, v15

    .line 1778
    :cond_3b
    invoke-static {v5, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1779
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    if-eqz v6, :cond_3c

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    move/from16 v21, v2

    const/16 v16, 0x0

    .end local v2    # "scrollLeft":Z
    .local v21, "scrollLeft":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v6, v14, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto :goto_22

    .end local v21    # "scrollLeft":Z
    .restart local v2    # "scrollLeft":Z
    :cond_3c
    move/from16 v21, v2

    .end local v2    # "scrollLeft":Z
    .restart local v21    # "scrollLeft":Z
    const/16 v18, 0x0

    :goto_22
    return v18

    .line 1778
    .end local v21    # "scrollLeft":Z
    .restart local v2    # "scrollLeft":Z
    :cond_3d
    move/from16 v21, v2

    .end local v2    # "scrollLeft":Z
    .restart local v21    # "scrollLeft":Z
    goto :goto_23

    .line 1767
    .end local v15    # "amountToScroll":F
    .end local v21    # "scrollLeft":Z
    .end local v22    # "scrollHorizontal":Z
    .restart local v2    # "scrollLeft":Z
    .restart local v6    # "scrollHorizontal":Z
    :cond_3e
    move/from16 v21, v2

    move/from16 v22, v6

    .line 1784
    .end local v2    # "scrollLeft":Z
    .end local v6    # "scrollHorizontal":Z
    .restart local v21    # "scrollLeft":Z
    .restart local v22    # "scrollHorizontal":Z
    :goto_23
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1783
    nop

    .line 1785
    .local v2, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v2, :cond_44

    if-eqz v10, :cond_44

    .line 1786
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v6

    .line 1787
    .local v6, "amountToScroll":F
    if-nez v4, :cond_3f

    if-eqz v1, :cond_40

    .line 1788
    :cond_3f
    neg-float v6, v6

    .line 1790
    :cond_40
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v14

    if-eqz v14, :cond_41

    .line 1791
    neg-float v6, v6

    .line 1793
    :cond_41
    invoke-static {v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v14

    if-eqz v14, :cond_43

    .line 1794
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v14

    check-cast v14, Lkotlin/jvm/functions/Function2;

    if-eqz v14, :cond_42

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .local v16, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v14, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_24

    .end local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :cond_42
    move-object/from16 v16, v0

    .end local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v0, 0x0

    :goto_24
    return v0

    .line 1793
    .end local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :cond_43
    move-object/from16 v16, v0

    .end local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    goto :goto_25

    .line 1785
    .end local v6    # "amountToScroll":F
    .end local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :cond_44
    move-object/from16 v16, v0

    .line 1798
    .end local v0    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .restart local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    :goto_25
    const/4 v0, 0x0

    return v0

    .line 1711
    .end local v1    # "scrollBackward":Z
    .end local v2    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v3    # "scrollRight":Z
    .end local v4    # "scrollUp":Z
    .end local v5    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v10    # "scrollVertical":Z
    .end local v12    # "viewport":J
    .end local v16    # "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v17    # "scrollForward":Z
    .end local v20    # "scrollDown":Z
    .end local v21    # "scrollLeft":Z
    .end local v22    # "scrollHorizontal":Z
    :sswitch_13
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_26

    .line 1712
    :cond_45
    const/4 v10, 0x0

    .line 1711
    :goto_26
    return v10

    .line 1705
    :sswitch_14
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_46

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 1704
    :cond_46
    move-object v10, v1

    .line 1706
    .local v10, "result":Ljava/lang/Boolean;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1707
    if-eqz v10, :cond_47

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_27

    :cond_47
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 1839
    .end local v10    # "result":Ljava/lang/Boolean;
    :sswitch_15
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1840
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusManager;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1}, Landroidx/compose/ui/focus/FocusManager;->clearFocus$default(Landroidx/compose/ui/focus/FocusManager;ZILjava/lang/Object;)V

    .line 1841
    move v10, v2

    goto :goto_28

    .line 1843
    :cond_48
    const/4 v10, 0x0

    .line 1839
    :goto_28
    return v10

    .line 1834
    :sswitch_16
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getRequestFocus()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1835
    if-eqz v0, :cond_49

    .line 1834
    nop

    .line 1835
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1834
    goto :goto_29

    .line 1835
    :cond_49
    const/4 v10, 0x0

    .line 1834
    :goto_29
    return v10

    .line 1941
    .local v0, "label":Ljava/lang/CharSequence;
    :cond_4a
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4b

    const/4 v2, 0x0

    return v2

    .line 1942
    .local v2, "customActions":Ljava/util/List;
    :cond_4b
    move-object v3, v2

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 3852
    .local v4, "$i$f$fastForEach":I
    nop

    .line 3853
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_2a
    if-ge v5, v6, :cond_4d

    .line 3854
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3855
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v12, "customAction":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/4 v13, 0x0

    .line 1943
    .local v13, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 1944
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getAction()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    .line 1946
    :cond_4c
    nop

    .line 3855
    .end local v12    # "customAction":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v13    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$performActionHelper$1":I
    nop

    .line 3853
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 3857
    .end local v5    # "index$iv":I
    :cond_4d
    nop

    .line 1947
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    return v3

    .line 1940
    .end local v0    # "label":Ljava/lang/CharSequence;
    .end local v2    # "customActions":Ljava/util/List;
    :cond_4e
    const/4 v3, 0x0

    :goto_2b
    return v3

    .line 1642
    .end local v11    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_4f
    move/from16 v1, p1

    move v3, v10

    :goto_2c
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x10 -> :sswitch_14
        0x20 -> :sswitch_13
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_12
        0x8000 -> :sswitch_11
        0x10000 -> :sswitch_10
        0x40000 -> :sswitch_f
        0x80000 -> :sswitch_e
        0x100000 -> :sswitch_d
        0x200000 -> :sswitch_c
        0x1020036 -> :sswitch_b
        0x1020038 -> :sswitch_12
        0x1020039 -> :sswitch_12
        0x102003a -> :sswitch_12
        0x102003b -> :sswitch_12
        0x102003d -> :sswitch_a
        0x1020046 -> :sswitch_9
        0x1020047 -> :sswitch_8
        0x1020048 -> :sswitch_7
        0x1020049 -> :sswitch_6
        0x1020054 -> :sswitch_5
    .end sparse-switch
.end method

.method private static final performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z
    .locals 2
    .param p0, "$this$performActionHelper_u24canScroll"    # Landroidx/compose/ui/semantics/ScrollAxisRange;
    .param p1, "amount"    # F

    .line 1755
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final performActionHelper$scrollDelta(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1923
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final populateAccessibilityNodeInfoProperties(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 31
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "semanticsNode"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 790
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "android.view.View"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/Role;

    .line 792
    .local v4, "role":Landroidx/compose/ui/semantics/Role;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 793
    .local v6, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 794
    :cond_0
    sget-object v7, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v8

    invoke-static {v8, v7}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 795
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/compose/ui/R$string;->tab:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 796
    :cond_1
    sget-object v7, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v8

    invoke-static {v8, v7}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 797
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/compose/ui/R$string;->switch_role:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v7

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "className":Ljava/lang/String;
    sget-object v8, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/Role$Companion;->getImage-o7Vup1c()I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v9

    invoke-static {v9, v8}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui_release()Z

    move-result v8

    if-nez v8, :cond_3

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 806
    :cond_3
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 810
    .end local v7    # "className":Ljava/lang/String;
    :cond_4
    :goto_0
    nop

    .end local v5    # "it":I
    .end local v6    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 792
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 811
    :cond_5
    move-object/from16 v5, p3

    .local v5, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 3819
    .local v6, "$i$f$isTextField":I
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    .line 811
    .end local v5    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v6    # "$i$f$isTextField":I
    if-eqz v5, :cond_6

    .line 812
    const-string v5, "android.widget.EditText"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 814
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 815
    const-string v5, "android.widget.TextView"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 818
    :cond_7
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 828
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v5

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 3820
    .local v6, "$i$f$fastForEach":I
    nop

    .line 3821
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_a

    .line 3822
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 3823
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v10, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v11, 0x0

    .line 831
    .local v11, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$2":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 832
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 833
    .local v12, "holder":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    if-eqz v12, :cond_8

    .line 834
    move-object v13, v12

    check-cast v13, Landroid/view/View;

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    goto :goto_2

    .line 835
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    .line 836
    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v13, Landroid/view/View;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 839
    .end local v12    # "holder":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    :cond_9
    :goto_2
    nop

    .line 3823
    .end local v10    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v11    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$2":I
    nop

    .line 3821
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3825
    .end local v7    # "index$iv":I
    :cond_a
    nop

    .line 842
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v5, :cond_b

    .line 843
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 844
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_3

    .line 846
    :cond_b
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 847
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 850
    :goto_3
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setText(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 851
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setContentInvalid(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 852
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 853
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    .line 856
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    .line 855
    invoke-static {v5, v8}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/state/ToggleableState;

    .line 858
    .local v5, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    if-eqz v5, :cond_e

    move-object v8, v5

    .local v8, "it":Landroidx/compose/ui/state/ToggleableState;
    const/4 v9, 0x0

    .line 859
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$3":I
    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v5, v10, :cond_c

    .line 860
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    goto :goto_4

    .line 861
    :cond_c
    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne v5, v10, :cond_d

    .line 862
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 864
    :cond_d
    :goto_4
    nop

    .end local v8    # "it":Landroidx/compose/ui/state/ToggleableState;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$3":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 858
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 865
    :cond_e
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .local v8, "it":Z
    const/4 v9, 0x0

    .line 866
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$4":I
    sget-object v10, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v10

    if-nez v4, :cond_f

    move v10, v6

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v11

    invoke-static {v11, v10}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v10

    :goto_5
    if-eqz v10, :cond_10

    .line 868
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    goto :goto_6

    .line 870
    :cond_10
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 872
    :goto_6
    nop

    .end local v8    # "it":Z
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$4":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 865
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 874
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 879
    :cond_12
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$getInfoContentDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 883
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 884
    .local v8, "testTag":Ljava/lang/String;
    if-eqz v8, :cond_16

    .line 885
    const/4 v9, 0x0

    .line 886
    .local v9, "testTagsAsResourceId":Z
    move-object/from16 v10, p3

    .line 887
    .local v10, "current":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_7
    if-eqz v10, :cond_15

    .line 888
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    .line 889
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->getTestTagsAsResourceId()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    .line 888
    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 893
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->getTestTagsAsResourceId()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 892
    move v9, v11

    .line 894
    goto :goto_8

    .line 896
    :cond_14
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    goto :goto_7

    .line 900
    :cond_15
    :goto_8
    if-eqz v9, :cond_16

    .line 901
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setViewIdResourceName(Ljava/lang/String;)V

    .line 905
    .end local v9    # "testTagsAsResourceId":Z
    .end local v10    # "current":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHeading()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Unit;

    if-eqz v9, :cond_17

    .local v9, "it":Lkotlin/Unit;
    const/4 v10, 0x0

    .line 906
    .local v10, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$5":I
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 907
    nop

    .end local v9    # "it":Lkotlin/Unit;
    .end local v10    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$5":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 905
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 908
    :cond_17
    move-object/from16 v9, p3

    .local v9, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v10, 0x0

    .line 3826
    .local v10, "$i$f$isPassword":I
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    .line 908
    .end local v9    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v10    # "$i$f$isPassword":I
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPassword(Z)V

    .line 910
    move-object/from16 v9, p3

    .local v9, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v10, 0x0

    .line 3827
    .local v10, "$i$f$isTextField":I
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    .line 910
    .end local v9    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v10    # "$i$f$isTextField":I
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEditable(Z)V

    .line 911
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_19

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 916
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_9

    .line 918
    :cond_18
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 923
    :cond_19
    :goto_9
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/LiveRegionMode;

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/LiveRegionMode;->unbox-impl()I

    move-result v9

    .local v9, "it":I
    const/4 v11, 0x0

    .line 926
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$6":I
    nop

    .line 927
    sget-object v12, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->getPolite-0phEisY()I

    move-result v12

    invoke-static {v9, v12}, Landroidx/compose/ui/semantics/LiveRegionMode;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_1a

    move v10, v7

    goto :goto_a

    .line 928
    :cond_1a
    sget-object v12, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;->getAssertive-0phEisY()I

    move-result v12

    invoke-static {v9, v12}, Landroidx/compose/ui/semantics/LiveRegionMode;->equals-impl0(II)Z

    move-result v12

    if-eqz v12, :cond_1b

    goto :goto_a

    .line 929
    :cond_1b
    move v10, v7

    .line 926
    :goto_a
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLiveRegion(I)V

    .line 931
    nop

    .end local v9    # "it":I
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$6":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 925
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 932
    :cond_1c
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/16 v10, 0x10

    if-eqz v9, :cond_1f

    .local v9, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 936
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$7":I
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 935
    nop

    .line 937
    .local v12, "isSelected":Z
    if-nez v12, :cond_1d

    move v13, v7

    goto :goto_b

    :cond_1d
    move v13, v6

    :goto_b
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 938
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v13

    if-eqz v13, :cond_1e

    if-nez v12, :cond_1e

    .line 939
    nop

    .line 940
    new-instance v13, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 941
    nop

    .line 942
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 940
    invoke-direct {v13, v10, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 939
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 946
    :cond_1e
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$7":I
    .end local v12    # "isSelected":Z
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 933
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 947
    :cond_1f
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_21

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 949
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$8":I
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 950
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 951
    nop

    .line 952
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 953
    nop

    .line 954
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 952
    const/16 v14, 0x20

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 951
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 958
    :cond_20
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$8":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 948
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 961
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getCopyText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_22

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 962
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$9":I
    nop

    .line 963
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 964
    nop

    .line 965
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 963
    const/16 v14, 0x4000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 962
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 968
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$9":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 961
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 969
    :cond_22
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_23

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 971
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$10":I
    nop

    .line 972
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 973
    nop

    .line 974
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 972
    const/high16 v14, 0x200000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 971
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 977
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$10":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 970
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 979
    :cond_23
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_24

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 980
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$11":I
    nop

    .line 981
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 982
    nop

    .line 983
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 981
    const v14, 0x1020054

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 980
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 986
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$11":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 979
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 989
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getCutText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_25

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 990
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$12":I
    nop

    .line 991
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 992
    nop

    .line 993
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 991
    const/high16 v14, 0x10000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 990
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 996
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$12":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 989
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1000
    :cond_25
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsActions;->getPasteText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_27

    .restart local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v11, 0x0

    .line 1001
    .local v11, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$13":I
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_26

    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidClipboardManager;->hasText()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 1002
    nop

    .line 1003
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1004
    nop

    .line 1005
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 1003
    const v14, 0x8000

    invoke-direct {v12, v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1002
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1009
    :cond_26
    nop

    .end local v9    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v11    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$13":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1000
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1012
    :cond_27
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v9

    .line 1013
    .local v9, "text":Ljava/lang/String;
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_29

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_28

    goto :goto_c

    :cond_28
    move v11, v6

    goto :goto_d

    :cond_29
    :goto_c
    move v11, v7

    :goto_d
    if-nez v11, :cond_2d

    .line 1014
    nop

    .line 1015
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v11

    .line 1016
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v13

    .line 1014
    invoke-virtual {v2, v11, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextSelection(II)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1018
    nop

    .line 1022
    .local v11, "setSelectionAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    nop

    .line 1023
    new-instance v13, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1024
    nop

    .line 1025
    if-eqz v11, :cond_2a

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_2a
    const/4 v14, 0x0

    :goto_e
    check-cast v14, Ljava/lang/CharSequence;

    .line 1023
    const/high16 v15, 0x20000

    invoke-direct {v13, v15, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1022
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1028
    const/16 v13, 0x100

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1029
    const/16 v13, 0x200

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1030
    nop

    .line 1031
    nop

    .line 1030
    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    .line 1036
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    .line 1035
    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1038
    .local v13, "contentDescription":Ljava/util/List;
    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    if-eqz v14, :cond_2c

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2b

    goto :goto_f

    :cond_2b
    move v14, v6

    goto :goto_10

    :cond_2c
    :goto_f
    move v14, v7

    :goto_10
    if-eqz v14, :cond_2d

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 1042
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$excludeLineAndPageGranularities(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v14

    if-nez v14, :cond_2d

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v14

    .line 1045
    nop

    .line 1044
    or-int/lit8 v14, v14, 0x4

    .line 1046
    nop

    .line 1044
    or-int/2addr v10, v14

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 1049
    .end local v11    # "setSelectionAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v13    # "contentDescription":Ljava/util/List;
    :cond_2d
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_32

    .line 1050
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 1051
    .local v10, "extraDataKeys":Ljava/util/List;
    const-string v11, "androidx.compose.ui.semantics.id"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_2f

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2e

    goto :goto_11

    :cond_2e
    move v11, v6

    goto :goto_12

    :cond_2f
    :goto_11
    move v11, v7

    :goto_12
    if-nez v11, :cond_30

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 1055
    const-string v11, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_30
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 1058
    const-string v11, "androidx.compose.ui.semantics.testTag"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_31
    sget-object v11, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 1063
    nop

    .line 1061
    invoke-virtual {v11, v13, v10}, Landroidx/compose/ui/platform/AccessibilityNodeInfoVerificationHelperMethods;->setAvailableExtraData(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 1068
    .end local v10    # "extraDataKeys":Ljava/util/List;
    :cond_32
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1067
    nop

    .line 1069
    .local v10, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    if-eqz v10, :cond_36

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 1071
    const-string v11, "android.widget.SeekBar"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1073
    :cond_33
    const-string v11, "android.widget.ProgressBar"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1075
    :goto_13
    sget-object v11, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;->getIndeterminate()Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    move-result-object v11

    if-eq v10, v11, :cond_34

    .line 1076
    nop

    .line 1077
    nop

    .line 1078
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v11

    invoke-interface {v11}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 1079
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .line 1080
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v14

    .line 1076
    invoke-static {v7, v11, v13, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 1083
    :cond_34
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetProgress()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 1084
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 1086
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v11

    .line 1087
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_35

    .line 1089
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1091
    :cond_35
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getCurrent()F

    move-result v11

    .line 1092
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->getRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v13

    cmpl-float v11, v11, v13

    if-lez v11, :cond_36

    .line 1094
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1098
    :cond_36
    nop

    .line 1099
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api24Impl;->addSetProgressAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 1102
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->setCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1103
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1116
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v11

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-static {v11, v13}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1115
    nop

    .line 1117
    .local v11, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsActions;->getScrollBy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v13, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1118
    .local v13, "scrollAction":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v14, 0x0

    if-eqz v11, :cond_3e

    if-eqz v13, :cond_3e

    .line 1122
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->hasCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v15

    if-nez v15, :cond_37

    .line 1123
    const-string v15, "android.widget.HorizontalScrollView"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v2, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_37
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v14

    if-lez v15, :cond_38

    .line 1126
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1128
    :cond_38
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v15

    if-eqz v15, :cond_3e

    .line 1129
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 1130
    sget-object v15, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1131
    nop

    .line 1132
    move-object/from16 v15, p3

    .local v15, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v16, 0x0

    .line 3828
    .local v16, "$i$f$isRtl":I
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v6, v12, :cond_39

    move v6, v7

    goto :goto_14

    :cond_39
    const/4 v6, 0x0

    .line 1132
    .end local v15    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v16    # "$i$f$isRtl":I
    :goto_14
    if-nez v6, :cond_3a

    .line 1133
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_15

    .line 1135
    :cond_3a
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1131
    :goto_15
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1139
    :cond_3b
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1140
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1141
    nop

    .line 1142
    move-object/from16 v6, p3

    .local v6, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v12, 0x0

    .line 3829
    .local v12, "$i$f$isRtl":I
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v15, v7, :cond_3c

    const/4 v6, 0x1

    goto :goto_16

    :cond_3c
    const/4 v6, 0x0

    .line 1142
    .end local v6    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v12    # "$i$f$isRtl":I
    :goto_16
    if-nez v6, :cond_3d

    .line 1143
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_17

    .line 1145
    :cond_3d
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1141
    :goto_17
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1152
    :cond_3e
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1151
    nop

    .line 1153
    .local v6, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-eqz v6, :cond_42

    if-eqz v13, :cond_42

    .line 1157
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->hasCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 1158
    const-string v7, "android.widget.ScrollView"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_3f
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v14

    if-lez v7, :cond_40

    .line 1161
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1163
    :cond_40
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1164
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1165
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1166
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1168
    :cond_41
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1169
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1170
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1175
    :cond_42
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v7, v12, :cond_43

    .line 1176
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api29Impl;->addPageActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 1179
    :cond_43
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v7, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 1181
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsActions;->getExpand()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v7, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v7, :cond_44

    .local v7, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v12, 0x0

    .line 1183
    .local v12, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14":I
    nop

    .line 1184
    new-instance v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1185
    nop

    .line 1186
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    .line 1184
    move-object/from16 v19, v4

    .end local v4    # "role":Landroidx/compose/ui/semantics/Role;
    .local v19, "role":Landroidx/compose/ui/semantics/Role;
    const/high16 v4, 0x40000

    invoke-direct {v14, v4, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1183
    invoke-virtual {v2, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1189
    nop

    .end local v7    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v12    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$14":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1182
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    .end local v19    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v4    # "role":Landroidx/compose/ui/semantics/Role;
    :cond_44
    move-object/from16 v19, v4

    .line 1191
    .end local v4    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v19    # "role":Landroidx/compose/ui/semantics/Role;
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getCollapse()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v4, :cond_45

    .local v4, "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v7, 0x0

    .line 1192
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$15":I
    nop

    .line 1193
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1194
    nop

    .line 1195
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 1193
    const/high16 v15, 0x80000

    invoke-direct {v12, v15, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1192
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1198
    nop

    .end local v4    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$15":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1191
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1200
    :cond_45
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getDismiss()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v4, :cond_46

    .restart local v4    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    const/4 v7, 0x0

    .line 1201
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$16":I
    nop

    .line 1202
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1203
    nop

    .line 1204
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 1202
    const/high16 v15, 0x100000

    invoke-direct {v12, v15, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 1201
    invoke-virtual {v2, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1207
    nop

    .end local v4    # "it":Landroidx/compose/ui/semantics/AccessibilityAction;
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$16":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1200
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1209
    :cond_46
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1211
    .local v4, "customActions":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sget-object v12, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    array-length v12, v12

    if-ge v7, v12, :cond_4c

    .line 1217
    new-instance v7, Landroidx/collection/SparseArrayCompat;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v7, v14, v15, v12}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1218
    .local v7, "currentActionIdToLabel":Landroidx/collection/SparseArrayCompat;
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v12, Ljava/util/Map;

    .line 1223
    .local v12, "currentLabelToActionId":Ljava/util/Map;
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v14, v1}, Landroidx/collection/SparseArrayCompat;->containsKey(I)Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 1224
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v14, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 1225
    .local v14, "oldLabelToActionId":Ljava/util/Map;
    sget-object v15, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    invoke-static {v15}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v15

    .line 1226
    .local v15, "availableIds":Ljava/util/List;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .local v18, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    move-object/from16 v5, v16

    check-cast v5, Ljava/util/List;

    .line 1227
    .local v5, "unassignedActions":Ljava/util/List;
    move-object/from16 v16, v4

    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 3830
    .local v20, "$i$f$fastForEach":I
    nop

    .line 3831
    const/16 v21, 0x0

    move-object/from16 v22, v6

    .end local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v21, "index$iv":I
    .local v22, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v23, v8

    move/from16 v8, v21

    .end local v21    # "index$iv":I
    .local v8, "index$iv":I
    .local v23, "testTag":Ljava/lang/String;
    :goto_19
    if-ge v8, v6, :cond_48

    .line 3832
    move/from16 v21, v6

    move-object/from16 v6, v16

    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 3833
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v24, v6

    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .local v24, "$this$fastForEach$iv":Ljava/util/List;
    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v6, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v25, 0x0

    .line 1228
    .local v25, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$17":I
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v26, v9

    .end local v9    # "text":Ljava/lang/String;
    .local v26, "text":Ljava/lang/String;
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 1229
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1230
    .local v9, "actionId":Ljava/lang/Integer;
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v27, v10

    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v27, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v28, v11

    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v28, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1231
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-interface {v15, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1233
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v9

    .end local v9    # "actionId":Ljava/lang/Integer;
    .local v30, "actionId":Ljava/lang/Integer;
    move-object/from16 v9, v29

    check-cast v9, Ljava/lang/CharSequence;

    invoke-direct {v10, v11, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .end local v30    # "actionId":Ljava/lang/Integer;
    goto :goto_1a

    .line 1235
    .end local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_47
    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :goto_1a
    nop

    .line 3833
    .end local v6    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v25    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$17":I
    nop

    .line 3831
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    move-object/from16 v16, v24

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    goto :goto_19

    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v9, "text":Ljava/lang/String;
    .restart local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    :cond_48
    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v24, v16

    .line 3835
    .end local v8    # "index$iv":I
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v26    # "text":Ljava/lang/String;
    .restart local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    nop

    .line 1238
    .end local v20    # "$i$f$fastForEach":I
    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v6, v5

    .local v6, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 3836
    .local v8, "$i$f$fastForEachIndexed":I
    nop

    .line 3837
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    :goto_1b
    if-ge v9, v10, :cond_49

    .line 3838
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 3839
    .local v11, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v11

    check-cast v16, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v16, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    move/from16 v20, v9

    .local v20, "index":I
    const/16 v21, 0x0

    .line 1239
    .local v21, "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$18":I
    move-object/from16 v24, v5

    move/from16 v5, v20

    .end local v20    # "index":I
    .local v5, "index":I
    .local v24, "unassignedActions":Ljava/util/List;
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    move/from16 v25, v5

    .end local v5    # "index":I
    .local v25, "index":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1240
    .local v5, "actionId":I
    move-object/from16 v20, v6

    .end local v6    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v20, "$this$fastForEachIndexed$iv":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1241
    move/from16 v29, v8

    .end local v8    # "$i$f$fastForEachIndexed":I
    .local v29, "$i$f$fastForEachIndexed":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-direct {v6, v5, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1243
    nop

    .line 3839
    .end local v5    # "actionId":I
    .end local v16    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v21    # "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$18":I
    .end local v25    # "index":I
    nop

    .line 3837
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v24

    move/from16 v8, v29

    goto :goto_1b

    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v24    # "unassignedActions":Ljava/util/List;
    .end local v29    # "$i$f$fastForEachIndexed":I
    .local v5, "unassignedActions":Ljava/util/List;
    .restart local v6    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v8    # "$i$f$fastForEachIndexed":I
    :cond_49
    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move/from16 v29, v8

    .line 3841
    .end local v5    # "unassignedActions":Ljava/util/List;
    .end local v6    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEachIndexed":I
    .end local v9    # "index$iv":I
    .restart local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v24    # "unassignedActions":Ljava/util/List;
    .restart local v29    # "$i$f$fastForEachIndexed":I
    move-object/from16 v20, v4

    .end local v14    # "oldLabelToActionId":Ljava/util/Map;
    .end local v15    # "availableIds":Ljava/util/List;
    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v24    # "unassignedActions":Ljava/util/List;
    .end local v29    # "$i$f$fastForEachIndexed":I
    goto :goto_1d

    .line 1245
    .end local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v23    # "testTag":Ljava/lang/String;
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v5, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .local v6, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v8, "testTag":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    .restart local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v11, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4a
    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v8    # "testTag":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v23    # "testTag":Ljava/lang/String;
    .restart local v26    # "text":Ljava/lang/String;
    .restart local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    move-object v5, v4

    .local v5, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 3842
    .local v6, "$i$f$fastForEachIndexed":I
    nop

    .line 3843
    const/4 v8, 0x0

    .local v8, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_1c
    if-ge v8, v9, :cond_4b

    .line 3844
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3845
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v11, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    move v14, v8

    .local v14, "index":I
    const/4 v15, 0x0

    .line 1246
    .local v15, "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$19":I
    sget-object v16, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    move-object/from16 v20, v4

    .end local v4    # "customActions":Ljava/util/List;
    .local v20, "customActions":Ljava/util/List;
    aget v4, v16, v14

    .line 1247
    .local v4, "actionId":I
    move-object/from16 v16, v5

    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v16, "$this$fastForEachIndexed$iv":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1248
    move/from16 v21, v6

    .end local v6    # "$i$f$fastForEachIndexed":I
    .local v21, "$i$f$fastForEachIndexed":I
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v5, v4, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1250
    nop

    .line 3845
    .end local v4    # "actionId":I
    .end local v11    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastForEachIndexed-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$19":I
    nop

    .line 3843
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_1c

    .end local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v20    # "customActions":Ljava/util/List;
    .end local v21    # "$i$f$fastForEachIndexed":I
    .local v4, "customActions":Ljava/util/List;
    .restart local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEachIndexed":I
    :cond_4b
    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move/from16 v21, v6

    .line 3847
    .end local v4    # "customActions":Ljava/util/List;
    .end local v5    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    .end local v8    # "index$iv":I
    .restart local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v20    # "customActions":Ljava/util/List;
    .restart local v21    # "$i$f$fastForEachIndexed":I
    nop

    .line 1252
    .end local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastForEachIndexed":I
    :goto_1d
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v1, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1253
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v1, v12}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_1e

    .line 1212
    .end local v7    # "currentActionIdToLabel":Landroidx/collection/SparseArrayCompat;
    .end local v12    # "currentLabelToActionId":Ljava/util/Map;
    .end local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v20    # "customActions":Ljava/util/List;
    .end local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v23    # "testTag":Ljava/lang/String;
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v4    # "customActions":Ljava/util/List;
    .local v5, "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .local v6, "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v8, "testTag":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    .local v10, "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .local v11, "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4c
    move-object/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v22, v6

    .end local v4    # "customActions":Ljava/util/List;
    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v20    # "customActions":Ljava/util/List;
    .restart local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t have more than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1214
    sget-object v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:[I

    array-length v6, v6

    .line 1213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1214
    nop

    .line 1213
    const-string v6, " custom actions for one widget"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1212
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1209
    .end local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v20    # "customActions":Ljava/util/List;
    .end local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4d
    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v8    # "testTag":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v23    # "testTag":Ljava/lang/String;
    .restart local v26    # "text":Ljava/lang/String;
    .restart local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    goto :goto_1e

    .line 1181
    .end local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v19    # "role":Landroidx/compose/ui/semantics/Role;
    .end local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v23    # "testTag":Ljava/lang/String;
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .local v4, "role":Landroidx/compose/ui/semantics/Role;
    .restart local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v8    # "testTag":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    .restart local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :cond_4e
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .line 1257
    .end local v4    # "role":Landroidx/compose/ui/semantics/Role;
    .end local v5    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .end local v6    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v8    # "testTag":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .end local v11    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v18    # "toggleState":Landroidx/compose/ui/state/ToggleableState;
    .restart local v19    # "role":Landroidx/compose/ui/semantics/Role;
    .restart local v22    # "yScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .restart local v23    # "testTag":Ljava/lang/String;
    .restart local v26    # "text":Ljava/lang/String;
    .restart local v27    # "rangeInfo":Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .restart local v28    # "xScrollState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    :goto_1e
    invoke-direct {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 1260
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1261
    .local v4, "beforeId":Ljava/lang/Integer;
    if-eqz v4, :cond_50

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 1262
    .local v6, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$20":I
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v7

    .line 1263
    .local v7, "beforeView":Landroid/view/View;
    if-eqz v7, :cond_4f

    .line 1266
    invoke-virtual {v2, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_1f

    .line 1269
    :cond_4f
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;I)V

    .line 1271
    :goto_1f
    nop

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    iget-object v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 1271
    const/4 v10, 0x0

    invoke-direct {v0, v1, v8, v9, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1274
    nop

    .end local v5    # "it":I
    .end local v6    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$20":I
    .end local v7    # "beforeView":Landroid/view/View;
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1261
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1276
    :cond_50
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1277
    .local v5, "afterId":Ljava/lang/Integer;
    if-eqz v5, :cond_52

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "it":I
    const/4 v7, 0x0

    .line 1278
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$21":I
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v8

    .line 1282
    .local v8, "afterView":Landroid/view/View;
    if-eqz v8, :cond_51

    .line 1283
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 1284
    nop

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    iget-object v10, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 1284
    const/4 v11, 0x0

    invoke-direct {v0, v1, v9, v10, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1288
    :cond_51
    nop

    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$21":I
    .end local v8    # "afterView":Landroid/view/View;
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1277
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1289
    :cond_52
    return-void
.end method

.method private static final populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2
    .param p0, "$this$populateAccessibilityNodeInfoProperties_u24canScrollBackward"    # Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1112
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z
    .locals 2
    .param p0, "$this$populateAccessibilityNodeInfoProperties_u24canScrollForward"    # Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1107
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final registerScrollingId(ILjava/util/List;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "oldScrollObservationScopes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;)Z"
        }
    .end annotation

    .line 2772
    const/4 v0, 0x0

    .line 2773
    .local v0, "newlyObservingScroll":Z
    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    move-result-object v1

    .line 2774
    .local v1, "oldScope":Landroidx/compose/ui/platform/ScrollObservationScope;
    if-eqz v1, :cond_0

    .line 2775
    move-object v9, v1

    goto :goto_0

    .line 2777
    :cond_0
    const/4 v0, 0x1

    .line 2778
    new-instance v9, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 2779
    nop

    .line 2780
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    .line 2781
    const/4 v5, 0x0

    .line 2782
    const/4 v6, 0x0

    .line 2783
    const/4 v7, 0x0

    .line 2784
    const/4 v8, 0x0

    .line 2778
    move-object v2, v9

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/platform/ScrollObservationScope;-><init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2774
    :goto_0
    move-object v2, v9

    .line 2787
    .local v2, "newScope":Landroidx/compose/ui/platform/ScrollObservationScope;
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2788
    return v0
.end method

.method private final requestAccessibilityFocus(I)Z
    .locals 9
    .param p1, "virtualViewId"    # I

    .line 1476
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1477
    return v1

    .line 1480
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilityFocused(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1482
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1483
    nop

    .line 1484
    iget v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1485
    const/high16 v4, 0x10000

    .line 1483
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1490
    :cond_1
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1493
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    .line 1494
    nop

    .line 1495
    nop

    .line 1496
    const v3, 0x8000

    .line 1494
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 1498
    const/4 v0, 0x1

    return v0

    .line 1500
    :cond_2
    return v1
.end method

.method private final scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V
    .locals 4
    .param p1, "scrollObservationScope"    # Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 2792
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ScrollObservationScope;->isValidOwnerScope()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2793
    return-void

    .line 2795
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    .line 2796
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/node/OwnerScope;

    .line 2797
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeededLambda:Lkotlin/jvm/functions/Function1;

    .line 2795
    new-instance v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;

    invoke-direct {v3, p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;-><init>(Landroidx/compose/ui/platform/ScrollObservationScope;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 2859
    return-void
.end method

.method private final semanticComparator(Z)Ljava/util/Comparator;
    .locals 4
    .param p1, "layoutIsRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    .local v0, "$i$f$semanticComparator":I
    if-eqz p1, :cond_0

    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;

    :goto_0
    check-cast v1, Ljava/util/Comparator;

    .line 585
    sget-object v2, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode$Companion;->getZComparator$ui_release()Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    check-cast v3, Ljava/util/Comparator;

    .line 587
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;

    invoke-direct {v1, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;-><init>(Ljava/util/Comparator;)V

    check-cast v1, Ljava/util/Comparator;

    .line 583
    return-object v1
.end method

.method private static final semanticsChangeChecker$lambda$46(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2188
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v0, Landroidx/compose/ui/node/Owner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 2189
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V

    .line 2190
    iput-boolean v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2191
    return-void
.end method

.method private final semanticsNodeIdToAccessibilityVirtualNodeId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 3147
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3148
    const/4 v0, -0x1

    return v0

    .line 3150
    :cond_0
    return p1
.end method

.method private final sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V
    .locals 10
    .param p1, "newNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "oldNode"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 3081
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 3084
    .local v0, "newChildren":Ljava/util/Set;
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3913
    .local v2, "$i$f$fastForEach":I
    nop

    .line 3914
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 3915
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3916
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v6, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v7, 0x0

    .line 3085
    .local v7, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$1":I
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3086
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getChildren()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3087
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 3088
    return-void

    .line 3090
    :cond_0
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3092
    :cond_1
    nop

    .line 3916
    .end local v6    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v7    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$1":I
    nop

    .line 3914
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3918
    .end local v3    # "index$iv":I
    :cond_2
    nop

    .line 3095
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getChildren()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3096
    .local v2, "child":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3097
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 3098
    return-void

    .line 3102
    .end local v2    # "child":I
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 3919
    .local v2, "$i$f$fastForEach":I
    nop

    .line 3920
    const/4 v3, 0x0

    .restart local v3    # "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_6

    .line 3921
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3922
    .restart local v5    # "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .restart local v6    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v7, 0x0

    .line 3103
    .local v7, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$2":I
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3104
    nop

    .line 3105
    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 3104
    invoke-direct {p0, v6, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendAccessibilitySemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 3107
    :cond_5
    nop

    .line 3922
    .end local v6    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v7    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendAccessibilitySemanticsStructureChangeEvents$2":I
    nop

    .line 3920
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3924
    .end local v3    # "index$iv":I
    :cond_6
    nop

    .line 3108
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    return-void
.end method

.method private final sendContentCaptureSemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V
    .locals 9
    .param p1, "newNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "oldNode"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 3124
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3925
    .local v1, "$i$f$fastForEach":I
    nop

    .line 3926
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 3927
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3928
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v5, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 3125
    .local v6, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureSemanticsStructureChangeEvents$1":I
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3126
    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getChildren()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3127
    invoke-direct {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateContentCaptureBuffersOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 3129
    :cond_0
    nop

    .line 3928
    .end local v5    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v6    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureSemanticsStructureChangeEvents$1":I
    nop

    .line 3926
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3930
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 3131
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3132
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferContentCaptureViewDisappeared(I)V

    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 3137
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3931
    .local v1, "$i$f$fastForEach":I
    nop

    .line 3932
    const/4 v2, 0x0

    .restart local v2    # "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

    .line 3933
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3934
    .restart local v4    # "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .restart local v5    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 3138
    .local v6, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureSemanticsStructureChangeEvents$2":I
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3139
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3140
    nop

    .line 3141
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 3140
    invoke-direct {p0, v5, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendContentCaptureSemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)V

    .line 3143
    :cond_4
    nop

    .line 3934
    .end local v5    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v6    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureSemanticsStructureChangeEvents$2":I
    nop

    .line 3932
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3936
    .end local v2    # "index$iv":I
    :cond_5
    nop

    .line 3144
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method private final sendContentCaptureTextUpdateEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "newText"    # Ljava/lang/String;

    .line 2745
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v0, :cond_0

    return-void

    .line 2746
    .local v0, "session":Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 2747
    return-void

    .line 2750
    :cond_1
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 2751
    .local v1, "autofillId":Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_2

    .line 2752
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 2753
    return-void

    .line 3849
    :cond_2
    const/4 v2, 0x0

    .line 2751
    .local v2, "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureTextUpdateEvent$1":I
    nop

    .end local v2    # "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendContentCaptureTextUpdateEvent$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid content capture ID"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1551
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1552
    return v1

    .line 1555
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    .line 1556
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_2

    .line 1558
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 1560
    :cond_2
    nop

    .line 1561
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 1561
    return v0

    .line 1563
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    throw v0
.end method

.method private final sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 11
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "contentChangeType"    # Ljava/lang/Integer;
    .param p4, "contentDescription"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1528
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1532
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1533
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_1

    .line 1534
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1536
    :cond_1
    if-eqz p4, :cond_2

    .line 1537
    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v2, p4

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1540
    :cond_2
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 1529
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 1

    .line 1522
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 1525
    move-object p3, v0

    .line 1522
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1526
    move-object p4, v0

    .line 1522
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final sendPaneChangeEvents(IILjava/lang/String;)V
    .locals 2
    .param p1, "semanticsNodeId"    # I
    .param p2, "contentChangeType"    # I
    .param p3, "title"    # Ljava/lang/String;

    .line 2866
    nop

    .line 2867
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    .line 2868
    nop

    .line 2866
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2870
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2871
    if-eqz p3, :cond_0

    .line 2872
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2874
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2875
    return-void
.end method

.method private final sendPendingTextTraversedAtGranularityEvent(I)V
    .locals 6
    .param p1, "semanticsNodeId"    # I

    .line 3206
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    if-eqz v0, :cond_2

    .local v0, "it":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    const/4 v1, 0x0

    .line 3208
    .local v1, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendPendingTextTraversedAtGranularityEvent$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 3209
    return-void

    .line 3211
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getTraverseTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3212
    nop

    .line 3213
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    .line 3214
    nop

    .line 3212
    const/high16 v3, 0x20000

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 3216
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getFromIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3217
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getToIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3218
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 3219
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getGranularity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 3220
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->getNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3221
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3223
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    nop

    .line 3206
    .end local v0    # "it":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
    .end local v1    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendPendingTextTraversedAtGranularityEvent$1":I
    nop

    .line 3224
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 3225
    return-void
.end method

.method private final sendSemanticsPropertyChangeEvents(Ljava/util/Map;)V
    .locals 30
    .param p1, "newSemanticsNodes"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;)V"
        }
    .end annotation

    .line 2410
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 2411
    .local v8, "oldScrollObservationScopes":Ljava/util/ArrayList;
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2412
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 2415
    .local v10, "id":I
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 2416
    .local v11, "oldNode":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3a

    move-object v14, v0

    .line 2422
    .local v14, "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    if-nez v11, :cond_4

    .line 2423
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2424
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2426
    nop

    .line 2425
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2426
    if-eqz v2, :cond_2

    .line 2425
    nop

    .line 2426
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 2425
    :goto_3
    nop

    .line 2429
    .local v2, "newText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendContentCaptureTextUpdateEvent(ILjava/lang/String;)V

    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "newText":Landroidx/compose/ui/text/AnnotatedString;
    goto :goto_2

    .line 2431
    :cond_3
    goto/16 :goto_0

    .line 2434
    :cond_4
    const/4 v0, 0x0

    .line 2436
    .local v0, "propertyChanged":Z
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "propertyChanged":Z
    .local v16, "propertyChanged":Z
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Map$Entry;

    .line 2437
    .local v18, "entry":Ljava/util/Map$Entry;
    const/4 v0, 0x0

    .line 2438
    .local v0, "newlyObservingScroll":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2439
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v19, v0

    goto :goto_6

    .line 2441
    :cond_6
    :goto_5
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    invoke-direct {v7, v10, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->registerScrollingId(ILjava/util/List;)Z

    move-result v0

    move/from16 v19, v0

    .line 2443
    .end local v0    # "newlyObservingScroll":Z
    .local v19, "newlyObservingScroll":Z
    :goto_6
    if-nez v19, :cond_7

    .line 2444
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2446
    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2449
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2450
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2452
    nop

    .line 2451
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2452
    if-eqz v0, :cond_8

    .line 2451
    nop

    .line 2452
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    .line 2451
    :goto_7
    nop

    .line 2454
    .local v0, "oldText":Landroidx/compose/ui/text/AnnotatedString;
    nop

    .line 2453
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2454
    if-eqz v1, :cond_9

    .line 2453
    nop

    .line 2454
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    .line 2453
    :goto_8
    nop

    .line 2455
    .local v1, "newText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2459
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendContentCaptureTextUpdateEvent(ILjava/lang/String;)V

    move-object/from16 v21, v8

    .end local v0    # "oldText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v1    # "newText":Landroidx/compose/ui/text/AnnotatedString;
    goto/16 :goto_1b

    .line 2455
    .restart local v0    # "oldText":Landroidx/compose/ui/text/AnnotatedString;
    .restart local v1    # "newText":Landroidx/compose/ui/text/AnnotatedString;
    :cond_a
    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2462
    .end local v0    # "oldText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v1    # "newText":Landroidx/compose/ui/text/AnnotatedString;
    :cond_b
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_d

    .line 2463
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 2466
    .local v0, "paneTitle":Ljava/lang/String;
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->hasPaneTitle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2467
    nop

    .line 2468
    nop

    .line 2469
    nop

    .line 2470
    nop

    .line 2467
    invoke-direct {v7, v10, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    move-object/from16 v21, v8

    .end local v0    # "paneTitle":Ljava/lang/String;
    goto/16 :goto_1b

    .line 2466
    .restart local v0    # "paneTitle":Ljava/lang/String;
    :cond_c
    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2475
    .end local v0    # "paneTitle":Ljava/lang/String;
    :cond_d
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_9

    :cond_e
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_9
    const/16 v4, 0x40

    if-eqz v1, :cond_f

    .line 2476
    nop

    .line 2477
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2478
    const/16 v2, 0x800

    .line 2479
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2476
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2484
    nop

    .line 2485
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2486
    nop

    .line 2487
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2484
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2491
    :cond_f
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2492
    nop

    .line 2493
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2494
    const/16 v2, 0x800

    .line 2495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2492
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2500
    nop

    .line 2501
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2502
    nop

    .line 2503
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2500
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2507
    :cond_10
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_18

    .line 2512
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v1

    if-nez v0, :cond_11

    move/from16 v0, v17

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v0

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_17

    .line 2513
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2514
    nop

    .line 2515
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    .line 2516
    nop

    .line 2514
    invoke-direct {v7, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2519
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->copyWithMergingEnabled$ui_release()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    .line 2522
    .local v1, "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    nop

    .line 2520
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 2521
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    .line 2520
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/util/List;

    .line 2522
    const-string v2, ","

    if-eqz v20, :cond_12

    .line 2520
    nop

    .line 2522
    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3e

    const/16 v28, 0x0

    invoke-static/range {v20 .. v28}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 2520
    :goto_b
    nop

    .line 2524
    .local v3, "contentDescription":Ljava/lang/String;
    nop

    .line 2523
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/util/List;

    .line 2524
    if-eqz v20, :cond_13

    .line 2523
    nop

    .line 2524
    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3e

    const/16 v28, 0x0

    invoke-static/range {v20 .. v28}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    .line 2523
    :goto_c
    nop

    .line 2525
    .local v2, "text":Ljava/lang/String;
    if-eqz v3, :cond_14

    move-object v4, v3

    .line 3849
    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2525
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2526
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$1":I
    :cond_14
    if-eqz v2, :cond_15

    move-object v4, v2

    .line 3849
    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2526
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$2":I
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2527
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$2":I
    :cond_15
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2530
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "mergedNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "contentDescription":Ljava/lang/String;
    :cond_16
    nop

    .line 2531
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2532
    const/16 v2, 0x800

    .line 2533
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2530
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2537
    :cond_17
    nop

    .line 2538
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2539
    const/16 v2, 0x800

    .line 2540
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2537
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2545
    nop

    .line 2546
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2547
    nop

    .line 2548
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2545
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2553
    :cond_18
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2554
    nop

    .line 2555
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    .line 2556
    nop

    .line 2557
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2558
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    .line 2554
    const/16 v3, 0x800

    invoke-direct {v7, v0, v3, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView(IILjava/lang/Integer;Ljava/util/List;)Z

    move-object/from16 v21, v8

    goto/16 :goto_1b

    .line 2562
    :cond_19
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x186a0

    const-string v5, ""

    if-eqz v1, :cond_26

    .line 2563
    move-object v0, v14

    .local v0, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v1, 0x0

    .line 3862
    .local v1, "$i$f$isTextField":I
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    .line 2563
    .end local v0    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v1    # "$i$f$isTextField":I
    if-eqz v0, :cond_25

    .line 2565
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_1a

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_d

    :cond_1a
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    :goto_d
    move-object v6, v0

    .line 2566
    .local v6, "oldText":Ljava/lang/CharSequence;
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_1b

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_1b
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    :goto_e
    move-object v5, v0

    .line 2567
    .local v5, "newText":Ljava/lang/CharSequence;
    invoke-direct {v7, v5, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2569
    .local v4, "trimmedNewText":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 2571
    .local v0, "startCount":I
    const/4 v1, 0x0

    .line 2572
    .local v1, "endCount":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2573
    .local v2, "oldTextLen":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 2574
    .local v13, "newTextLen":I
    move-object/from16 v21, v8

    .end local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v21, "oldScrollObservationScopes":Ljava/util/ArrayList;
    invoke-static {v2, v13}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 2575
    .local v8, "minLength":I
    :goto_f
    if-ge v0, v8, :cond_1d

    .line 2576
    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move/from16 v23, v1

    .end local v1    # "endCount":I
    .local v23, "endCount":I
    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v3, v1, :cond_1c

    .line 2577
    goto :goto_10

    .line 2579
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v23

    const/4 v3, 0x1

    goto :goto_f

    .line 2575
    .end local v23    # "endCount":I
    .restart local v1    # "endCount":I
    :cond_1d
    move/from16 v23, v1

    .line 2583
    .end local v1    # "endCount":I
    .restart local v23    # "endCount":I
    :goto_10
    move/from16 v3, v23

    .end local v23    # "endCount":I
    .local v3, "endCount":I
    :goto_11
    sub-int v1, v8, v0

    if-ge v3, v1, :cond_1f

    .line 2584
    add-int/lit8 v1, v2, -0x1

    sub-int/2addr v1, v3

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2585
    add-int/lit8 v23, v13, -0x1

    move/from16 v24, v8

    .end local v8    # "minLength":I
    .local v24, "minLength":I
    sub-int v8, v23, v3

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v1, v8, :cond_1e

    .line 2587
    goto :goto_12

    .line 2589
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v24

    goto :goto_11

    .line 2583
    .end local v24    # "minLength":I
    .restart local v8    # "minLength":I
    :cond_1f
    move/from16 v24, v8

    .line 2591
    .end local v8    # "minLength":I
    .restart local v24    # "minLength":I
    :goto_12
    sub-int v1, v2, v3

    sub-int v8, v1, v0

    .line 2592
    .local v8, "removedCount":I
    sub-int v1, v13, v3

    sub-int/2addr v1, v0

    .line 2596
    .local v1, "addedCount":I
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v23

    .local v23, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/16 v25, 0x0

    .line 3863
    .local v25, "$i$f$isTextField":I
    move/from16 v26, v2

    .end local v2    # "oldTextLen":I
    .local v26, "oldTextLen":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v27, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    move/from16 v28, v3

    .end local v3    # "endCount":I
    .local v28, "endCount":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v23    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v25    # "$i$f$isTextField":I
    if-eqz v2, :cond_20

    .line 2597
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .local v2, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v3, 0x0

    .line 3864
    .local v3, "$i$f$isPassword":I
    move/from16 v23, v3

    .end local v3    # "$i$f$isPassword":I
    .local v23, "$i$f$isPassword":I
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v25, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move-object/from16 v27, v2

    .end local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v27, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v23    # "$i$f$isPassword":I
    .end local v27    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    if-nez v2, :cond_20

    .line 2597
    move-object v2, v14

    .restart local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v3, 0x0

    .line 3864
    .restart local v3    # "$i$f$isPassword":I
    move/from16 v23, v3

    .end local v3    # "$i$f$isPassword":I
    .restart local v23    # "$i$f$isPassword":I
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v25, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move-object/from16 v27, v2

    .end local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v27    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v23    # "$i$f$isPassword":I
    .end local v27    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_13

    :cond_20
    move/from16 v2, v17

    .line 2596
    :goto_13
    move/from16 v23, v2

    .line 2598
    .local v23, "becamePasswordNode":Z
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .local v2, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v3, 0x0

    .line 3865
    .local v3, "$i$f$isTextField":I
    move/from16 v25, v3

    .end local v3    # "$i$f$isTextField":I
    .restart local v25    # "$i$f$isTextField":I
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v27, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    move-object/from16 v29, v2

    .end local v2    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v29, "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v25    # "$i$f$isTextField":I
    .end local v29    # "$this$isTextField$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v2, :cond_21

    .line 2599
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    .local v2, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v3, 0x0

    .line 3866
    .local v3, "$i$f$isPassword":I
    move/from16 v25, v3

    .end local v3    # "$i$f$isPassword":I
    .local v25, "$i$f$isPassword":I
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v27, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move-object/from16 v29, v2

    .end local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v29, "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v25    # "$i$f$isPassword":I
    .end local v29    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v2, :cond_21

    .line 2599
    move-object v2, v14

    .restart local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v3, 0x0

    .line 3866
    .restart local v3    # "$i$f$isPassword":I
    move/from16 v25, v3

    .end local v3    # "$i$f$isPassword":I
    .restart local v25    # "$i$f$isPassword":I
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    sget-object v27, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    move-object/from16 v29, v2

    .end local v2    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v29    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v2

    .end local v25    # "$i$f$isPassword":I
    .end local v29    # "$this$isPassword$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    if-nez v2, :cond_21

    const/4 v3, 0x1

    goto :goto_14

    :cond_21
    move/from16 v3, v17

    .line 2598
    :goto_14
    move/from16 v22, v3

    .line 2600
    .local v22, "becameNotPasswordNode":Z
    if-nez v23, :cond_23

    if-eqz v22, :cond_22

    move/from16 v25, v0

    goto :goto_15

    .line 2617
    :cond_22
    nop

    .line 2618
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    .line 2619
    nop

    .line 2617
    const/16 v3, 0x10

    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2620
    move-object v3, v2

    .local v3, "$this$sendSemanticsPropertyChangeEvents_u24lambda_u2453":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v17, 0x0

    .line 2621
    .local v17, "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$event$1":I
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2622
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2623
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2624
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2625
    move/from16 v25, v0

    .end local v0    # "startCount":I
    .local v25, "startCount":I
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    nop

    .line 2620
    .end local v3    # "$this$sendSemanticsPropertyChangeEvents_u24lambda_u2453":Landroid/view/accessibility/AccessibilityEvent;
    .end local v17    # "$i$a$-apply-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$event$1":I
    move/from16 v29, v1

    move-object/from16 v17, v4

    move-object/from16 v27, v5

    goto :goto_16

    .line 2600
    .end local v25    # "startCount":I
    .restart local v0    # "startCount":I
    :cond_23
    move/from16 v25, v0

    .line 2609
    .end local v0    # "startCount":I
    .restart local v25    # "startCount":I
    :goto_15
    nop

    .line 2610
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    .line 2611
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2612
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 2613
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 2614
    nop

    .line 2609
    move-object/from16 v0, p0

    move/from16 v29, v1

    .end local v1    # "addedCount":I
    .local v29, "addedCount":I
    move v1, v2

    move-object v2, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v4

    .end local v4    # "trimmedNewText":Ljava/lang/CharSequence;
    .local v17, "trimmedNewText":Ljava/lang/CharSequence;
    move-object/from16 v4, v27

    move-object/from16 v27, v5

    .end local v5    # "newText":Ljava/lang/CharSequence;
    .local v27, "newText":Ljava/lang/CharSequence;
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2600
    :goto_16
    move-object v0, v2

    .line 2628
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-string v1, "android.widget.EditText"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2629
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2633
    if-nez v23, :cond_24

    if-eqz v22, :cond_33

    .line 2635
    :cond_24
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    .line 2634
    nop

    .line 2636
    .local v1, "textRange":J
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2637
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2638
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    goto/16 :goto_1b

    .line 2641
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "textRange":J
    .end local v6    # "oldText":Ljava/lang/CharSequence;
    .end local v13    # "newTextLen":I
    .end local v17    # "trimmedNewText":Ljava/lang/CharSequence;
    .end local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .end local v22    # "becameNotPasswordNode":Z
    .end local v23    # "becamePasswordNode":Z
    .end local v24    # "minLength":I
    .end local v25    # "startCount":I
    .end local v26    # "oldTextLen":I
    .end local v27    # "newText":Ljava/lang/CharSequence;
    .end local v28    # "endCount":I
    .end local v29    # "addedCount":I
    .local v8, "oldScrollObservationScopes":Ljava/util/ArrayList;
    :cond_25
    move-object/from16 v21, v8

    .line 2642
    .end local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2643
    const/16 v2, 0x800

    .line 2644
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2641
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    goto/16 :goto_1b

    .line 2649
    .end local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    :cond_26
    move-object/from16 v21, v8

    .end local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2650
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextForTextField(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_17

    :cond_27
    move-object v5, v0

    :cond_28
    :goto_17
    move-object v6, v5

    .line 2652
    .local v6, "newText":Ljava/lang/String;
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    .line 2651
    move-wide/from16 v22, v0

    .line 2653
    .local v22, "textRange":J
    nop

    .line 2654
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2655
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2656
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2657
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2658
    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v7, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2653
    move-object/from16 v0, p0

    move-object v4, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2660
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2661
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-direct {v7, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v6    # "newText":Ljava/lang/String;
    .end local v22    # "textRange":J
    goto/16 :goto_1b

    .line 2665
    :cond_29
    nop

    .line 2664
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_18

    .line 2665
    :cond_2a
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_18
    if-eqz v1, :cond_2b

    .line 2666
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2668
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scrollObservationScopes:Ljava/util/List;

    invoke-static {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2669
    .local v0, "scope":Landroidx/compose/ui/platform/ScrollObservationScope;
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    .line 2670
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    .line 2669
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ScrollObservationScope;->setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2672
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    .line 2673
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    .line 2672
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ScrollObservationScope;->setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 2675
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V

    .end local v0    # "scope":Landroidx/compose/ui/platform/ScrollObservationScope;
    goto/16 :goto_1b

    .line 2678
    :cond_2b
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2679
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2680
    nop

    .line 2681
    nop

    .line 2682
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v0

    .line 2683
    nop

    .line 2681
    invoke-direct {v7, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2680
    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2690
    :cond_2c
    nop

    .line 2691
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-direct {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2692
    const/16 v2, 0x800

    .line 2693
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2690
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    goto/16 :goto_1b

    .line 2697
    :cond_2d
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2698
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2699
    .local v0, "actions":Ljava/util/List;
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getCustomActions()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2700
    .local v1, "oldActions":Ljava/util/List;
    if-eqz v1, :cond_32

    .line 2702
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    .line 2703
    .local v2, "labels":Ljava/util/Set;
    move-object v3, v0

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 3867
    .local v4, "$i$f$fastForEach":I
    nop

    .line 3868
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_19
    if-ge v5, v6, :cond_2e

    .line 3869
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3870
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v13, v8

    check-cast v13, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v13, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v23, 0x0

    .line 2704
    .local v23, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$3":I
    move-object/from16 v24, v3

    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .local v24, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2705
    nop

    .line 3870
    .end local v13    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v23    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$3":I
    nop

    .line 3868
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v24

    goto :goto_19

    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_2e
    move-object/from16 v24, v3

    .line 3872
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "index$iv":I
    .restart local v24    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 2706
    .end local v4    # "$i$f$fastForEach":I
    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    .line 2707
    .local v3, "oldLabels":Ljava/util/Set;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 3873
    .local v5, "$i$f$fastForEach":I
    nop

    .line 3874
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_1a
    if-ge v6, v8, :cond_2f

    .line 3875
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3876
    .local v13, "item$iv":Ljava/lang/Object;
    move-object/from16 v23, v13

    check-cast v23, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .local v23, "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    const/16 v24, 0x0

    .line 2708
    .local v24, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$4":I
    move-object/from16 v25, v1

    .end local v1    # "oldActions":Ljava/util/List;
    .local v25, "oldActions":Ljava/util/List;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2709
    nop

    .line 3876
    .end local v23    # "action":Landroidx/compose/ui/semantics/CustomAccessibilityAction;
    .end local v24    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$4":I
    nop

    .line 3874
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v25

    goto :goto_1a

    .end local v25    # "oldActions":Ljava/util/List;
    .restart local v1    # "oldActions":Ljava/util/List;
    :cond_2f
    move-object/from16 v25, v1

    .line 3878
    .end local v1    # "oldActions":Ljava/util/List;
    .end local v6    # "index$iv":I
    .restart local v25    # "oldActions":Ljava/util/List;
    nop

    .line 2711
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_30

    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_30
    const/16 v17, 0x1

    .line 2710
    :cond_31
    move/from16 v16, v17

    move-object/from16 v8, v21

    .end local v2    # "labels":Ljava/util/Set;
    .end local v3    # "oldLabels":Ljava/util/Set;
    goto/16 :goto_4

    .line 2712
    .end local v25    # "oldActions":Ljava/util/List;
    .restart local v1    # "oldActions":Ljava/util/List;
    :cond_32
    move-object/from16 v25, v1

    .end local v1    # "oldActions":Ljava/util/List;
    .restart local v25    # "oldActions":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_33

    .line 2713
    const/16 v16, 0x1

    move-object/from16 v8, v21

    .end local v0    # "actions":Ljava/util/List;
    .end local v25    # "oldActions":Ljava/util/List;
    goto/16 :goto_4

    .line 2436
    .end local v18    # "entry":Ljava/util/Map$Entry;
    .end local v19    # "newlyObservingScroll":Z
    .end local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .local v8, "oldScrollObservationScopes":Ljava/util/ArrayList;
    :cond_33
    :goto_1b
    move-object/from16 v8, v21

    .end local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    goto/16 :goto_4

    .line 2719
    .restart local v18    # "entry":Ljava/util/Map$Entry;
    .restart local v19    # "newlyObservingScroll":Z
    :cond_34
    const/4 v2, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_35

    .line 2720
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2721
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$accessibilityEquals(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    move/from16 v17, v2

    goto :goto_1c

    .line 2723
    :cond_35
    move/from16 v17, v2

    .line 2719
    :cond_36
    :goto_1c
    move/from16 v16, v17

    move-object/from16 v8, v21

    .end local v18    # "entry":Ljava/util/Map$Entry;
    .end local v19    # "newlyObservingScroll":Z
    goto/16 :goto_4

    .line 2729
    .end local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    :cond_37
    move-object/from16 v21, v8

    .end local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    if-nez v16, :cond_38

    .line 2730
    invoke-virtual {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$propertiesDeleted(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result v16

    .line 2732
    :cond_38
    if-eqz v16, :cond_39

    .line 2735
    nop

    .line 2736
    invoke-direct {v7, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v1

    .line 2737
    const/16 v2, 0x800

    .line 2738
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2735
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    move-object/from16 v8, v21

    goto/16 :goto_0

    .line 2732
    :cond_39
    move-object/from16 v8, v21

    goto/16 :goto_0

    .line 2416
    .end local v14    # "newNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v16    # "propertyChanged":Z
    .end local v21    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    .restart local v8    # "oldScrollObservationScopes":Ljava/util/ArrayList;
    :cond_3a
    const/4 v0, 0x0

    .line 2417
    .local v0, "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$newNode$1":I
    nop

    .line 2416
    .end local v0    # "$i$a$-checkNotNull-AndroidComposeViewAccessibilityDelegateCompat$sendSemanticsPropertyChangeEvents$newNode$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no value for specified key"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2742
    .end local v10    # "id":I
    .end local v11    # "oldNode":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;
    :cond_3b
    return-void
.end method

.method private final sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/ArraySet;)V
    .locals 11
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "subtreeChangedSemanticsNodesIds"    # Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2316
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2321
    return-void

    .line 2325
    :cond_1
    const/4 v0, 0x0

    .local v0, "potentialAncestor":I
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 2326
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isAncestorOf(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2327
    return-void

    .line 2325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2332
    .end local v0    # "potentialAncestor":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "semanticsNode":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 3861
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 2332
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2333
    move-object v1, p1

    goto :goto_1

    .line 2335
    :cond_4
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 2332
    :goto_1
    move-object v0, v1

    .line 2337
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 2338
    .local v1, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2341
    nop

    .line 2339
    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 2341
    if-eqz v2, :cond_6

    .line 2339
    nop

    .line 2341
    nop

    .line 3849
    .local v2, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v3, 0x0

    .line 2341
    .local v3, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$2":I
    move-object v0, v2

    .line 2343
    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$2":I
    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    .line 2344
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2345
    return-void

    .line 2348
    :cond_7
    nop

    .line 2349
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v5

    .line 2350
    const/16 v6, 0x800

    .line 2351
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2348
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2353
    return-void

    .line 2343
    .end local v2    # "id":I
    :cond_8
    return-void

    .line 2337
    .end local v1    # "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_9
    :goto_2
    return-void
.end method

.method private final sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 7
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2280
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2281
    return-void

    .line 2284
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2285
    return-void

    .line 2288
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v0

    .line 2289
    .local v0, "id":I
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2290
    .local v1, "pendingHorizontalScroll":Landroidx/compose/ui/semantics/ScrollAxisRange;
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2291
    .local v2, "pendingVerticalScroll":Landroidx/compose/ui/semantics/ScrollAxisRange;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 2292
    return-void

    .line 2295
    :cond_2
    nop

    .line 2296
    nop

    .line 2297
    nop

    .line 2295
    const/16 v3, 0x1000

    invoke-direct {p0, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2299
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v1, :cond_3

    move-object v4, v1

    .local v4, "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    const/4 v5, 0x0

    .line 2300
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2301
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2302
    nop

    .line 2299
    .end local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$1":I
    nop

    .line 2303
    :cond_3
    if-eqz v2, :cond_4

    move-object v4, v2

    .restart local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    const/4 v5, 0x0

    .line 2304
    .local v5, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$2":I
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2305
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2306
    nop

    .line 2303
    .end local v4    # "it":Landroidx/compose/ui/semantics/ScrollAxisRange;
    .end local v5    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$sendTypeViewScrolledAccessibilityEvent$2":I
    nop

    .line 2307
    :cond_4
    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2308
    return-void
.end method

.method private final setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z
    .locals 10
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "traversalMode"    # Z

    .line 3236
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3240
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetSelection()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 3241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3242
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3243
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3240
    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 3244
    :cond_0
    nop

    .line 3240
    :goto_0
    return v1

    .line 3246
    :cond_1
    if-ne p2, p3, :cond_2

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    if-ne p3, v0, :cond_2

    .line 3247
    return v1

    .line 3249
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 3250
    .local v0, "text":Ljava/lang/String;
    :cond_3
    if-ltz p2, :cond_4

    if-ne p2, p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_4

    .line 3251
    move v2, p2

    goto :goto_1

    .line 3253
    :cond_4
    const/4 v2, -0x1

    .line 3250
    :goto_1
    iput v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 3255
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_5

    move v1, v3

    .line 3256
    .local v1, "nonEmptyText":Z
    :cond_5
    nop

    .line 3257
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v5

    .line 3258
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    :cond_6
    move-object v6, v2

    .line 3259
    :goto_2
    if-eqz v1, :cond_7

    iget v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v7, v4

    goto :goto_3

    :cond_7
    move-object v7, v2

    .line 3260
    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    move-object v8, v2

    .line 3261
    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    .line 3256
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->createTextSelectionChangedEvent(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 3263
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3264
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPendingTextTraversedAtGranularityEvent(I)V

    .line 3265
    return v3
.end method

.method private final setContentInvalid(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1293
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 1295
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_0
    return-void
.end method

.method private final setIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1415
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 1416
    return-void
.end method

.method private final setStateDescription(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1388
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 1389
    return-void
.end method

.method private final setText(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1451
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroid/text/SpannableString;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    return-void
.end method

.method private final setTraversalValues()V
    .locals 10

    .line 750
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 751
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 755
    nop

    .line 754
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 755
    if-eqz v0, :cond_0

    .line 754
    nop

    .line 755
    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 753
    nop

    .line 756
    .local v0, "hostSemanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    move-object v1, v0

    .local v1, "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v2, 0x0

    .line 3818
    .local v2, "$i$f$isRtl":I
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v5

    .line 756
    .end local v1    # "$this$isRtl$iv":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v2    # "$i$f$isRtl":I
    :goto_1
    nop

    .line 758
    .local v1, "hostLayoutIsRtl":Z
    nop

    .line 759
    new-array v2, v6, [Landroidx/compose/ui/semantics/SemanticsNode;

    aput-object v0, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 758
    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeSortedByGeometryGrouping(ZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 764
    .local v2, "semanticsOrderList":Ljava/util/List;
    const/4 v3, 0x1

    .local v3, "i":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 765
    :goto_2
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v5

    .line 766
    .local v5, "prevId":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v6

    .local v6, "currId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 767
    iget-object v9, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 768
    iget-object v9, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .end local v5    # "prevId":I
    .end local v6    # "currId":I
    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 770
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private final showTranslatedText()V
    .locals 5

    .line 3047
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 3048
    .local v1, "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    invoke-virtual {v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    .line 3049
    .local v2, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsShowingTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3050
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsActions;->getShowTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_0

    .line 3051
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3050
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    .line 3055
    .end local v1    # "node":Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
    .end local v2    # "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_1
    return-void
.end method

.method private final sortByGeometryGroupings(ZLjava/util/ArrayList;Ljava/util/Map;)Ljava/util/List;
    .locals 16
    .param p1, "layoutIsRtl"    # Z
    .param p2, "parentListToSort"    # Ljava/util/ArrayList;
    .param p3, "containerChildrenMapping"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;"
        }
    .end annotation

    .line 608
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v1, "rowGroupings":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "entryIndex":I
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 647
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 649
    .local v4, "currEntry":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v2, :cond_0

    invoke-static {v1, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sortByGeometryGroupings$placedEntryRowOverlaps(Ljava/util/ArrayList;Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 650
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 651
    .local v5, "newRect":Landroidx/compose/ui/geometry/Rect;
    new-instance v6, Lkotlin/Pair;

    const/4 v7, 0x1

    new-array v7, v7, [Landroidx/compose/ui/semantics/SemanticsNode;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v4    # "currEntry":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v5    # "newRect":Landroidx/compose/ui/geometry/Rect;
    :cond_1
    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    .end local v2    # "entryIndex":I
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TopBottomBoundsComparator;

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "returnList":Ljava/util/ArrayList;
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 3794
    .local v4, "$i$f$fastForEach":I
    nop

    .line 3795
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_4

    .line 3796
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 3797
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/Pair;

    .local v8, "row":Lkotlin/Pair;
    const/4 v9, 0x0

    .line 661
    .local v9, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$1":I
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    const/4 v12, 0x0

    .line 3798
    .local v12, "$i$f$semanticComparator":I
    if-eqz p1, :cond_3

    sget-object v13, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$RtlBoundsComparator;

    goto :goto_2

    :cond_3
    sget-object v13, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$LtrBoundsComparator;

    :goto_2
    check-cast v13, Ljava/util/Comparator;

    .line 3800
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode$Companion;->getZComparator$ui_release()Ljava/util/Comparator;

    move-result-object v14

    new-instance v15, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    check-cast v15, Ljava/util/Comparator;

    .line 3802
    new-instance v13, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;

    invoke-direct {v13, v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$semanticComparator$$inlined$thenBy$2;-><init>(Ljava/util/Comparator;)V

    check-cast v13, Ljava/util/Comparator;

    .line 3798
    nop

    .line 661
    .end local v11    # "this_$iv":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .end local v12    # "$i$f$semanticComparator":I
    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 662
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 663
    nop

    .line 3797
    .end local v8    # "row":Lkotlin/Pair;
    .end local v9    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$1":I
    nop

    .line 3795
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3803
    .end local v5    # "index$iv":I
    :cond_4
    nop

    .line 667
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$sortByGeometryGroupings$2;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    new-instance v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 669
    const/4 v3, 0x0

    .line 671
    .local v3, "i":I
    :goto_3
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v3, v4, :cond_7

    .line 672
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v4

    .line 677
    .local v4, "currNodeId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 678
    .local v5, "containersChildrenList":Ljava/util/List;
    if-eqz v5, :cond_6

    .line 679
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    move-object/from16 v8, p0

    invoke-direct {v8, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    .line 680
    .local v7, "containerIsScreenReaderFocusable":Z
    if-nez v7, :cond_5

    .line 682
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 685
    nop

    .line 688
    :goto_4
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v2, v3, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 689
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v3, v9

    .end local v7    # "containerIsScreenReaderFocusable":Z
    goto :goto_3

    :cond_6
    move-object/from16 v8, p0

    add-int/lit8 v3, v3, 0x1

    .line 692
    nop

    .end local v4    # "currNodeId":I
    .end local v5    # "containersChildrenList":Ljava/util/List;
    goto :goto_3

    .line 695
    :cond_7
    move-object/from16 v8, p0

    move-object/from16 v6, p3

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    return-object v4
.end method

.method static synthetic sortByGeometryGroupings$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;ZLjava/util/ArrayList;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 601
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 604
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    .line 601
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sortByGeometryGroupings(ZLjava/util/ArrayList;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final sortByGeometryGroupings$lambda$7(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function2;
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 667
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final sortByGeometryGroupings$placedEntryRowOverlaps(Ljava/util/ArrayList;Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 11
    .param p0, "rowGroupings"    # Ljava/util/ArrayList;
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/geometry/Rect;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;>;>;",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ")Z"
        }
    .end annotation

    .line 615
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    .line 616
    .local v0, "entryTopCoord":F
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    .line 617
    .local v1, "entryBottomCoord":F
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 619
    .local v2, "entryIsEmpty":Z
    :goto_0
    const/4 v5, 0x0

    .local v5, "currIndex":I
    move-object v6, p0

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 620
    :goto_1
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    .line 621
    .local v7, "currRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v3

    .line 622
    .local v8, "groupIsEmpty":Z
    :goto_2
    if-nez v2, :cond_2

    if-nez v8, :cond_2

    .line 623
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    move v9, v4

    goto :goto_3

    :cond_2
    move v9, v3

    .line 622
    :goto_3
    nop

    .line 626
    .local v9, "groupOverlapsEntry":Z
    if-eqz v9, :cond_3

    .line 627
    nop

    .line 628
    nop

    .line 629
    nop

    .line 630
    nop

    .line 631
    nop

    .line 627
    const/4 v3, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v7, v3, v0, v6, v1}, Landroidx/compose/ui/geometry/Rect;->intersect(FFFF)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 634
    .local v3, "newRect":Landroidx/compose/ui/geometry/Rect;
    new-instance v6, Lkotlin/Pair;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v3, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return v4

    .line 619
    .end local v3    # "newRect":Landroidx/compose/ui/geometry/Rect;
    .end local v7    # "currRect":Landroidx/compose/ui/geometry/Rect;
    .end local v8    # "groupIsEmpty":Z
    .end local v9    # "groupOverlapsEntry":Z
    :cond_3
    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 643
    .end local v5    # "currIndex":I
    :cond_4
    return v3
.end method

.method private final subtreeSortedByGeometryGrouping(ZLjava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "layoutIsRtl"    # Z
    .param p2, "listToSort"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 740
    .local v0, "containerMapToChildren":Ljava/util/Map;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v1, "geometryList":Ljava/util/ArrayList;
    move-object v2, p2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 3812
    .local v3, "$i$f$fastForEach":I
    nop

    .line 3813
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 3814
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 3815
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v7, "node":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v8, 0x0

    .line 743
    .local v8, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$subtreeSortedByGeometryGrouping$1":I
    invoke-direct {p0, v7, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->geometryDepthFirstSearch(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 744
    nop

    .line 3815
    .end local v7    # "node":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v8    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$subtreeSortedByGeometryGrouping$1":I
    nop

    .line 3813
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3817
    .end local v4    # "index$iv":I
    :cond_0
    nop

    .line 746
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sortByGeometryGroupings(ZLjava/util/ArrayList;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private final toScreenCoords(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "textNode"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "bounds"    # Landroidx/compose/ui/geometry/Rect;

    .line 2012
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2013
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getPositionInRoot-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 2014
    .local v1, "boundsInRoot":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 2017
    .local v2, "textNodeBoundsInRoot":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v1, v2}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2018
    invoke-virtual {v1, v2}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    goto :goto_0

    .line 2020
    :cond_1
    move-object v3, v0

    .line 2017
    :goto_0
    nop

    .line 2023
    .local v3, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    if-eqz v3, :cond_2

    .line 2025
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v4

    .line 2024
    nop

    .line 2027
    .local v4, "topLeftInScreen":J
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v6

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    move-result-wide v6

    .line 2026
    nop

    .line 2028
    .local v6, "bottomRightInScreen":J
    new-instance v0, Landroid/graphics/RectF;

    .line 2029
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    .line 2030
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    .line 2031
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    .line 2032
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    .line 2028
    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .end local v4    # "topLeftInScreen":J
    .end local v6    # "bottomRightInScreen":J
    goto :goto_1

    .line 2035
    :cond_2
    nop

    .line 2023
    :goto_1
    return-object v0
.end method

.method private final toViewStructure(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 24
    .param p1, "$this$toViewStructure"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2897
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2898
    .local v1, "session":Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_1

    .line 2899
    return-object v2

    .line 2902
    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->getAutofillId(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    .line 2903
    .local v3, "rootAutofillId":Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    .line 2904
    .local v4, "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    if-eqz v4, :cond_3

    .line 2905
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v2

    .line 2907
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->toAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 2904
    :cond_4
    nop

    .line 2909
    .local v5, "parentAutofillId":Landroid/view/autofill/AutofillId;
    nop

    .line 2910
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v6

    int-to-long v6, v6

    .line 2909
    invoke-virtual {v1, v5, v6, v7}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    move-result-object v6

    if-nez v6, :cond_5

    .line 2910
    return-object v2

    .line 2912
    .local v6, "structure":Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    .line 2913
    .local v14, "configuration":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2914
    return-object v2

    .line 2917
    :cond_6
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    const-string v2, "\n"

    if-eqz v15, :cond_7

    .local v15, "it":Ljava/util/List;
    const/4 v7, 0x0

    .line 2918
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$1":I
    const-string v8, "android.widget.TextView"

    invoke-virtual {v6, v8}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setClassName(Ljava/lang/String;)V

    .line 2919
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setText(Ljava/lang/CharSequence;)V

    .line 2920
    nop

    .line 2917
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$1":I
    .end local v15    # "it":Ljava/util/List;
    nop

    .line 2921
    :cond_7
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v14, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v7, :cond_8

    .local v7, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v8, 0x0

    .line 2922
    .local v8, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$2":I
    const-string v9, "android.widget.EditText"

    invoke-virtual {v6, v9}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setClassName(Ljava/lang/String;)V

    .line 2923
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setText(Ljava/lang/CharSequence;)V

    .line 2924
    nop

    .line 2921
    .end local v7    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v8    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$2":I
    nop

    .line 2925
    :cond_8
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-static {v14, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_9

    .restart local v15    # "it":Ljava/util/List;
    const/4 v7, 0x0

    .line 2926
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$3":I
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2927
    nop

    .line 2925
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$3":I
    .end local v15    # "it":Ljava/util/List;
    nop

    .line 2928
    :cond_9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/Role;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .local v2, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2929
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$4":I
    invoke-virtual {v6, v2}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setClassName(Ljava/lang/String;)V

    .line 2930
    nop

    .line 2928
    .end local v2    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$4":I
    :cond_a
    nop

    .line 2932
    invoke-direct {v0, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-eqz v2, :cond_b

    .local v2, "it":Landroidx/compose/ui/text/TextLayoutResult;
    const/4 v7, 0x0

    .line 2933
    .local v7, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$5":I
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v8

    .line 2934
    .local v8, "input":Landroidx/compose/ui/text/TextLayoutInput;
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getFontSize-XSAIIZE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {v8}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    .line 2935
    .local v9, "px":F
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v10, v10}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setTextStyle(FIII)V

    .line 2936
    nop

    .line 2932
    .end local v2    # "it":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v7    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$5":I
    .end local v8    # "input":Landroidx/compose/ui/text/TextLayoutInput;
    .end local v9    # "px":F
    nop

    .line 2938
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInParent$ui_release()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .local v2, "$this$toViewStructure_u24lambda_u2462":Landroidx/compose/ui/geometry/Rect;
    const/4 v15, 0x0

    .line 2939
    .local v15, "$i$a$-with-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$6":I
    nop

    .line 2940
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v7

    float-to-int v8, v7

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    float-to-int v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v7

    float-to-int v12, v7

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v7

    float-to-int v13, v7

    .line 2939
    move-object v7, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->setDimens(IIIIII)V

    .line 2942
    nop

    .line 2938
    .end local v2    # "$this$toViewStructure_u24lambda_u2462":Landroidx/compose/ui/geometry/Rect;
    .end local v15    # "$i$a$-with-AndroidComposeViewAccessibilityDelegateCompat$toViewStructure$6":I
    nop

    .line 2943
    return-object v6
.end method

.method private static final touchExplorationStateListener$lambda$1(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Z)V
    .locals 2
    .param p0, "this$0"    # Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .param p1, "it"    # Z

    .line 245
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    .line 246
    return-void
.end method

.method private final traverseAtGranularity(Landroidx/compose/ui/semantics/SemanticsNode;IZZ)Z
    .locals 20
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p2, "granularity"    # I
    .param p3, "forward"    # Z
    .param p4, "extendSelection"    # Z

    .line 3159
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 3160
    :goto_0
    iput v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 3161
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 3164
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    .line 3166
    return v5

    .line 3168
    :cond_4
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIteratorForGranularity(Landroidx/compose/ui/semantics/SemanticsNode;I)Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    if-nez v2, :cond_5

    return v5

    .line 3169
    .local v2, "iterator":Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;
    :cond_5
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v6

    .line 3170
    .local v6, "current":I
    if-ne v6, v3, :cond_7

    .line 3171
    if-eqz p3, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    move v6, v7

    .line 3173
    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {v2, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v7

    goto :goto_4

    :cond_8
    invoke-interface {v2, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v7

    :goto_4
    if-nez v7, :cond_9

    .line 3174
    return v5

    .line 3175
    .local v7, "range":[I
    :cond_9
    aget v5, v7, v5

    .line 3176
    .local v5, "segmentStart":I
    aget v16, v7, v4

    .line 3177
    .local v16, "segmentEnd":I
    const/4 v8, 0x0

    .line 3178
    .local v8, "selectionStart":I
    const/4 v9, 0x0

    .line 3179
    .local v9, "selectionEnd":I
    if-eqz p4, :cond_d

    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isAccessibilitySelectionExtendable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 3180
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v8

    .line 3181
    if-ne v8, v3, :cond_b

    .line 3182
    if-eqz p3, :cond_a

    move v3, v5

    goto :goto_5

    :cond_a
    move/from16 v3, v16

    :goto_5
    move v8, v3

    .line 3184
    :cond_b
    if-eqz p3, :cond_c

    move/from16 v3, v16

    goto :goto_6

    :cond_c
    move v3, v5

    :goto_6
    move v14, v8

    .end local v9    # "selectionEnd":I
    .local v3, "selectionEnd":I
    goto :goto_8

    .line 3186
    .end local v3    # "selectionEnd":I
    .restart local v9    # "selectionEnd":I
    :cond_d
    if-eqz p3, :cond_e

    move/from16 v3, v16

    goto :goto_7

    :cond_e
    move v3, v5

    :goto_7
    move v8, v3

    .line 3187
    move v14, v8

    .line 3190
    .end local v8    # "selectionStart":I
    .end local v9    # "selectionEnd":I
    .restart local v3    # "selectionEnd":I
    .local v14, "selectionStart":I
    :goto_8
    if-eqz p3, :cond_f

    .line 3191
    const/16 v8, 0x100

    move v10, v8

    goto :goto_9

    .line 3192
    :cond_f
    const/16 v8, 0x200

    move v10, v8

    .line 3190
    :goto_9
    nop

    .line 3189
    nop

    .line 3193
    .local v10, "action":I
    new-instance v15, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 3194
    nop

    .line 3195
    nop

    .line 3196
    nop

    .line 3197
    nop

    .line 3198
    nop

    .line 3199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 3193
    move-object v8, v15

    move-object/from16 v9, p1

    move/from16 v11, p2

    move v12, v5

    move/from16 v13, v16

    move-object/from16 v19, v1

    move v1, v14

    move-object v4, v15

    .end local v14    # "selectionStart":I
    .local v1, "selectionStart":I
    .local v19, "text":Ljava/lang/String;
    move-wide/from16 v14, v17

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    iput-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 3201
    move-object/from16 v4, p1

    const/4 v8, 0x1

    invoke-direct {v0, v4, v1, v3, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 3202
    return v8
.end method

.method private final trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2174
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    .line 2175
    move v2, p2

    .line 2176
    .local v2, "len":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p2, :cond_3

    goto :goto_2

    .line 2177
    :cond_3
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2178
    add-int/lit8 v2, p2, -0x1

    .line 2181
    :cond_4
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2176
    :cond_5
    :goto_2
    return-object p1

    .line 3849
    .end local v2    # "len":I
    :cond_6
    const/4 v0, 0x0

    .line 2174
    .local v0, "$i$a$-require-AndroidComposeViewAccessibilityDelegateCompat$trimToSize$1":I
    nop

    .end local v0    # "$i$a$-require-AndroidComposeViewAccessibilityDelegateCompat$trimToSize$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size should be greater than 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateContentCaptureBuffersOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 7
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2994
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForContentCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2995
    return-void

    .line 2998
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateTranslationOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 3000
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->toViewStructure(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferContentCaptureViewAppeared(ILandroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V

    .line 3001
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3901
    .local v1, "$i$f$fastForEach":I
    nop

    .line 3902
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 3903
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3904
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v5, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 3001
    .local v6, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$updateContentCaptureBuffersOnAppeared$1":I
    invoke-direct {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateContentCaptureBuffersOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 3904
    .end local v5    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v6    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$updateContentCaptureBuffersOnAppeared$1":I
    nop

    .line 3902
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3906
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 3002
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method private final updateContentCaptureBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 7
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3005
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForContentCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3006
    return-void

    .line 3008
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->bufferContentCaptureViewDisappeared(I)V

    .line 3009
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 3907
    .local v1, "$i$f$fastForEach":I
    nop

    .line 3908
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 3909
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3910
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v5, "child":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v6, 0x0

    .line 3010
    .local v6, "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$updateContentCaptureBuffersOnDisappeared$1":I
    invoke-direct {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateContentCaptureBuffersOnDisappeared(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 3011
    nop

    .line 3910
    .end local v5    # "child":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v6    # "$i$a$-fastForEach-AndroidComposeViewAccessibilityDelegateCompat$updateContentCaptureBuffersOnDisappeared$1":I
    nop

    .line 3908
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3912
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 3012
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method private final updateHoveredVirtualView(I)V
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 2144
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 2145
    return-void

    .line 2148
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 2149
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    .line 2155
    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2156
    const/16 v3, 0x100

    move v2, v0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Z

    .line 2157
    return-void
.end method

.method private final updateSemanticsNodesCopyAndPanes()V
    .locals 8

    .line 2376
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2377
    .local v0, "toRemove":Landroidx/collection/ArraySet;
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2378
    .local v2, "id":I
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 2379
    .local v4, "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$hasPaneTitle(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2380
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2381
    nop

    .line 2382
    nop

    .line 2383
    nop

    .line 2384
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2385
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    .line 2384
    invoke-static {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v3

    .line 2381
    :goto_2
    const/16 v6, 0x20

    invoke-direct {p0, v2, v6, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    .end local v2    # "id":I
    .end local v4    # "currentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    goto :goto_0

    .line 2390
    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->removeAll(Landroidx/collection/ArraySet;)Z

    .line 2391
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2392
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2393
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$hasPaneTitle(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->paneDisplayed:Landroidx/collection/ArraySet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2394
    nop

    .line 2395
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 2396
    nop

    .line 2397
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2394
    const/16 v5, 0x10

    invoke-direct {p0, v3, v5, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendPaneChangeEvents(IILjava/lang/String;)V

    .line 2400
    :cond_5
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsNodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2401
    new-instance v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v6

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2403
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_6
    nop

    .line 2404
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;)V

    .line 2403
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousSemanticsRoot:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;

    .line 2405
    return-void
.end method

.method private final updateTranslationOnAppeared(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 6
    .param p1, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 3015
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 3016
    .local v0, "config":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    nop

    .line 3017
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsShowingTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    .line 3016
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 3019
    .local v1, "isShowingTextSubstitution":Ljava/lang/Boolean;
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    const/4 v4, 0x0

    .line 3023
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3019
    const/4 v5, 0x1

    .line 3020
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3019
    if-ne v2, v3, :cond_0

    .line 3020
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3021
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getShowTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    .line 3022
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    if-ne v2, v3, :cond_1

    .line 3023
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3024
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getShowTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 3026
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final boundsUpdatesEventLoop$ui_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2210
    iget v2, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v2, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/ArraySet;

    .local v4, "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    iget-object v5, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .local v5, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_4

    .end local v4    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :pswitch_1
    iget-object v2, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/ArraySet;

    .restart local v4    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    iget-object v5, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .restart local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v4    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .line 2211
    .restart local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    nop

    .line 2212
    :try_start_2
    new-instance v2, Landroidx/collection/ArraySet;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v6}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2213
    .local v2, "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    iget-object v4, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    :goto_1
    iput-object v5, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object v2, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    iput-object v4, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    iput v3, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    invoke-interface {v4, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_1

    .line 2210
    return-object v1

    .line 2213
    :cond_1
    move-object v9, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v9

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .local v6, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 2214
    invoke-direct {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForContentCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2215
    invoke-direct {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifyContentCaptureChanges()V

    .line 2217
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabledForAccessibility$ui_release()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2218
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v7}, Landroidx/collection/ArraySet;->size()I

    move-result v7

    :goto_3
    if-ge v0, v7, :cond_3

    .line 2219
    iget-object v8, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v8, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 2220
    .local v8, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 2221
    nop

    .line 2222
    nop

    .line 2220
    invoke-direct {v6, v8, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendSubtreeChangeAccessibilityEvents(Landroidx/compose/ui/node/LayoutNode;Landroidx/collection/ArraySet;)V

    .line 2224
    invoke-direct {v6, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendTypeViewScrolledAccessibilityEvent(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2218
    .end local v8    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2226
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v5}, Landroidx/collection/ArraySet;->clear()V

    .line 2241
    iget-boolean v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v0, :cond_4

    .line 2242
    iput-boolean v3, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2243
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v7, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2246
    :cond_4
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 2247
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2248
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2249
    iput-object v6, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    iput-object v4, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;->label:I

    const-wide/16 v7, 0x64

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v2, :cond_5

    .line 2210
    return-object v2

    .line 2249
    :cond_5
    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v6    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .local v5, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :goto_4
    goto/16 :goto_1

    .line 2252
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "subtreeChangedSemanticsNodesIds":Landroidx/collection/ArraySet;
    .end local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :cond_6
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 2253
    .end local v6    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    move-object v0, v6

    .line 2254
    .local v0, "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 2252
    .end local v0    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .restart local v6    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :catchall_0
    move-exception v0

    move-object v5, v6

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v6    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    :catchall_1
    move-exception v1

    :goto_5
    iget-object v2, v5, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->clear()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final canScroll-0AR0LA0$ui_release(ZIJ)Z
    .locals 7
    .param p1, "vertical"    # Z
    .param p2, "direction"    # I
    .param p3, "position"    # J

    .line 438
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-moWRBKg(Ljava/util/Collection;ZIJ)Z

    move-result v0

    return v0
.end method

.method public final dispatchHoverEvent$ui_release(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2059
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2060
    return v1

    .line 2063
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_0

    .line 2091
    :pswitch_0
    return v1

    .line 2078
    :pswitch_1
    nop

    .line 2079
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    if-eq v0, v3, :cond_1

    .line 2080
    invoke-direct {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateHoveredVirtualView(I)V

    .line 2081
    goto :goto_0

    .line 2085
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2078
    :goto_0
    return v2

    .line 2065
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hitTestSemanticsAt$ui_release(FF)I

    move-result v0

    .line 2072
    .local v0, "virtualViewId":I
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2073
    .local v1, "handled":Z
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->updateHoveredVirtualView(I)V

    .line 2074
    if-ne v0, v3, :cond_2

    move v2, v1

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityForceEnabledForTesting$ui_release()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 2160
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->nodeProvider:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    return-object v0
.end method

.method public final getContentCaptureForceEnabledForTesting$ui_release()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureForceEnabledForTesting:Z

    return v0
.end method

.method public final getContentCaptureSession$ui_release()Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    return-object v0
.end method

.method public final getExtraDataTestTraversalAfterVal$ui_release()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraDataTestTraversalBeforeVal$ui_release()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    return-object v0
.end method

.method public final getHoveredVirtualViewId$ui_release()I
    .locals 1

    .line 218
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    return v0
.end method

.method public final getIdToAfterMap$ui_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getIdToBeforeMap$ui_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getOnSendAccessibilityEvent$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object v0
.end method

.method public final hitTestSemanticsAt$ui_release(FF)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2102
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    check-cast v0, Landroidx/compose/ui/node/Owner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 2104
    new-instance v0, Landroidx/compose/ui/node/HitTestResult;

    invoke-direct {v0}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    .line 2105
    .local v0, "hitSemanticsEntities":Landroidx/compose/ui/node/HitTestResult;
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 2106
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 2107
    nop

    .line 2105
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/node/LayoutNode;->hitTestSemantics-M_7yMNQ$ui_release$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V

    .line 2110
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    if-eqz v4, :cond_0

    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    .line 2112
    .local v3, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    :cond_0
    const/high16 v4, -0x80000000

    .line 2113
    .local v4, "virtualViewId":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    .line 3860
    .local v6, "$i$f$getSemantics-OLwlOKw":I
    const/16 v7, 0x8

    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 2113
    .end local v6    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v5, v6}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 2117
    invoke-static {v3, v1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    .line 2121
    .local v1, "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2122
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2123
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v2

    .line 2124
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v2

    .line 2122
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2125
    .local v2, "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    if-nez v2, :cond_2

    .line 2126
    nop

    .line 2127
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v5

    .line 2126
    invoke-direct {p0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v4

    .line 2132
    .end local v1    # "semanticsNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v2    # "androidView":Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    :cond_2
    return v4
.end method

.method public final isEnabledForAccessibility$ui_release()Z
    .locals 2

    .line 263
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->enabledServices:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public final onClearTranslation$ui_release()V
    .locals 1

    .line 3042
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    .line 3043
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->clearTranslatedText()V

    .line 3044
    return-void
.end method

.method public final onCreateVirtualViewTranslationRequests$ui_release([J[ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "virtualIds"    # [J
    .param p2, "supportedFormats"    # [I
    .param p3, "requestsCollector"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 3550
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;

    .line 3551
    nop

    .line 3550
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;->onCreateVirtualViewTranslationRequests(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;[J[ILjava/util/function/Consumer;)V

    .line 3552
    return-void
.end method

.method public final onHideTranslation$ui_release()V
    .locals 1

    .line 3036
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    .line 3037
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hideTranslatedText()V

    .line 3038
    return-void
.end method

.method public final onLayoutChange$ui_release(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 2260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 2261
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2262
    return-void

    .line 2266
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2267
    return-void
.end method

.method public final onSemanticsChange$ui_release()V
    .locals 2

    .line 2197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 2199
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    if-nez v1, :cond_0

    .line 2200
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 2201
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2203
    :cond_0
    return-void
.end method

.method public final onShowTranslation$ui_release()V
    .locals 1

    .line 3030
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->translateStatus:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$TranslateStatus;

    .line 3031
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->showTranslatedText()V

    .line 3032
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 416
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->initContentCapture(Z)V

    .line 417
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->initContentCapture(Z)V

    .line 421
    return-void
.end method

.method public final onVirtualViewTranslationResponses$ui_release(Landroid/util/LongSparseArray;)V
    .locals 1
    .param p1, "response"    # Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 3558
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ViewTranslationHelperMethodsS;->onVirtualViewTranslationResponses(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroid/util/LongSparseArray;)V

    .line 3559
    return-void
.end method

.method public final setAccessibilityForceEnabledForTesting$ui_release(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 232
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityForceEnabledForTesting:Z

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentSemanticsNodesInvalidated:Z

    .line 234
    return-void
.end method

.method public final setContentCaptureForceEnabledForTesting$ui_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 316
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureForceEnabledForTesting:Z

    return-void
.end method

.method public final setContentCaptureSession$ui_release(Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    .line 318
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    return-void
.end method

.method public final setHoveredVirtualViewId$ui_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 218
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->hoveredVirtualViewId:I

    return-void
.end method

.method public final setIdToAfterMap$ui_release(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setIdToBeforeMap$ui_release(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setOnSendAccessibilityEvent$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/accessibility/AccessibilityEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSendAccessibilityEvent:Lkotlin/jvm/functions/Function1;

    .line 225
    return-void
.end method
