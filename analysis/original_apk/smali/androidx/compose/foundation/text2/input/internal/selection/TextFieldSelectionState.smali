.class public final Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
.super Ljava/lang/Object;
.source "TextFieldSelectionState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1235:1\n81#2:1236\n107#2,2:1237\n81#2:1239\n107#2,2:1240\n81#2:1242\n107#2,2:1243\n81#2:1245\n107#2,2:1246\n81#2:1248\n107#2,2:1249\n81#2:1251\n107#2,2:1252\n81#2:1255\n81#2:1256\n81#2:1257\n81#2:1258\n81#2:1259\n1#3:1254\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionState.kt\nandroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState\n*L\n99#1:1236\n99#1:1237,2\n110#1:1239\n110#1:1240,2\n132#1:1242\n132#1:1243,2\n164#1:1245\n164#1:1246,2\n169#1:1248\n169#1:1249,2\n175#1:1251\n175#1:1252,2\n206#1:1255\n239#1:1256\n254#1:1257\n285#1:1258\n289#1:1259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010Z\u001a\u00020[H\u0002J\u0010\u0010\\\u001a\u00020[2\u0008\u0008\u0002\u0010]\u001a\u00020\tJ\u0006\u0010^\u001a\u00020[J\u0006\u0010_\u001a\u00020[J\u0006\u0010`\u001a\u00020[J\u0008\u0010a\u001a\u00020\u001eH\u0002J\u001d\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\tH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008d\u0010eJ\u0010\u0010f\u001a\u00020\u00142\u0006\u0010c\u001a\u00020\tH\u0002J<\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020:2\u0006\u0010j\u001a\u00020:2\u0008\u0010k\u001a\u0004\u0018\u00010h2\u0006\u0010c\u001a\u00020\t2\u0006\u0010l\u001a\u00020mH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008n\u0010oJ\u0008\u0010p\u001a\u00020[H\u0002J\u0008\u0010q\u001a\u00020[H\u0002J\u000e\u0010r\u001a\u00020[H\u0086@\u00a2\u0006\u0002\u0010sJ\u000e\u0010t\u001a\u00020[H\u0082@\u00a2\u0006\u0002\u0010sJ\u000e\u0010u\u001a\u00020[H\u0082@\u00a2\u0006\u0002\u0010sJ\u0006\u0010v\u001a\u00020[J\u0010\u0010w\u001a\u00020[2\u0006\u0010x\u001a\u00020\u001eH\u0002J6\u0010y\u001a\u00020[2\u0006\u00102\u001a\u0002032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020R2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\"\u0010z\u001a\u00020[2\u0006\u0010{\u001a\u00020#2\u0006\u0010|\u001a\u00020\u0010H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008}\u0010~JN\u0010\u007f\u001a\u00020h2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u00020:2\u0007\u0010\u0083\u0001\u001a\u00020:2\u0006\u0010c\u001a\u00020\t2\u0006\u0010l\u001a\u00020m2\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020\tH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u000f\u0010\u0087\u0001\u001a\u00020[2\u0006\u0010T\u001a\u00020SJ\u0015\u0010\u0088\u0001\u001a\u00020[*\u00030\u0089\u0001H\u0086@\u00a2\u0006\u0003\u0010\u008a\u0001J\u0015\u0010\u008b\u0001\u001a\u00020[*\u00030\u0089\u0001H\u0082@\u00a2\u0006\u0003\u0010\u008a\u0001J\u001d\u0010\u008c\u0001\u001a\u00020[*\u00030\u0089\u00012\u0006\u0010c\u001a\u00020\tH\u0082@\u00a2\u0006\u0003\u0010\u008d\u0001J%\u0010\u008e\u0001\u001a\u00020[*\u00030\u0089\u00012\u000e\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u0090\u0001H\u0082@\u00a2\u0006\u0003\u0010\u0091\u0001J5\u0010\u0092\u0001\u001a\u00020[*\u00030\u0089\u00012\u000e\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u0090\u00012\u000e\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u0090\u0001H\u0082@\u00a2\u0006\u0003\u0010\u0094\u0001J\u0015\u0010\u0095\u0001\u001a\u00020[*\u00030\u0089\u0001H\u0082@\u00a2\u0006\u0003\u0010\u008a\u0001J\u001d\u0010\u0096\u0001\u001a\u00020[*\u00030\u0089\u00012\u0006\u0010c\u001a\u00020\tH\u0086@\u00a2\u0006\u0003\u0010\u008d\u0001J5\u0010\u0097\u0001\u001a\u00020[*\u00030\u0089\u00012\u000e\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u0090\u00012\u000e\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u0090\u0001H\u0086@\u00a2\u0006\u0003\u0010\u0094\u0001R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0018\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010\"\u001a\u0004\u0018\u00010#8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010+\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u001bR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010-\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0018\u001a\u0004\u0008.\u0010\u0016R\u0017\u00100\u001a\u00020\u00108F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0012R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u001b\"\u0004\u00084\u00105R+\u00106\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00088\u0010*\u001a\u0004\u00086\u0010\u001b\"\u0004\u00087\u00105R\u000e\u00109\u001a\u00020:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R1\u0010=\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00108B@BX\u0082\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008A\u0010*\u001a\u0004\u0008>\u0010\u0012\"\u0004\u0008?\u0010@R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010B\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010*\u001a\u0004\u0008C\u0010\u001b\"\u0004\u0008D\u00105R1\u0010F\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00108B@BX\u0082\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008I\u0010*\u001a\u0004\u0008G\u0010\u0012\"\u0004\u0008H\u0010@R\u001b\u0010J\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010\u0018\u001a\u0004\u0008K\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010M\u001a\u0004\u0018\u00010N8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010PR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010T\u001a\u00020S2\u0006\u0010\"\u001a\u00020S8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Y\u0010*\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010X\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textLayoutState",
        "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "enabled",
        "",
        "readOnly",
        "isFocused",
        "(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZ)V",
        "clipboardManager",
        "Landroidx/compose/ui/platform/ClipboardManager;",
        "currentContentVisibleOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "getCurrentContentVisibleOffset-F1C5BW0",
        "()J",
        "cursorHandle",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;",
        "getCursorHandle",
        "()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;",
        "cursorHandle$delegate",
        "Landroidx/compose/runtime/State;",
        "cursorHandleInBounds",
        "getCursorHandleInBounds",
        "()Z",
        "cursorHandleInBounds$delegate",
        "cursorRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "getCursorRect",
        "()Landroidx/compose/ui/geometry/Rect;",
        "cursorRect$delegate",
        "<set-?>",
        "Landroidx/compose/foundation/text/Handle;",
        "draggingHandle",
        "getDraggingHandle",
        "()Landroidx/compose/foundation/text/Handle;",
        "setDraggingHandle",
        "(Landroidx/compose/foundation/text/Handle;)V",
        "draggingHandle$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "editable",
        "getEditable",
        "endSelectionHandle",
        "getEndSelectionHandle",
        "endSelectionHandle$delegate",
        "handleDragPosition",
        "getHandleDragPosition-F1C5BW0",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "setFocused",
        "(Z)V",
        "isInTouchMode",
        "setInTouchMode",
        "isInTouchMode$delegate",
        "previousRawDragOffset",
        "",
        "previousSelectionLayout",
        "Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "rawHandleDragPosition",
        "getRawHandleDragPosition-F1C5BW0",
        "setRawHandleDragPosition-k-4lQ0M",
        "(J)V",
        "rawHandleDragPosition$delegate",
        "showCursorHandle",
        "getShowCursorHandle",
        "setShowCursorHandle",
        "showCursorHandle$delegate",
        "startContentVisibleOffset",
        "getStartContentVisibleOffset-F1C5BW0",
        "setStartContentVisibleOffset-k-4lQ0M",
        "startContentVisibleOffset$delegate",
        "startSelectionHandle",
        "getStartSelectionHandle",
        "startSelectionHandle$delegate",
        "textLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getTextLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "textToolbar",
        "Landroidx/compose/ui/platform/TextToolbar;",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;",
        "textToolbarState",
        "getTextToolbarState",
        "()Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;",
        "setTextToolbarState",
        "(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V",
        "textToolbarState$delegate",
        "clearHandleDragging",
        "",
        "copy",
        "cancelSelection",
        "cut",
        "deselect",
        "dispose",
        "getContentRect",
        "getHandlePosition",
        "isStartHandle",
        "getHandlePosition-tuRUvjQ",
        "(Z)J",
        "getSelectionHandleState",
        "getTextFieldSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "rawStartOffset",
        "rawEndOffset",
        "previousSelection",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "getTextFieldSelection-qeG_v_k",
        "(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J",
        "hideTextToolbar",
        "markStartContentVisibleOffset",
        "observeChanges",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "observeTextChanges",
        "observeTextToolbarVisibility",
        "paste",
        "showTextToolbar",
        "contentRect",
        "update",
        "updateHandleDragging",
        "handle",
        "position",
        "updateHandleDragging-Uv8p0NA",
        "(Landroidx/compose/foundation/text/Handle;J)V",
        "updateSelection",
        "textFieldCharSequence",
        "Landroidx/compose/foundation/text2/input/TextFieldCharSequence;",
        "startOffset",
        "endOffset",
        "allowPreviousSelectionCollapsed",
        "updateSelection-QNhciaU",
        "(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J",
        "updateTextToolbarState",
        "cursorHandleGestures",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectCursorHandleDragGestures",
        "detectSelectionHandleDragGestures",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectTextFieldLongPressAndAfterDrag",
        "requestFocus",
        "Lkotlin/Function0;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectTextFieldTapGestures",
        "showKeyboard",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "detectTouchMode",
        "selectionHandleGestures",
        "textFieldGestures",
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
.field private clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

.field private final cursorHandle$delegate:Landroidx/compose/runtime/State;

.field private final cursorHandleInBounds$delegate:Landroidx/compose/runtime/State;

.field private final cursorRect$delegate:Landroidx/compose/runtime/State;

.field private density:Landroidx/compose/ui/unit/Density;

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private enabled:Z

.field private final endSelectionHandle$delegate:Landroidx/compose/runtime/State;

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field private isFocused:Z

.field private final isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

.field private previousRawDragOffset:I

.field private previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field private final rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private readOnly:Z

.field private final showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final startContentVisibleOffset$delegate:Landroidx/compose/runtime/MutableState;

.field private final startSelectionHandle$delegate:Landroidx/compose/runtime/State;

.field private final textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field private final textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;

.field private final textToolbarState$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZ)V
    .locals 5
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;
    .param p4, "enabled"    # Z
    .param p5, "readOnly"    # Z
    .param p6, "isFocused"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 75
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 76
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    .line 77
    iput-boolean p4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->enabled:Z

    .line 78
    iput-boolean p5, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    .line 79
    iput-boolean p6, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    .line 110
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->startContentVisibleOffset$delegate:Landroidx/compose/runtime/MutableState;

    .line 132
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 164
    invoke-static {v1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 175
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 206
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandle$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandle$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorHandle$delegate:Landroidx/compose/runtime/State;

    .line 239
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleInBounds$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorHandleInBounds$delegate:Landroidx/compose/runtime/State;

    .line 254
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorRect$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorRect$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorRect$delegate:Landroidx/compose/runtime/State;

    .line 285
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$startSelectionHandle$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$startSelectionHandle$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->startSelectionHandle$delegate:Landroidx/compose/runtime/State;

    .line 289
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$endSelectionHandle$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$endSelectionHandle$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->endSelectionHandle$delegate:Landroidx/compose/runtime/State;

    .line 73
    return-void
.end method

.method public static final synthetic access$clearHandleDragging(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    return-void
.end method

.method public static final synthetic access$detectCursorHandleDragGestures(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    return-void
.end method

.method public static final synthetic access$detectSelectionHandleDragGestures(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "isStartHandle"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectSelectionHandleDragGestures$onDragStop$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .param p0, "dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p2, "dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 72
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method

.method public static final synthetic access$detectTextFieldLongPressAndAfterDrag(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectTextFieldLongPressAndAfterDrag(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectTextFieldLongPressAndAfterDrag$onDragStop$1(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .param p0, "dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p2, "dragBeginOffsetInText"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p3, "dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 72
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectTextFieldLongPressAndAfterDrag$onDragStop$1(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method

.method public static final synthetic access$detectTextFieldTapGestures(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "showKeyboard"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectTextFieldTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectTouchMode(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectTouchMode(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContentRect(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCursorHandleInBounds(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorHandleInBounds()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDensity$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public static final synthetic access$getEditable(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getEditable()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHandlePosition-tuRUvjQ(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Z)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "isStartHandle"    # Z

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getHapticFeedBack$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object v0
.end method

.method public static final synthetic access$getSelectionHandleState(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Z)Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "isStartHandle"    # Z

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getSelectionHandleState(Z)Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getShowCursorHandle(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getShowCursorHandle()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public static final synthetic access$getTextLayoutCoordinates(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTextLayoutState$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    return-object v0
.end method

.method public static final synthetic access$getTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hideTextToolbar(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    return-void
.end method

.method public static final synthetic access$markStartContentVisibleOffset(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 72
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->markStartContentVisibleOffset()V

    return-void
.end method

.method public static final synthetic access$observeTextChanges(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->observeTextChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$observeTextToolbarVisibility(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->observeTextToolbarVisibility(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setInTouchMode(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # Z

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setInTouchMode(Z)V

    return-void
.end method

.method public static final synthetic access$setPreviousRawDragOffset$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # I

    .line 72
    iput p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    return-void
.end method

.method public static final synthetic access$setShowCursorHandle(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # Z

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    return-void
.end method

.method public static final synthetic access$setTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V

    return-void
.end method

.method public static final synthetic access$showTextToolbar(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "contentRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 72
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->showTextToolbar(Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method

.method public static final synthetic access$updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "handle"    # Landroidx/compose/foundation/text/Handle;
    .param p2, "position"    # J

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V

    return-void
.end method

.method public static final synthetic access$updateSelection-QNhciaU(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p1, "textFieldCharSequence"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "startOffset"    # I
    .param p3, "endOffset"    # I
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .param p6, "allowPreviousSelectionCollapsed"    # Z

    .line 72
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->updateSelection-QNhciaU(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private final clearHandleDragging()V
    .locals 2

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 1004
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setRawHandleDragPosition-k-4lQ0M(J)V

    .line 1005
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setStartContentVisibleOffset-k-4lQ0M(J)V

    .line 1006
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;ZILjava/lang/Object;)V
    .locals 0

    .line 1036
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->copy(Z)V

    return-void
.end method

.method private final detectCursorHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    iget v1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v6, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->result:Ljava/lang/Object;

    .local v6, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 483
    iget v0, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$LongRef;

    .local p1, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .local v0, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v1, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :try_start_0
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 529
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 483
    .end local v0    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local p1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    :pswitch_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .local v8, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    move-object v0, p1

    .line 484
    .local v0, "$this$detectCursorHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    new-instance p1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local p1, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    iput-wide v1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 485
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v9, v1

    .local v9, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    iput-wide v1, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 497
    nop

    .line 498
    :try_start_1
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$2;

    invoke-direct {v1, p1, v8, v9}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$3;

    invoke-direct {v2, p1, v9, v8}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$3;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v3, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$4;

    invoke-direct {v3, p1, v9, v8}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$4;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$5;

    invoke-direct {v4, v9, v8, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$5;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v8, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v9, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectCursorHandleDragGestures$1;->label:I

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "$this$detectCursorHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    if-ne v1, v7, :cond_1

    .line 483
    return-object v7

    .line 498
    :cond_1
    move-object v0, p1

    move-object v1, v8

    move-object p1, v9

    .line 529
    .end local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local v0, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .local p1, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_1
    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    .line 530
    .end local v0    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local p1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    nop

    .line 531
    .restart local v0    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local p1    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 529
    .end local v0    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .local p1, "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_1
    move-exception v2

    move-object v0, p1

    move-object v1, v8

    move-object p1, v9

    .end local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local v9    # "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v0    # "cursorDragStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .local p1, "cursorDragDelta":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_2
    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final detectCursorHandleDragGestures$onDragStop(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V
    .locals 2
    .param p0, "cursorDragStart"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "cursorDragDelta"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 489
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 491
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 492
    invoke-direct {p2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    .line 494
    :cond_0
    return-void
.end method

.method private final detectSelectionHandleDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    iget v2, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v9, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 721
    iget v3, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$3:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/text/Handle;

    .local v3, "handle":Landroidx/compose/foundation/text/Handle;
    iget-object v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    .local v4, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .local v5, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .local v6, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :try_start_0
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 791
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 721
    .end local v3    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v4    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :pswitch_1
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .local v8, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    move/from16 v4, p2

    .local v4, "isStartHandle":Z
    move-object/from16 v3, p1

    .line 724
    .local v3, "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v7, v5

    .local v7, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v5

    iput-wide v5, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 725
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v6, v5

    .local v6, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v10

    iput-wide v10, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 726
    if-eqz v4, :cond_1

    sget-object v5, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_1

    :cond_1
    sget-object v5, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 739
    .local v5, "handle":Landroidx/compose/foundation/text/Handle;
    :goto_1
    nop

    .line 740
    :try_start_1
    new-instance v16, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$2;

    const/16 v17, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_2

    move v13, v15

    goto :goto_2

    .end local v3    # "$this$detectSelectionHandleDragGestures":Landroidx/compose/ui/input/pointer/PointerInputScope;
    :cond_2
    move/from16 v13, v17

    :goto_2
    move-object/from16 v10, v16

    move-object v11, v7

    move-object v12, v8

    move-object v14, v5

    move v2, v15

    move-object v15, v6

    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;ZLandroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v16, Lkotlin/jvm/functions/Function1;

    new-instance v10, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$3;

    invoke-direct {v10, v7, v8, v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$3;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object/from16 v18, v10

    check-cast v18, Lkotlin/jvm/functions/Function0;

    new-instance v10, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$4;

    invoke-direct {v10, v7, v8, v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$4;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object/from16 v19, v10

    check-cast v19, Lkotlin/jvm/functions/Function0;

    new-instance v20, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$5;

    if-eqz v4, :cond_3

    move v15, v2

    goto :goto_3

    .end local v4    # "isStartHandle":Z
    :cond_3
    move/from16 v15, v17

    :goto_3
    move-object/from16 v10, v20

    move-object v11, v6

    move-object v12, v8

    move-object v13, v5

    move-object v14, v7

    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$5;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;Lkotlin/jvm/internal/Ref$LongRef;Z)V

    move-object/from16 v10, v20

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v8, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->L$3:Ljava/lang/Object;

    iput v2, v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v4, v16

    move-object v2, v5

    .end local v5    # "handle":Landroidx/compose/foundation/text/Handle;
    .local v2, "handle":Landroidx/compose/foundation/text/Handle;
    move-object/from16 v5, v18

    move-object v11, v6

    .end local v6    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .local v11, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 v6, v19

    move-object v12, v7

    .end local v7    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v12, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v7, v10

    move-object v10, v8

    .end local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .local v10, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    move-object v8, v1

    :try_start_2
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v0, :cond_4

    .line 721
    return-object v0

    .line 740
    :cond_4
    move-object v3, v2

    move-object v6, v10

    move-object v4, v11

    move-object v5, v12

    .line 791
    .end local v2    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v10    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local v11    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v12    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v3, "handle":Landroidx/compose/foundation/text/Handle;
    .local v4, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .local v5, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v6, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :goto_4
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$6;

    invoke-direct {v0, v6, v3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$6;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionStateKt;->access$logDebug(Lkotlin/jvm/functions/Function0;)V

    .line 795
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-ne v0, v3, :cond_5

    .line 796
    .end local v3    # "handle":Landroidx/compose/foundation/text/Handle;
    invoke-static {v5, v6, v4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 798
    .end local v4    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :cond_5
    nop

    .line 799
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 791
    .restart local v2    # "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v10    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v11    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v12    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v6, v10

    move-object v4, v11

    move-object v5, v12

    goto :goto_5

    .end local v2    # "handle":Landroidx/compose/foundation/text/Handle;
    .end local v10    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .end local v11    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v12    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v5, "handle":Landroidx/compose/foundation/text/Handle;
    .local v6, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :catchall_2
    move-exception v0

    move-object v2, v5

    move-object v11, v6

    move-object v12, v7

    move-object v10, v8

    move-object v3, v2

    move-object v6, v10

    move-object v4, v11

    move-object v5, v12

    .end local v7    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v8    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v3    # "handle":Landroidx/compose/foundation/text/Handle;
    .restart local v4    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .local v5, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .local v6, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :goto_5
    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$6;

    invoke-direct {v2, v6, v3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectSelectionHandleDragGestures$6;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionStateKt;->access$logDebug(Lkotlin/jvm/functions/Function0;)V

    .line 795
    invoke-virtual {v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v2

    if-ne v2, v3, :cond_6

    .line 796
    .end local v3    # "handle":Landroidx/compose/foundation/text/Handle;
    invoke-static {v5, v6, v4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->detectSelectionHandleDragGestures$onDragStop$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V

    .end local v4    # "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v6    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :cond_6
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final detectSelectionHandleDragGestures$onDragStop$2(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 2
    .param p0, "dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p2, "dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 730
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    .line 732
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 733
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 734
    const/4 v0, -0x1

    iput v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 736
    :cond_0
    return-void
.end method

.method private final detectTextFieldLongPressAndAfterDrag(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .param p1, "$this$detectTextFieldLongPressAndAfterDrag"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 536
    move-object v7, p0

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v8, v0

    .local v8, "dragBeginOffsetInText":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v0, -0x1

    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 537
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v9, v0

    .local v9, "dragBeginPosition":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 538
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v10, v0

    .local v10, "dragTotalDistance":Lkotlin/jvm/internal/Ref$LongRef;
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 539
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v0

    .local v11, "actingHandle":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 553
    new-instance v12, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$2;

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, p0

    move-object v3, v11

    move-object v4, v9

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object v6, v12

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$3;

    invoke-direct {v0, v9, p0, v8, v10}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$3;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$4;

    invoke-direct {v0, v9, p0, v8, v10}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$4;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function0;

    new-instance v14, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$5;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v10

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldLongPressAndAfterDrag$5;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v4, v14

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGesturesAfterLongPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 719
    return-object v0
.end method

.method private static final detectTextFieldLongPressAndAfterDrag$onDragStop$1(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 3
    .param p0, "dragBeginPosition"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "this$0"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p2, "dragBeginOffsetInText"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p3, "dragTotalDistance"    # Lkotlin/jvm/internal/Ref$LongRef;

    .line 543
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clearHandleDragging()V

    .line 545
    const/4 v0, -0x1

    iput v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 546
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    iput-wide v1, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 547
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    iput-wide v1, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 548
    iput v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 550
    :cond_0
    return-void
.end method

.method private final detectTextFieldTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$detectTextFieldTapGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "showKeyboard"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 435
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldTapGestures$2;

    invoke-direct {v0, p2, p0, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldTapGestures$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldTapGestures$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTextFieldTapGestures$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;

    invoke-static {p1, v0, v1, p4}, Landroidx/compose/foundation/text2/input/internal/selection/TapAndDoubleTapGestureKt;->detectTapAndDoubleTap(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Landroidx/compose/foundation/text2/input/internal/selection/TapOnPosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 481
    return-object v0
.end method

.method private final detectTouchMode(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$detectTouchMode"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 423
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTouchMode$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$detectTouchMode$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 429
    return-object v0
.end method

.method private final getContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 12

    .line 881
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 885
    .local v0, "text":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    .line 887
    .local v1, "topLeft":J
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    return-object v3

    .line 890
    .end local v1    # "topLeft":J
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    .line 889
    :goto_1
    nop

    .line 892
    .local v1, "startOffset":J
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v3

    goto :goto_2

    :cond_3
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    .line 891
    :goto_2
    nop

    .line 894
    .local v3, "endOffset":J
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 896
    nop

    .line 897
    iget-object v7, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v7}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 898
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v8

    .line 897
    invoke-virtual {v7, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    .line 899
    if-eqz v7, :cond_4

    .line 897
    nop

    .line 899
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    .line 897
    goto :goto_3

    .line 899
    :cond_4
    move v7, v6

    .line 895
    :goto_3
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    .line 894
    invoke-interface {v5, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v7

    .line 901
    nop

    .line 894
    nop

    .line 901
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    .line 894
    goto :goto_4

    .line 901
    :cond_5
    move v5, v6

    .line 894
    :goto_4
    nop

    .line 893
    nop

    .line 903
    .local v5, "startTop":F
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 905
    nop

    .line 906
    iget-object v8, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 907
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v9

    .line 906
    invoke-virtual {v8, v9}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    .line 908
    if-eqz v8, :cond_6

    .line 906
    nop

    .line 908
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v8

    .line 906
    goto :goto_5

    .line 908
    :cond_6
    move v8, v6

    .line 904
    :goto_5
    invoke-static {v6, v8}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v8

    .line 903
    invoke-interface {v7, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v6

    .line 910
    nop

    .line 903
    nop

    .line 910
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    .line 903
    goto :goto_6

    .line 910
    :cond_7
    nop

    .line 903
    :goto_6
    nop

    .line 902
    nop

    .line 913
    .local v6, "endTop":F
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 914
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 915
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 916
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 912
    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    .line 913
    nop

    .line 915
    nop

    .line 914
    nop

    .line 916
    nop

    .line 912
    invoke-direct {v11, v7, v9, v8, v10}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v11
.end method

.method private final getCurrentContentVisibleOffset-F1C5BW0()J
    .locals 2

    .line 116
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 116
    nop

    .line 117
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 117
    nop

    .line 118
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v0

    .line 116
    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getCursorHandleInBounds()Z
    .locals 3

    .line 239
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorHandleInBounds$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1256
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 239
    return v0
.end method

.method private final getEditable()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getHandlePosition-tuRUvjQ(Z)J
    .locals 6
    .param p1, "isStartHandle"    # Z

    .line 958
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 959
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    .line 960
    .local v1, "selection":J
    if-eqz p1, :cond_1

    .line 961
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    goto :goto_0

    .line 963
    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    .line 960
    :goto_0
    nop

    .line 966
    .local v3, "offset":I
    nop

    .line 967
    nop

    .line 968
    nop

    .line 969
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v4

    .line 965
    invoke-static {v0, v3, p1, v4}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->getSelectionHandleCoordinates(Landroidx/compose/ui/text/TextLayoutResult;IZZ)J

    move-result-wide v4

    return-wide v4
.end method

.method private final getRawHandleDragPosition-F1C5BW0()J
    .locals 3

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1242
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 132
    return-wide v0
.end method

.method private final getSelectionHandleState(Z)Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    .locals 19
    .param p1, "isStartHandle"    # Z

    .line 921
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 923
    .local v1, "handle":Landroidx/compose/foundation/text/Handle;
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v2

    return-object v2

    .line 925
    .local v2, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_1
    iget-object v3, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v3

    .line 927
    .local v3, "selection":J
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v5

    return-object v5

    .line 929
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getHandlePosition-tuRUvjQ(Z)J

    move-result-wide v5

    .line 931
    .local v5, "position":J
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v1, :cond_5

    .line 932
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    .line 933
    if-eqz v7, :cond_3

    .line 932
    nop

    .line 933
    invoke-static {v7}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    .line 934
    if-eqz v7, :cond_3

    .line 933
    nop

    .line 934
    invoke-static {v7, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v7

    .line 932
    goto :goto_1

    .line 935
    :cond_3
    move v7, v9

    :goto_1
    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v8

    .line 931
    :goto_3
    nop

    .line 937
    .local v7, "visible":Z
    if-nez v7, :cond_6

    sget-object v8, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;->Companion:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState$Companion;->getHidden()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    move-result-object v8

    return-object v8

    .line 939
    :cond_6
    if-eqz p1, :cond_7

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v8

    goto :goto_4

    :cond_7
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v10

    sub-int/2addr v10, v8

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 940
    .local v8, "directionOffset":I
    :goto_4
    invoke-virtual {v2, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v16

    .line 941
    .local v16, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v17

    .line 947
    .local v17, "handlesCrossed":Z
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {v9}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 1254
    .local v9, "it":Landroidx/compose/ui/geometry/Rect;
    const/4 v10, 0x0

    .line 947
    .local v10, "$i$a$-let-TextFieldSelectionState$getSelectionHandleState$coercedPosition$1":I
    invoke-static {v5, v6, v9}, Landroidx/compose/foundation/text2/input/internal/TextLayoutStateKt;->coerceIn-3MmeM6k(JLandroidx/compose/ui/geometry/Rect;)J

    move-result-wide v9

    move-wide v11, v9

    .end local v9    # "it":Landroidx/compose/ui/geometry/Rect;
    .end local v10    # "$i$a$-let-TextFieldSelectionState$getSelectionHandleState$coercedPosition$1":I
    goto :goto_5

    .line 948
    :cond_8
    move-wide v11, v5

    .line 947
    :goto_5
    nop

    .line 949
    .local v11, "coercedPosition":J
    new-instance v18, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    .line 950
    const/4 v10, 0x1

    .line 951
    nop

    .line 952
    nop

    .line 953
    const/4 v15, 0x0

    .line 949
    move-object/from16 v9, v18

    move-object/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v9 .. v15}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;-><init>(ZJLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method

.method private final getShowCursorHandle()Z
    .locals 3

    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1248
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    return v0
.end method

.method private final getStartContentVisibleOffset-F1C5BW0()J
    .locals 3

    .line 110
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->startContentVisibleOffset$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1239
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 110
    return-wide v0
.end method

.method private final getTextFieldSelection-qeG_v_k(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J
    .locals 9
    .param p1, "rawStartOffset"    # I
    .param p2, "rawEndOffset"    # I
    .param p3, "previousSelection"    # Landroidx/compose/ui/text/TextRange;
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 1178
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v0

    return-wide v0

    .line 1182
    .local v1, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacter()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    return-wide v2

    .line 1187
    :cond_1
    nop

    .line 1188
    nop

    .line 1189
    nop

    .line 1190
    iget v4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1191
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    .line 1192
    if-nez p3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v7, v0

    .line 1193
    nop

    .line 1186
    move v2, p1

    move v3, p2

    move v8, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->getTextFieldSelectionLayout-RcvT-LA(Landroidx/compose/ui/text/TextLayoutResult;IIIJZZ)Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object v0

    .line 1196
    .local v0, "selectionLayout":Landroidx/compose/foundation/text/selection/SelectionLayout;
    if-eqz p3, :cond_4

    .line 1197
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    invoke-interface {v0, v2}, Landroidx/compose/foundation/text/selection/SelectionLayout;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1199
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    return-wide v2

    .line 1202
    :cond_4
    invoke-interface {p5, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->adjust(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->toTextRange-d9O1mEE()J

    move-result-wide v2

    .line 1203
    .local v2, "result":J
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 1204
    if-eqz p4, :cond_5

    move v4, p1

    goto :goto_2

    :cond_5
    move v4, p2

    :goto_2
    iput v4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->previousRawDragOffset:I

    .line 1206
    return-wide v2
.end method

.method private final getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4

    .line 181
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1254
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 181
    .local v3, "$i$a$-takeIf-TextFieldSelectionState$textLayoutCoordinates$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-TextFieldSelectionState$textLayoutCoordinates$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private final getTextToolbarState()Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;
    .locals 3

    .line 175
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1251
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    .line 175
    return-object v0
.end method

.method private final hideTextToolbar()V
    .locals 2

    .line 1122
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v1, :cond_1

    .line 1123
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 1125
    :cond_1
    return-void
.end method

.method private final markStartContentVisibleOffset()V
    .locals 2

    .line 994
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_0

    .line 994
    nop

    .line 995
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 996
    if-eqz v0, :cond_0

    .line 995
    nop

    .line 996
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v0

    .line 994
    goto :goto_0

    .line 996
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    .line 994
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setStartContentVisibleOffset-k-4lQ0M(J)V

    .line 997
    return-void
.end method

.method private final observeTextChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 802
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 803
    sget-object v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$3;->INSTANCE:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$3;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 805
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 806
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextChanges$4;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 811
    return-object v0
.end method

.method private final observeTextToolbarVisibility(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 828
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 866
    new-instance v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeTextToolbarVisibility$3;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 873
    return-object v0
.end method

.method private final setInTouchMode(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 99
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1237
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1238
    nop

    .line 99
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setRawHandleDragPosition-k-4lQ0M(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->rawHandleDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1243
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1244
    nop

    .line 132
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setShowCursorHandle(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1249
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1250
    nop

    .line 169
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setStartContentVisibleOffset-k-4lQ0M(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 110
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->startContentVisibleOffset$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1240
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1241
    nop

    .line 110
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    .line 175
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbarState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1252
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1253
    nop

    .line 175
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final showTextToolbar(Landroidx/compose/ui/geometry/Rect;)V
    .locals 10
    .param p1, "contentRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 1073
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    .line 1075
    .local v0, "selection":J
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getEditable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/platform/ClipboardManager;->hasText()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v4, v5

    :cond_0
    if-eqz v4, :cond_1

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$paste$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$paste$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v7, v2

    goto :goto_0

    .line 1080
    :cond_1
    move-object v7, v3

    .line 1075
    :goto_0
    nop

    .line 1082
    .local v7, "paste":Lkotlin/jvm/functions/Function0;
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$copy$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$copy$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v6, v2

    goto :goto_1

    .line 1087
    :cond_2
    move-object v6, v3

    .line 1082
    :goto_1
    nop

    .line 1089
    .local v6, "copy":Lkotlin/jvm/functions/Function0;
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getEditable()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$cut$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$cut$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v8, v2

    goto :goto_2

    .line 1094
    :cond_3
    move-object v8, v3

    .line 1089
    :goto_2
    nop

    .line 1096
    .local v8, "cut":Lkotlin/jvm/functions/Function0;
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v2

    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->length()I

    move-result v4

    if-eq v2, v4, :cond_4

    new-instance v2, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$selectAll$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$showTextToolbar$selectAll$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v9, v3

    goto :goto_3

    .line 1101
    :cond_4
    move-object v9, v3

    .line 1096
    :goto_3
    nop

    .line 1103
    .local v9, "selectAll":Lkotlin/jvm/functions/Function0;
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-eqz v4, :cond_5

    .line 1104
    nop

    .line 1105
    nop

    .line 1106
    nop

    .line 1107
    nop

    .line 1108
    nop

    .line 1103
    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Landroidx/compose/ui/platform/TextToolbar;->showMenu(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 1110
    :cond_5
    return-void
.end method

.method private final updateHandleDragging-Uv8p0NA(Landroidx/compose/foundation/text/Handle;J)V
    .locals 0
    .param p1, "handle"    # Landroidx/compose/foundation/text/Handle;
    .param p2, "position"    # J

    .line 984
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 985
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setRawHandleDragPosition-k-4lQ0M(J)V

    .line 986
    return-void
.end method

.method private final updateSelection-QNhciaU(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J
    .locals 12
    .param p1, "textFieldCharSequence"    # Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    .param p2, "startOffset"    # I
    .param p3, "endOffset"    # I
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .param p6, "allowPreviousSelectionCollapsed"    # Z

    .line 1148
    nop

    .line 1149
    nop

    .line 1150
    nop

    .line 1151
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    .line 1254
    nop

    .local v1, "it":J
    const/4 v3, 0x0

    .line 1152
    .local v3, "$i$a$-takeIf-TextFieldSelectionState$updateSelection$newSelection$1":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p6, :cond_1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    .end local v1    # "it":J
    .end local v3    # "$i$a$-takeIf-TextFieldSelectionState$updateSelection$newSelection$1":I
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v9, v0

    .line 1153
    nop

    .line 1154
    nop

    .line 1148
    move-object v6, p0

    move v7, p2

    move v8, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextFieldSelection-qeG_v_k(IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J

    move-result-wide v0

    .line 1157
    .local v0, "newSelection":J
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    return-wide v0

    .line 1160
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v2

    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1161
    move-wide v2, v0

    .line 1254
    .local v2, "$this$updateSelection_QNhciaU_u24lambda_u245":J
    const/4 v6, 0x0

    .line 1161
    .local v6, "$i$a$-run-TextFieldSelectionState$updateSelection$onlyChangeIsReversed$1":I
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v7

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    .end local v2    # "$this$updateSelection_QNhciaU_u24lambda_u245":J
    .end local v6    # "$i$a$-run-TextFieldSelectionState$updateSelection$onlyChangeIsReversed$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    nop

    .line 1159
    :goto_3
    move v2, v4

    .line 1164
    .local v2, "onlyChangeIsReversed":Z
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 1165
    move-object v3, p0

    iget-object v4, v3, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v4, :cond_6

    sget-object v5, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    goto :goto_4

    .line 1164
    :cond_5
    move-object v3, p0

    .line 1168
    :cond_6
    :goto_4
    return-wide v0
.end method

.method static synthetic updateSelection-QNhciaU$default(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;ZILjava/lang/Object;)J
    .locals 7

    .line 1140
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 1146
    const/4 p6, 0x0

    move v6, p6

    goto :goto_0

    .line 1140
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->updateSelection-QNhciaU(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final copy(Z)V
    .locals 9
    .param p1, "cancelSelection"    # Z

    .line 1037
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 1038
    .local v0, "text":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1040
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    if-eqz v1, :cond_1

    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->getSelectedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v8}, Landroidx/compose/ui/platform/ClipboardManager;->setText(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1042
    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 1044
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->collapseSelectionToMax()V

    .line 1045
    return-void
.end method

.method public final cursorHandleGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$cursorHandleGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 316
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleGestures$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$cursorHandleGestures$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 333
    return-object v0
.end method

.method public final cut()V
    .locals 9

    .line 1018
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 1019
    .local v0, "text":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    if-eqz v1, :cond_1

    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->getSelectedText(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v8}, Landroidx/compose/ui/platform/ClipboardManager;->setText(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 1023
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->deleteSelectedText()V

    .line 1024
    return-void
.end method

.method public final deselect()V
    .locals 2

    .line 1113
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->collapseSelectionToEnd()V

    .line 1117
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 1118
    sget-object v0, Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->updateTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V

    .line 1119
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 410
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 413
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 414
    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 415
    return-void
.end method

.method public final getCursorHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    .locals 3

    .line 206
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorHandle$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1255
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    .line 206
    return-object v0
.end method

.method public final getCursorRect()Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 254
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->cursorRect$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1257
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 254
    return-object v0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 3

    .line 164
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1245
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 164
    return-object v0
.end method

.method public final getEndSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    .locals 3

    .line 289
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->endSelectionHandle$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1259
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    .line 289
    return-object v0
.end method

.method public final getHandleDragPosition-F1C5BW0()J
    .locals 4

    .line 144
    nop

    .line 146
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getStartContentVisibleOffset-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isUnspecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutStateKt;->fromDecorationToTextLayout-Uv8p0NA(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;J)J

    move-result-wide v0

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getRawHandleDragPosition-F1C5BW0()J

    move-result-wide v0

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCurrentContentVisibleOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getStartContentVisibleOffset-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 159
    :goto_0
    return-wide v0
.end method

.method public final getStartSelectionHandle()Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;
    .locals 3

    .line 285
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->startSelectionHandle$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1258
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldHandleState;

    .line 285
    return-object v0
.end method

.method public final isFocused()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    return v0
.end method

.method public final isInTouchMode()Z
    .locals 3

    .line 99
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isInTouchMode$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1236
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 99
    return v0
.end method

.method public final observeChanges(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;

    iget v1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 391
    iget v2, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .local v1, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 391
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 392
    .local v2, "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    nop

    .line 393
    :try_start_1
    new-instance v4, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v2, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p1, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$observeChanges$1;->label:I

    invoke-static {v4, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v1, :cond_1

    .line 391
    return-object v1

    .line 393
    :cond_1
    move-object v1, v2

    .line 398
    .end local v2    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :goto_1
    invoke-direct {v1, v3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 399
    invoke-direct {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    if-eq v2, v3, :cond_2

    .line 400
    invoke-direct {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 402
    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :cond_2
    nop

    .line 403
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 398
    .restart local v2    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :catchall_1
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .end local v2    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .restart local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :goto_2
    invoke-direct {v1, v3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setShowCursorHandle(Z)V

    .line 399
    invoke-direct {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getTextToolbarState()Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;->None:Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    if-eq v3, v4, :cond_3

    .line 400
    invoke-direct {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .end local v1    # "this":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    :cond_3
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final paste()V
    .locals 7

    .line 1057
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/platform/ClipboardManager;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1059
    .local v0, "clipboardText":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 1060
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 1059
    const/4 v3, 0x0

    .line 1061
    sget-object v4, Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;->NeverMerge:Landroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1059
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text2/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    .line 1063
    return-void

    .line 1057
    .end local v0    # "clipboardText":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public final selectionHandleGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$this$selectionHandleGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "isStartHandle"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 359
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$selectionHandleGestures$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$selectionHandleGestures$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 385
    return-object v0
.end method

.method public final setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 164
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 1246
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1247
    nop

    .line 164
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setFocused(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 79
    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->isFocused:Z

    return-void
.end method

.method public final textFieldGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$this$textFieldGestures"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "requestFocus"    # Lkotlin/jvm/functions/Function0;
    .param p3, "showKeyboard"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 342
    new-instance v6, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$textFieldGestures$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState$textFieldGestures$2;-><init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 353
    return-object v0
.end method

.method public final update(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/ui/platform/ClipboardManager;Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/unit/Density;ZZ)V
    .locals 0
    .param p1, "hapticFeedBack"    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .param p2, "clipboardManager"    # Landroidx/compose/ui/platform/ClipboardManager;
    .param p3, "textToolbar"    # Landroidx/compose/ui/platform/TextToolbar;
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .param p5, "enabled"    # Z
    .param p6, "readOnly"    # Z

    .line 301
    if-nez p5, :cond_0

    .line 302
    invoke-direct {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hideTextToolbar()V

    .line 304
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 305
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    .line 306
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 307
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->density:Landroidx/compose/ui/unit/Density;

    .line 308
    iput-boolean p5, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->enabled:Z

    .line 309
    iput-boolean p6, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->readOnly:Z

    .line 310
    return-void
.end method

.method public final updateTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V
    .locals 0
    .param p1, "textToolbarState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;

    .line 406
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->setTextToolbarState(Landroidx/compose/foundation/text2/input/internal/selection/TextToolbarState;)V

    .line 407
    return-void
.end method
