.class public final Landroidx/compose/foundation/text/selection/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 5 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n*L\n1#1,991:1\n81#2:992\n107#2,2:993\n81#2:995\n107#2,2:996\n81#2:998\n107#2,2:999\n81#2:1001\n107#2,2:1002\n81#2:1004\n107#2,2:1005\n81#2:1007\n107#2,2:1008\n81#2:1010\n107#2,2:1011\n1#3:1013\n1#3:1049\n256#4,3:1014\n33#4,4:1017\n259#4,2:1021\n38#4:1023\n261#4:1024\n101#4,2:1025\n33#4,6:1027\n103#4:1033\n33#4,6:1035\n416#4,3:1041\n33#4,4:1044\n419#4:1048\n420#4:1050\n38#4:1051\n421#4:1052\n69#4,6:1053\n33#4,6:1059\n101#4,2:1065\n33#4,6:1067\n103#4:1073\n1099#5:1034\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n*L\n138#1:992\n138#1:993,2\n188#1:995\n188#1:996,2\n195#1:998\n195#1:999,2\n204#1:1001\n204#1:1002,2\n213#1:1004\n213#1:1005,2\n220#1:1007\n220#1:1008,2\n227#1:1010\n227#1:1011,2\n537#1:1049\n412#1:1014,3\n412#1:1017,4\n412#1:1021,2\n412#1:1023\n412#1:1024\n457#1:1025,2\n457#1:1027,6\n457#1:1033\n470#1:1035,6\n537#1:1041,3\n537#1:1044,4\n537#1:1048\n537#1:1050\n537#1:1051\n537#1:1052\n787#1:1053,6\n804#1:1059,6\n821#1:1065,2\n821#1:1067,6\n821#1:1073\n469#1:1034\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010r\u001a\u00020O2\u0006\u0010s\u001a\u00020\u0018\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008t\u0010$J\"\u0010u\u001a\u00020\u00182\u0006\u0010v\u001a\u00020\u00112\u0006\u0010w\u001a\u00020\u0018H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008x\u0010yJ\r\u0010z\u001a\u00020OH\u0000\u00a2\u0006\u0002\u0008{J\u0018\u0010|\u001a\u0004\u0018\u00010}2\u0006\u0010~\u001a\u00020\u007fH\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\u000c\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0002J\u0012\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0000\u00a2\u0006\u0003\u0008\u0085\u0001J/\u0010\u0086\u0001\u001a\u00020W2\u0006\u0010s\u001a\u00020\u00182\u0007\u0010\u0087\u0001\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u0007H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J\u0011\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u0007J\u000f\u0010\u008d\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0003\u0008\u008e\u0001J\u000f\u0010\u008f\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0003\u0008\u0090\u0001J\u0007\u0010\u0091\u0001\u001a\u00020OJ\u000f\u0010\u0092\u0001\u001a\u00020\u0011H\u0000\u00a2\u0006\u0003\u0008\u0093\u0001JA\u0010\u0094\u0001\u001a\u001f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0012\u0012\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020\t0\u0096\u00010\u0095\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u0097\u00012\t\u0010\u0099\u0001\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0003\u0008\u009a\u0001J\u001b\u0010\u009b\u0001\u001a\u00020O2\u0007\u0010\u009c\u0001\u001a\u00020W2\u0007\u0010\u009d\u0001\u001a\u00020\tH\u0002J\u000f\u0010\u009e\u0001\u001a\u00020\u0007H\u0001\u00a2\u0006\u0003\u0008\u009f\u0001J0\u0010\u00a0\u0001\u001a\u00020O2\u0006\u0010s\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u00072\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J\t\u0010\u00a5\u0001\u001a\u00020OH\u0002J\t\u0010\u00a6\u0001\u001a\u00020OH\u0002J9\u0010\u00a7\u0001\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u00182\u0007\u0010\u0087\u0001\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u00072\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J;\u0010\u00a7\u0001\u001a\u00020\u00072\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00182\u0006\u0010U\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u00072\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\t\u0010\u00ad\u0001\u001a\u00020OH\u0002J*\u0010\u00ae\u0001\u001a\u00020O*\u00030\u00af\u00012\u0013\u0010\u00b0\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020O0NH\u0082@\u00a2\u0006\u0003\u0010\u00b1\u0001J\u001d\u0010\u00b2\u0001\u001a\u00020J*\u00020J2\u000e\u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020O0\u00b4\u0001H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R5\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00188F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR1\u0010 \u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00188@@BX\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001f\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R1\u0010&\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00188@@BX\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u001f\u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$R/\u0010+\u001a\u0004\u0018\u00010*2\u0008\u0010\u0017\u001a\u0004\u0018\u00010*8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00080\u0010\u001f\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R5\u00101\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00188F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u00084\u0010\u001f\u001a\u0004\u00082\u0010\u001b\"\u0004\u00083\u0010\u001dR\u001a\u00105\u001a\u000206X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R+\u0010A\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u001f\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER$\u0010G\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u0010C\"\u0004\u0008H\u0010ER\u0011\u0010I\u001a\u00020J8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010LR@\u0010P\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020O0N2\u0014\u0010M\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020O0N@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0016\u0010U\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\n\u0000R&\u0010V\u001a\u0004\u0018\u00010W8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R(\u0010^\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010c\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010CR$\u0010e\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010C\"\u0004\u0008g\u0010ER5\u0010h\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00188F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008k\u0010\u001f\u001a\u0004\u0008i\u0010\u001b\"\u0004\u0008j\u0010\u001dR\u001c\u0010l\u001a\u0004\u0018\u00010mX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010q\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u00b5\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;",
        "(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V",
        "_isInTouchMode",
        "Landroidx/compose/runtime/MutableState;",
        "",
        "_selection",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "clipboardManager",
        "Landroidx/compose/ui/platform/ClipboardManager;",
        "getClipboardManager",
        "()Landroidx/compose/ui/platform/ClipboardManager;",
        "setClipboardManager",
        "(Landroidx/compose/ui/platform/ClipboardManager;)V",
        "value",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "containerLayoutCoordinates",
        "getContainerLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setContainerLayoutCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "<set-?>",
        "Landroidx/compose/ui/geometry/Offset;",
        "currentDragPosition",
        "getCurrentDragPosition-_m7T9-E",
        "()Landroidx/compose/ui/geometry/Offset;",
        "setCurrentDragPosition-_kEHs6E",
        "(Landroidx/compose/ui/geometry/Offset;)V",
        "currentDragPosition$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "dragBeginPosition",
        "getDragBeginPosition-F1C5BW0$foundation_release",
        "()J",
        "setDragBeginPosition-k-4lQ0M",
        "(J)V",
        "dragBeginPosition$delegate",
        "dragTotalDistance",
        "getDragTotalDistance-F1C5BW0$foundation_release",
        "setDragTotalDistance-k-4lQ0M",
        "dragTotalDistance$delegate",
        "Landroidx/compose/foundation/text/Handle;",
        "draggingHandle",
        "getDraggingHandle",
        "()Landroidx/compose/foundation/text/Handle;",
        "setDraggingHandle",
        "(Landroidx/compose/foundation/text/Handle;)V",
        "draggingHandle$delegate",
        "endHandlePosition",
        "getEndHandlePosition-_m7T9-E",
        "setEndHandlePosition-_kEHs6E",
        "endHandlePosition$delegate",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "getFocusRequester",
        "()Landroidx/compose/ui/focus/FocusRequester;",
        "setFocusRequester",
        "(Landroidx/compose/ui/focus/FocusRequester;)V",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "getHapticFeedBack",
        "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "setHapticFeedBack",
        "(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V",
        "hasFocus",
        "getHasFocus",
        "()Z",
        "setHasFocus",
        "(Z)V",
        "hasFocus$delegate",
        "isInTouchMode",
        "setInTouchMode",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "newOnSelectionChange",
        "Lkotlin/Function1;",
        "",
        "onSelectionChange",
        "getOnSelectionChange",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSelectionChange",
        "(Lkotlin/jvm/functions/Function1;)V",
        "previousPosition",
        "previousSelectionLayout",
        "Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "getPreviousSelectionLayout$foundation_release$annotations",
        "()V",
        "getPreviousSelectionLayout$foundation_release",
        "()Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "setPreviousSelectionLayout$foundation_release",
        "(Landroidx/compose/foundation/text/selection/SelectionLayout;)V",
        "selection",
        "getSelection",
        "()Landroidx/compose/foundation/text/selection/Selection;",
        "setSelection",
        "(Landroidx/compose/foundation/text/selection/Selection;)V",
        "shouldShowMagnifier",
        "getShouldShowMagnifier",
        "showToolbar",
        "getShowToolbar$foundation_release",
        "setShowToolbar$foundation_release",
        "startHandlePosition",
        "getStartHandlePosition-_m7T9-E",
        "setStartHandlePosition-_kEHs6E",
        "startHandlePosition$delegate",
        "textToolbar",
        "Landroidx/compose/ui/platform/TextToolbar;",
        "getTextToolbar",
        "()Landroidx/compose/ui/platform/TextToolbar;",
        "setTextToolbar",
        "(Landroidx/compose/ui/platform/TextToolbar;)V",
        "contextMenuOpenAdjustment",
        "position",
        "contextMenuOpenAdjustment-k-4lQ0M",
        "convertToContainerCoordinates",
        "layoutCoordinates",
        "offset",
        "convertToContainerCoordinates-R5De75A",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J",
        "copy",
        "copy$foundation_release",
        "getAnchorSelectable",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "anchor",
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "getAnchorSelectable$foundation_release",
        "getContentRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "getSelectedText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "getSelectedText$foundation_release",
        "getSelectionLayout",
        "previousHandlePosition",
        "isStartHandle",
        "getSelectionLayout-Wko1d7g",
        "(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "handleDragObserver",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "isNonEmptySelection",
        "isNonEmptySelection$foundation_release",
        "isTriviallyCollapsedSelection",
        "isTriviallyCollapsedSelection$foundation_release",
        "onRelease",
        "requireContainerCoordinates",
        "requireContainerCoordinates$foundation_release",
        "selectAll",
        "Lkotlin/Pair;",
        "",
        "",
        "selectableId",
        "previousSelection",
        "selectAll$foundation_release",
        "selectionChanged",
        "selectionLayout",
        "newSelection",
        "shouldPerformHaptics",
        "shouldPerformHaptics$foundation_release",
        "startSelection",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "startSelection-9KIMszo",
        "(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "toolbarCopy",
        "updateHandleOffsets",
        "updateSelection",
        "updateSelection-jyLRC_s$foundation_release",
        "(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "newPosition",
        "updateSelection-qNKwrvQ$foundation_release",
        "(Landroidx/compose/ui/geometry/Offset;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "updateSelectionToolbar",
        "detectNonConsumingTap",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "onTap",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onClearSelectionRequested",
        "block",
        "Lkotlin/Function0;",
        "foundation_release"
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
.field private final _isInTouchMode:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _selection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

.field private containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;

.field private onSelectionChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private previousPosition:Landroidx/compose/ui/geometry/Offset;

.field private previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field private final selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

.field private showToolbar:Z

.field private final startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/selection/SelectionManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 4
    .param p1, "selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 86
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    .line 101
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 133
    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 138
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 188
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 195
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 204
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 213
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 220
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 227
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 236
    nop

    .line 237
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnPositionChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 244
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateStartCallback$foundation_release(Lkotlin/jvm/functions/Function4;)V

    .line 274
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateSelectAll$foundation_release(Lkotlin/jvm/functions/Function2;)V

    .line 290
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function6;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateCallback$foundation_release(Lkotlin/jvm/functions/Function6;)V

    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$5;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateEndCallback$foundation_release(Lkotlin/jvm/functions/Function0;)V

    .line 319
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$6;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$6;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectableChangeCallback$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 327
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$7;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$7;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setAfterSelectableUnsubscribe$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 342
    nop

    .line 67
    return-void
.end method

.method public static final synthetic access$convertToContainerCoordinates-R5De75A(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "layoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "offset"    # J

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$detectNonConsumingTap(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "onTap"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->detectNonConsumingTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    return-object v0
.end method

.method public static final synthetic access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 67
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$setDragBeginPosition-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragBeginPosition-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDragTotalDistance-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragTotalDistance-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDraggingHandle(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/Handle;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 67
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    return-void
.end method

.method public static final synthetic access$setEndHandlePosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 67
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$setStartHandlePosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 67
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$startSelection-9KIMszo(Landroidx/compose/foundation/text/selection/SelectionManager;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "position"    # J
    .param p3, "isStartHandle"    # Z
    .param p4, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    return-void
.end method

.method public static final synthetic access$toolbarCopy(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 67
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarCopy()V

    return-void
.end method

.method public static final synthetic access$updateHandleOffsets(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 67
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    return-void
.end method

.method public static final synthetic access$updateSelectionToolbar(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 67
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    return-void
.end method

.method private final convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 3
    .param p1, "layoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "offset"    # J

    .line 678
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 679
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v1

    return-wide v1

    .line 679
    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    return-wide v1
.end method

.method private final detectNonConsumingTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$detectNonConsumingTap"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "onTap"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 663
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$detectNonConsumingTap$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, p3}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 668
    return-object v0
.end method

.method private final getContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 18

    .line 532
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 533
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-nez v1, :cond_1

    return-object v2

    .line 534
    .local v1, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 536
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v3

    .line 537
    nop

    .local v3, "$this$fastMapNotNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1041
    .local v4, "$i$f$fastMapNotNull":I
    nop

    .line 1042
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1043
    .local v5, "target$iv":Ljava/util/ArrayList;
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1044
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1045
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_5

    .line 1046
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1047
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "e$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1048
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v14, 0x0

    .line 539
    .local v14, "$i$a$-fastMapNotNull-SelectionManager$getContentRect$selectableSubSelections$1":I
    nop

    .line 538
    iget-object v15, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    .line 539
    if-eqz v2, :cond_3

    .line 538
    nop

    .line 539
    nop

    .line 1013
    .local v2, "it":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v15, 0x0

    .line 539
    .local v15, "$i$a$-let-SelectionManager$getContentRect$selectableSubSelections$1$1":I
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .end local v2    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .end local v15    # "$i$a$-let-SelectionManager$getContentRect$selectableSubSelections$1$1":I
    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1048
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "$i$a$-fastMapNotNull-SelectionManager$getContentRect$selectableSubSelections$1":I
    :goto_1
    if-eqz v2, :cond_4

    .line 1049
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1048
    .local v13, "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ListUtilsKt$fastMapNotNull$2$1$iv":I
    :cond_4
    nop

    .line 1047
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$2$iv":I
    nop

    .line 1045
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .line 1051
    .end local v8    # "index$iv$iv":I
    :cond_5
    nop

    .line 1052
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 541
    .end local v3    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastMapNotNull":I
    .end local v5    # "target$iv":Ljava/util/ArrayList;
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->access$firstAndLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 536
    nop

    .line 543
    .local v2, "selectableSubSelections":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    return-object v3

    .line 545
    :cond_6
    const/4 v3, 0x0

    invoke-static {v2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getSelectedRegionRect(Ljava/util/List;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 544
    nop

    .line 547
    .local v4, "selectedRegionRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->access$getInvertedInfiniteRect$p()Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-object v3

    .line 549
    :cond_7
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 551
    .local v3, "visibleRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_9

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    goto :goto_2

    .line 553
    :cond_8
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 554
    .local v5, "rootRect":Landroidx/compose/ui/geometry/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getHandleHeight()F

    move-result v7

    const/4 v11, 0x4

    int-to-float v11, v11

    mul-float/2addr v7, v11

    add-float v11, v6, v7

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v7, v5

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFFILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    return-object v6

    .line 551
    .end local v5    # "rootRect":Landroidx/compose/ui/geometry/Rect;
    :cond_9
    :goto_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public static synthetic getPreviousSelectionLayout$foundation_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getSelectionLayout-Wko1d7g(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;
    .locals 16
    .param p1, "position"    # J
    .param p3, "previousHandlePosition"    # J
    .param p5, "isStartHandle"    # Z

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v10

    .line 784
    .local v10, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    move-object/from16 v11, p0

    iget-object v0, v11, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0, v10}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v12

    .line 786
    .local v12, "sortedSelectables":Ljava/util/List;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v0

    check-cast v13, Ljava/util/Map;

    .line 787
    .local v13, "idToIndexMap":Ljava/util/Map;
    move-object v0, v12

    .local v0, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1053
    .local v1, "$i$f$fastForEachIndexed":I
    nop

    .line 1054
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1055
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1056
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/text/selection/Selectable;

    .local v5, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    move v6, v2

    .local v6, "index":I
    const/4 v7, 0x0

    .local v7, "$i$a$-fastForEachIndexed-SelectionManager$getSelectionLayout$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 788
    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v13, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    nop

    .line 1056
    .end local v5    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v6    # "index":I
    .end local v7    # "$i$a$-fastForEachIndexed-SelectionManager$getSelectionLayout$1":I
    nop

    .line 1054
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 791
    .end local v0    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEachIndexed":I
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$getSelectionLayout-Wko1d7g$$inlined$compareBy$1;

    invoke-direct {v0, v13}, Landroidx/compose/foundation/text/selection/SelectionManager$getSelectionLayout-Wko1d7g$$inlined$compareBy$1;-><init>(Ljava/util/Map;)V

    move-object v14, v0

    check-cast v14, Ljava/util/Comparator;

    .line 794
    .local v14, "selectableIdOrderingComparator":Ljava/util/Comparator;
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 795
    .local v7, "previousSelection":Landroidx/compose/foundation/text/selection/Selection;
    new-instance v15, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;

    .line 796
    nop

    .line 797
    nop

    .line 798
    nop

    .line 799
    nop

    .line 800
    nop

    .line 801
    const/4 v9, 0x0

    .line 795
    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v10

    move/from16 v6, p5

    move-object v8, v14

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;-><init>(JJLandroidx/compose/ui/layout/LayoutCoordinates;ZLandroidx/compose/foundation/text/selection/Selection;Ljava/util/Comparator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 804
    .local v0, "builder":Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;
    move-object v1, v12

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1059
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1060
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_2

    .line 1061
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1062
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/text/selection/Selectable;

    .local v6, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v8, 0x0

    .line 805
    .local v8, "$i$a$-fastForEach-SelectionManager$getSelectionLayout$2":I
    invoke-interface {v6, v0}, Landroidx/compose/foundation/text/selection/Selectable;->appendSelectableInfoToBuilder(Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;)V

    .line 806
    nop

    .line 1062
    .end local v6    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v8    # "$i$a$-fastForEach-SelectionManager$getSelectionLayout$2":I
    nop

    .line 1060
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1064
    .end local v3    # "index$iv":I
    :cond_2
    nop

    .line 808
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->build()Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object v1

    return-object v1
.end method

.method private final getShouldShowMagnifier()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isTriviallyCollapsedSelection$foundation_release()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p1, "$this$onClearSelectionRequested"    # Landroidx/compose/ui/Modifier;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private final selectionChanged(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 2
    .param p1, "selectionLayout"    # Landroidx/compose/foundation/text/selection/SelectionLayout;
    .param p2, "newSelection"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 812
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->shouldPerformHaptics$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 815
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-interface {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionLayout;->createSubSelections(Landroidx/compose/foundation/text/selection/Selection;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Ljava/util/Map;)V

    .line 816
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    return-void
.end method

.method private final setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 227
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1011
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1012
    nop

    .line 227
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setDragBeginPosition-k-4lQ0M(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 996
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 997
    nop

    .line 188
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setDragTotalDistance-k-4lQ0M(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 195
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 999
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1000
    nop

    .line 195
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 220
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1008
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1009
    nop

    .line 220
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 213
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1005
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1006
    nop

    .line 213
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 204
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1002
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1003
    nop

    .line 204
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 8
    .param p1, "position"    # J
    .param p3, "isStartHandle"    # Z
    .param p4, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 700
    nop

    .line 701
    nop

    .line 702
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    .line 703
    nop

    .line 704
    nop

    .line 700
    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation_release(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 706
    return-void
.end method

.method private final toolbarCopy()V
    .locals 0

    .line 508
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->copy$foundation_release()V

    .line 509
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 510
    return-void
.end method

.method private final updateHandleOffsets()V
    .locals 21

    .line 353
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    .line 354
    .local v1, "selection":Landroidx/compose/foundation/text/selection/Selection;
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 355
    .local v2, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1013
    .local v4, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v5, 0x0

    .line 355
    .local v5, "$i$a$-let-SelectionManager$updateHandleOffsets$startSelectable$1":I
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v4

    .end local v4    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v5    # "$i$a$-let-SelectionManager$updateHandleOffsets$startSelectable$1":I
    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 356
    .local v4, "startSelectable":Landroidx/compose/foundation/text/selection/Selectable;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1013
    .local v5, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v6, 0x0

    .line 356
    .local v6, "$i$a$-let-SelectionManager$updateHandleOffsets$endSelectable$1":I
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v5

    .end local v5    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v6    # "$i$a$-let-SelectionManager$updateHandleOffsets$endSelectable$1":I
    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 357
    .local v5, "endSelectable":Landroidx/compose/foundation/text/selection/Selectable;
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 358
    .local v6, "startLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 360
    .local v7, "endLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_3
    nop

    .line 361
    if-eqz v1, :cond_11

    .line 362
    if-eqz v2, :cond_10

    .line 363
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 364
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto/16 :goto_d

    .line 371
    :cond_4
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    .line 372
    .local v8, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    const/4 v10, 0x1

    if-eqz v6, :cond_9

    move-object v11, v6

    .local v11, "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v12, 0x0

    .line 378
    .local v12, "$i$a$-let-SelectionManager$updateHandleOffsets$1":I
    invoke-interface {v4, v1, v10}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v13

    .line 379
    .local v13, "handlePosition":J
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v17, 0x0

    goto :goto_6

    .line 380
    :cond_5
    invoke-interface {v2, v11, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v15

    .line 381
    .local v15, "position":J
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v17

    move-object/from16 v19, v11

    .end local v11    # "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v19, "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v10

    .local v10, "it":J
    const/16 v20, 0x0

    .line 382
    .local v20, "$i$a$-takeIf-SelectionManager$updateHandleOffsets$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v3

    sget-object v9, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    if-eq v3, v9, :cond_7

    invoke-static {v8, v10, v11}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x1

    .line 381
    .end local v10    # "it":J
    .end local v20    # "$i$a$-takeIf-SelectionManager$updateHandleOffsets$1$1":I
    :goto_5
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    const/16 v17, 0x0

    .line 372
    .end local v12    # "$i$a$-let-SelectionManager$updateHandleOffsets$1":I
    .end local v13    # "handlePosition":J
    .end local v15    # "position":J
    .end local v19    # "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_6
    move-object/from16 v3, v17

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 386
    if-eqz v7, :cond_e

    move-object v3, v7

    .local v3, "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v9, 0x0

    .line 387
    .local v9, "$i$a$-let-SelectionManager$updateHandleOffsets$2":I
    const/4 v10, 0x0

    invoke-interface {v5, v1, v10}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v11

    .line 388
    .local v11, "handlePosition":J
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const/4 v3, 0x0

    goto :goto_b

    .line 389
    :cond_a
    invoke-interface {v2, v3, v11, v12}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v13

    .line 390
    .local v13, "position":J
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v15

    move-wide/from16 v16, v11

    .end local v11    # "handlePosition":J
    .local v16, "handlePosition":J
    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v10

    .restart local v10    # "it":J
    const/4 v12, 0x0

    .line 391
    .local v12, "$i$a$-takeIf-SelectionManager$updateHandleOffsets$2$1":I
    move-object/from16 v19, v1

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v19, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v20, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    sget-object v2, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    if-eq v1, v2, :cond_c

    invoke-static {v8, v10, v11}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    const/16 v18, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/16 v18, 0x1

    .line 390
    .end local v10    # "it":J
    .end local v12    # "$i$a$-takeIf-SelectionManager$updateHandleOffsets$2$1":I
    :goto_9
    if-eqz v18, :cond_d

    goto :goto_a

    :cond_d
    const/4 v15, 0x0

    :goto_a
    move-object v3, v15

    .line 386
    .end local v3    # "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v9    # "$i$a$-let-SelectionManager$updateHandleOffsets$2":I
    .end local v13    # "position":J
    .end local v16    # "handlePosition":J
    :goto_b
    goto :goto_c

    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_e
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    :goto_c
    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 394
    return-void

    .line 363
    .end local v8    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_f
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_d

    .line 362
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_10
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_d

    .line 361
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 366
    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_d
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 367
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 368
    return-void
.end method

.method private final updateSelectionToolbar()V
    .locals 9

    .line 513
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-nez v1, :cond_1

    return-void

    .line 518
    .local v1, "textToolbar":Landroidx/compose/ui/platform/TextToolbar;
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 520
    .local v2, "rect":Landroidx/compose/ui/geometry/Rect;
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionToolbar$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionToolbar$1;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/platform/TextToolbar;->showMenu$default(Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .end local v2    # "rect":Landroidx/compose/ui/geometry/Rect;
    goto :goto_0

    .line 521
    :cond_3
    invoke-interface {v1}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v2, :cond_4

    .line 522
    invoke-interface {v1}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 524
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final contextMenuOpenAdjustment-k-4lQ0M(J)V
    .locals 4
    .param p1, "position"    # J

    .line 824
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->toTextRange-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 827
    .local v0, "isEmptySelection":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 828
    nop

    .line 829
    nop

    .line 830
    nop

    .line 831
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v2

    .line 828
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 834
    :cond_1
    return-void
.end method

.method public final copy$foundation_release()V
    .locals 4

    .line 492
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelectedText$foundation_release()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    .line 1013
    .local v1, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v2, 0x0

    .line 492
    .local v2, "$i$a$-takeIf-SelectionManager$copy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v2    # "$i$a$-takeIf-SelectionManager$copy$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1013
    .local v0, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v1, 0x0

    .line 492
    .local v1, "$i$a$-let-SelectionManager$copy$2":I
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Landroidx/compose/ui/platform/ClipboardManager;->setText(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 493
    .end local v0    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v1    # "$i$a$-let-SelectionManager$copy$2":I
    :cond_2
    return-void
.end method

.method public final getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;
    .locals 3
    .param p1, "anchor"    # Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 349
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectableMap$foundation_release()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selectable;

    return-object v0
.end method

.method public final getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-object v0
.end method

.method public final getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public final getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 3

    .line 227
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1010
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 227
    return-object v0
.end method

.method public final getDragBeginPosition-F1C5BW0$foundation_release()J
    .locals 3

    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 995
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 188
    return-wide v0
.end method

.method public final getDragTotalDistance-F1C5BW0$foundation_release()J
    .locals 3

    .line 195
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 998
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 195
    return-wide v0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 3

    .line 220
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1007
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 220
    return-object v0
.end method

.method public final getEndHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 3

    .line 213
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1004
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 213
    return-object v0
.end method

.method public final getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public final getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object v0
.end method

.method public final getHasFocus()Z
    .locals 3

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 992
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 138
    return v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 4

    .line 145
    nop

    .line 144
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 145
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 146
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 147
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 148
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v1}, Landroidx/compose/foundation/FocusableKt;->focusable$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 155
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->updateSelectionTouchMode(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 156
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$5;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 164
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getShouldShowMagnifier()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->selectionMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    :goto_0
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public final getOnSelectionChange()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPreviousSelectionLayout$foundation_release()Landroidx/compose/foundation/text/selection/SelectionLayout;
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    return-object v0
.end method

.method public final getSelectedText$foundation_release()Landroidx/compose/ui/text/AnnotatedString;
    .locals 17

    .line 465
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 469
    :cond_0
    const/4 v1, 0x0

    .line 1034
    .local v1, "$i$f$buildAnnotatedString":I
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v3

    .local v2, "$this$getSelectedText_u24lambda_u2413":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v5

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1035
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1036
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_3

    .line 1037
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1038
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/text/selection/Selectable;

    .local v10, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v11, 0x0

    .line 471
    .local v11, "$i$a$-fastForEach-SelectionManager$getSelectedText$1$1":I
    iget-object v12, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v10}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v12, :cond_2

    .local v12, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v13, 0x0

    .line 472
    .local v13, "$i$a$-let-SelectionManager$getSelectedText$1$1$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    .line 473
    .local v14, "currentText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 474
    nop

    .line 475
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v15

    .line 476
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    .line 474
    invoke-virtual {v14, v15, v0}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_1

    .line 479
    :cond_1
    nop

    .line 480
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    .line 481
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v15

    .line 479
    invoke-virtual {v14, v0, v15}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 473
    :goto_1
    nop

    .line 485
    .local v0, "currentSelectedText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 486
    nop

    .line 471
    .end local v0    # "currentSelectedText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v12    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "$i$a$-let-SelectionManager$getSelectedText$1$1$1":I
    .end local v14    # "currentText":Landroidx/compose/ui/text/AnnotatedString;
    nop

    .line 487
    :cond_2
    nop

    .line 1038
    .end local v10    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v11    # "$i$a$-fastForEach-SelectionManager$getSelectedText$1$1":I
    nop

    .line 1036
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1040
    .end local v7    # "index$iv":I
    :cond_3
    nop

    .line 488
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .line 1034
    .end local v2    # "$this$getSelectedText_u24lambda_u2413":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v4    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 469
    .end local v1    # "$i$f$buildAnnotatedString":I
    return-object v0

    .line 466
    :cond_4
    :goto_2
    return-object v2
.end method

.method public final getSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    return-object v0
.end method

.method public final getShowToolbar$foundation_release()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    return v0
.end method

.method public final getStartHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 3

    .line 204
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1001
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 204
    return-object v0
.end method

.method public final getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-object v0
.end method

.method public final handleDragObserver(Z)Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .param p1, "isStartHandle"    # Z

    .line 569
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;-><init>(ZLandroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 657
    return-object v0
.end method

.method public final isInTouchMode()Z
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isNonEmptySelection$foundation_release()Z
    .locals 18

    .line 445
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 446
    .local v1, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    return v2

    .line 450
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 453
    return v4

    .line 457
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastAny$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1025
    .local v5, "$i$f$fastAny":I
    nop

    .line 1026
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1027
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1028
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_6

    .line 1029
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1030
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1026
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v14, 0x0

    .line 458
    .local v14, "$i$a$-fastAny-SelectionManager$isNonEmptySelection$1":I
    iget-object v15, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    .line 459
    if-eqz v2, :cond_4

    .line 458
    nop

    .line 459
    nop

    .line 1013
    .local v2, "$this$isNonEmptySelection_u24lambda_u2410_u24lambda_u249":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v15, 0x0

    .line 459
    .local v15, "$i$a$-run-SelectionManager$isNonEmptySelection$1$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    if-eq v4, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 458
    .end local v2    # "$this$isNonEmptySelection_u24lambda_u2410_u24lambda_u249":Landroidx/compose/foundation/text/selection/Selection;
    .end local v15    # "$i$a$-run-SelectionManager$isNonEmptySelection$1$1":I
    :goto_1
    goto :goto_2

    .line 460
    :cond_4
    const/4 v0, 0x0

    .line 458
    :goto_2
    nop

    .line 1026
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "$i$a$-fastAny-SelectionManager$isNonEmptySelection$1":I
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    .line 1030
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_5
    nop

    .line 1028
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1032
    .end local v8    # "index$iv$iv":I
    :cond_6
    nop

    .line 1033
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .line 457
    .end local v3    # "$this$fastAny$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastAny":I
    :goto_3
    return v2
.end method

.method public final isTriviallyCollapsedSelection$foundation_release()Z
    .locals 3

    .line 432
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 433
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final onRelease()V
    .locals 2

    .line 559
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Ljava/util/Map;)V

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setShowToolbar$foundation_release(Z)V

    .line 561
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public final requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3

    .line 400
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 401
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v0, :cond_1

    .line 402
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    return-object v0

    .line 1013
    :cond_0
    const/4 v1, 0x0

    .line 402
    .local v1, "$i$a$-require-SelectionManager$requireContainerCoordinates$2":I
    nop

    .end local v1    # "$i$a$-require-SelectionManager$requireContainerCoordinates$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unattached coordinates"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1013
    :cond_1
    const/4 v1, 0x0

    .line 401
    .local v1, "$i$a$-requireNotNull-SelectionManager$requireContainerCoordinates$1":I
    nop

    .end local v1    # "$i$a$-requireNotNull-SelectionManager$requireContainerCoordinates$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null coordinates"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final selectAll$foundation_release(JLandroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;
    .locals 22
    .param p1, "selectableId"    # J
    .param p3, "previousSelection"    # Landroidx/compose/foundation/text/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lkotlin/Pair<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;"
        }
    .end annotation

    .line 410
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 411
    .local v1, "subselections":Ljava/util/Map;
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v2

    .line 412
    const/4 v3, 0x0

    .local v2, "$this$fastFold$iv":Ljava/util/List;
    .local v3, "initial$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1014
    .local v4, "$i$f$fastFold":I
    nop

    .line 1015
    const/4 v5, 0x0

    .local v5, "accumulator$iv":Ljava/lang/Object;
    move-object v5, v3

    .line 1016
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1017
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1018
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_2

    .line 1019
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1020
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "e$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1021
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    move-object v14, v5

    .local v14, "mergedSelection":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v15, 0x0

    .line 413
    .local v15, "$i$a$-fastFold-SelectionManager$selectAll$newSelection$1":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v16

    cmp-long v16, v16, p1

    if-nez v16, :cond_0

    .line 414
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v16

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 413
    :goto_1
    move-object/from16 v17, v16

    .line 415
    .local v17, "selection":Landroidx/compose/foundation/text/selection/Selection;
    move-object/from16 v16, v2

    move-object/from16 v2, v17

    .end local v17    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v2, "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v16, "$this$fastFold$iv":Ljava/util/List;
    if-eqz v2, :cond_1

    move-object/from16 v17, v2

    .line 1013
    .local v17, "it":Landroidx/compose/foundation/text/selection/Selection;
    const/16 v18, 0x0

    .line 415
    .local v18, "$i$a$-let-SelectionManager$selectAll$newSelection$1$1":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v19

    move-object/from16 v21, v3

    .end local v3    # "initial$iv":Ljava/lang/Object;
    .local v21, "initial$iv":Ljava/lang/Object;
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v19, v4

    move-object/from16 v4, v17

    .end local v17    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .local v4, "it":Landroidx/compose/foundation/text/selection/Selection;
    .local v19, "$i$f$fastFold":I
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .end local v18    # "$i$a$-let-SelectionManager$selectAll$newSelection$1$1":I
    goto :goto_2

    .end local v19    # "$i$f$fastFold":I
    .end local v21    # "initial$iv":Ljava/lang/Object;
    .restart local v3    # "initial$iv":Ljava/lang/Object;
    .local v4, "$i$f$fastFold":I
    :cond_1
    move-object/from16 v21, v3

    move/from16 v19, v4

    .line 416
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$fastFold":I
    .restart local v19    # "$i$f$fastFold":I
    .restart local v21    # "initial$iv":Ljava/lang/Object;
    :goto_2
    invoke-static {v14, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    .line 1021
    .end local v2    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "mergedSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v15    # "$i$a$-fastFold-SelectionManager$selectAll$newSelection$1":I
    move-object v5, v2

    .line 1022
    nop

    .line 1020
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 1018
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v19

    move-object/from16 v3, v21

    goto :goto_0

    .end local v16    # "$this$fastFold$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFold":I
    .end local v21    # "initial$iv":Ljava/lang/Object;
    .local v2, "$this$fastFold$iv":Ljava/util/List;
    .restart local v3    # "initial$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$fastFold":I
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move/from16 v19, v4

    .line 1023
    .end local v2    # "$this$fastFold$iv":Ljava/util/List;
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$fastFold":I
    .end local v8    # "index$iv$iv":I
    .restart local v16    # "$this$fastFold$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFold":I
    .restart local v21    # "initial$iv":Ljava/lang/Object;
    nop

    .line 1024
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    nop

    .line 412
    .end local v5    # "accumulator$iv":Ljava/lang/Object;
    .end local v16    # "$this$fastFold$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFold":I
    .end local v21    # "initial$iv":Ljava/lang/Object;
    nop

    .line 411
    move-object v2, v5

    .line 418
    .local v2, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 419
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v4, :cond_4

    sget-object v5, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    goto :goto_3

    .line 418
    :cond_3
    move-object/from16 v3, p3

    .line 421
    :cond_4
    :goto_3
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final setClipboardManager(Landroidx/compose/ui/platform/ClipboardManager;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/platform/ClipboardManager;

    .line 123
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    return-void
.end method

.method public final setContainerLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 173
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 174
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "positionInWindow":Landroidx/compose/ui/geometry/Offset;
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 178
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 179
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 182
    .end local v0    # "positionInWindow":Landroidx/compose/ui/geometry/Offset;
    :cond_1
    return-void
.end method

.method public final setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/focus/FocusRequester;

    .line 133
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public final setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 118
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final setHasFocus(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 993
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 994
    nop

    .line 138
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public final setInTouchMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 90
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 91
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 94
    :cond_0
    return-void
.end method

.method public final setOnSelectionChange(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "newOnSelectionChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$2;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager$onSelectionChange$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 113
    return-void
.end method

.method public final setPreviousSelectionLayout$foundation_release(Landroidx/compose/foundation/text/selection/SelectionLayout;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 234
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    return-void
.end method

.method public final setSelection(Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 77
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 81
    :cond_0
    return-void
.end method

.method public final setShowToolbar$foundation_release(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 503
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 504
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 505
    return-void
.end method

.method public final setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/platform/TextToolbar;

    .line 128
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method

.method public final shouldPerformHaptics$foundation_release()Z
    .locals 14

    .line 821
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectables$foundation_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1065
    .local v2, "$i$f$fastAny":I
    nop

    .line 1066
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1067
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1068
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 1069
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1070
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1066
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/text/selection/Selectable;

    .local v11, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v12, 0x0

    .line 821
    .local v12, "$i$a$-fastAny-SelectionManager$shouldPerformHaptics$1":I
    invoke-interface {v11}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_0

    move v13, v7

    goto :goto_1

    :cond_0
    move v13, v1

    .line 1066
    .end local v11    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v12    # "$i$a$-fastAny-SelectionManager$shouldPerformHaptics$1":I
    :goto_1
    if-eqz v13, :cond_1

    move v0, v7

    goto :goto_2

    .line 1070
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastAny$2$iv":I
    :cond_1
    nop

    .line 1068
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1072
    .end local v5    # "index$iv$iv":I
    :cond_2
    nop

    .line 1073
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v0, v1

    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_2
    if-eqz v0, :cond_3

    move v1, v7

    goto :goto_3

    :cond_3
    nop

    .line 821
    :goto_3
    return v1
.end method

.method public final updateSelection-jyLRC_s$foundation_release(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 3
    .param p1, "position"    # J
    .param p3, "previousHandlePosition"    # J
    .param p5, "isStartHandle"    # Z
    .param p6, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 762
    if-eqz p5, :cond_0

    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 763
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 765
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelectionLayout-Wko1d7g(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object v0

    .line 766
    .local v0, "selectionLayout":Landroidx/compose/foundation/text/selection/SelectionLayout;
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    invoke-interface {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    const/4 v1, 0x0

    return v1

    .line 770
    :cond_1
    invoke-interface {p6, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->adjust(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    .line 771
    .local v1, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 772
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionChanged(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/Selection;)V

    .line 774
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 775
    const/4 v2, 0x1

    return v2
.end method

.method public final updateSelection-qNKwrvQ$foundation_release(Landroidx/compose/ui/geometry/Offset;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p1, "newPosition"    # Landroidx/compose/ui/geometry/Offset;
    .param p2, "previousPosition"    # J
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 727
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    nop

    .line 729
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    .line 730
    nop

    .line 731
    nop

    .line 732
    nop

    .line 728
    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation_release(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    return v0
.end method
