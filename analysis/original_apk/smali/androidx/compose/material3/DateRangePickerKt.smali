.class public final Landroidx/compose/material3/DateRangePickerKt;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateRangePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1099:1\n1116#2,6:1100\n1116#2,6:1106\n1116#2,6:1113\n1116#2,6:1159\n1116#2,6:1165\n58#3:1112\n74#4,6:1119\n80#4:1153\n84#4:1158\n78#5,11:1125\n91#5:1157\n456#6,8:1136\n464#6,3:1150\n467#6,3:1154\n3737#7,6:1144\n154#8:1171\n154#8:1172\n154#8:1173\n154#8:1174\n154#8:1175\n154#8:1176\n*S KotlinDebug\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerKt\n*L\n88#1:1100,6\n108#1:1106,6\n266#1:1113,6\n772#1:1159,6\n873#1:1165,6\n127#1:1112\n736#1:1119,6\n736#1:1153\n736#1:1158\n736#1:1125,11\n736#1:1157\n736#1:1136,8\n736#1:1150,3\n736#1:1154,3\n736#1:1144,6\n904#1:1171\n905#1:1172\n906#1:1173\n1091#1:1174\n1093#1:1175\n1098#1:1176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ak\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012\u00a2\u0006\u0002\u0008\u00132\u0015\u0008\u0002\u0010\u0014\u001a\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012\u00a2\u0006\u0002\u0008\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u00b0\u0001\u0010\u001a\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003\u00a2\u0006\u0002\u0010.\u001a`\u0010/\u001a\u00020\u000c2\n\u00100\u001a\u000601j\u0002`22\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109\u001a\u00bd\u0001\u0010:\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010;\u001a\u0002072:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a\u00b0\u0001\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020@2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\n0 2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020\n0&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003\u00a2\u0006\u0002\u0010A\u001a.\u0010B\u001a\u0008\u0012\u0004\u0012\u00020D0C2\u0006\u0010\u000b\u001a\u00020@2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020HH\u0002\u001aT\u0010J\u001a\u00020\u000c2\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010L\u001ae\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\u001c2\u0008\u0010O\u001a\u0004\u0018\u00010\u001c2\u0008\u0010P\u001a\u0004\u0018\u00010\u001c2:\u0010\u001f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\n0 H\u0002\u00a2\u0006\u0002\u0010Q\u001a&\u0010R\u001a\u00020\n*\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020WH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008X\u0010Y\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006Z"
    }
    d2 = {
        "CalendarMonthSubheadPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getCalendarMonthSubheadPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "DateRangePickerHeadlinePadding",
        "DateRangePickerTitlePadding",
        "HeaderHeightOffset",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DateRangePicker",
        "",
        "state",
        "Landroidx/compose/material3/DateRangePickerState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "dateFormatter",
        "Landroidx/compose/material3/DatePickerFormatter;",
        "title",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "headline",
        "showModeToggle",
        "",
        "colors",
        "Landroidx/compose/material3/DatePickerColors;",
        "(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V",
        "DateRangePickerContent",
        "selectedStartDateMillis",
        "",
        "selectedEndDateMillis",
        "displayedMonthMillis",
        "onDatesSelectionChange",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "startDateMillis",
        "endDateMillis",
        "onDisplayedMonthChange",
        "Lkotlin/Function1;",
        "monthInMillis",
        "calendarModel",
        "Landroidx/compose/material3/CalendarModel;",
        "yearRange",
        "Lkotlin/ranges/IntRange;",
        "selectableDates",
        "Landroidx/compose/material3/SelectableDates;",
        "(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V",
        "DateRangePickerState",
        "locale",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "initialSelectedStartDateMillis",
        "initialSelectedEndDateMillis",
        "initialDisplayedMonthMillis",
        "initialDisplayMode",
        "Landroidx/compose/material3/DisplayMode;",
        "DateRangePickerState-HVP43zI",
        "(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;",
        "SwitchableDateEntryContent",
        "displayMode",
        "SwitchableDateEntryContent-RN-2D1Q",
        "(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V",
        "VerticalMonthsList",
        "lazyListState",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V",
        "customScrollActions",
        "",
        "Landroidx/compose/ui/semantics/CustomAccessibilityAction;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scrollUpLabel",
        "",
        "scrollDownLabel",
        "rememberDateRangePickerState",
        "rememberDateRangePickerState-IlFM19s",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DateRangePickerState;",
        "updateDateSelection",
        "dateInMillis",
        "currentStartDateMillis",
        "currentEndDateMillis",
        "(JLjava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V",
        "drawRangeBackground",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "selectedRangeInfo",
        "Landroidx/compose/material3/SelectedRangeInfo;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "drawRangeBackground-mxwnekA",
        "(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/material3/SelectedRangeInfo;J)V",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CalendarMonthSubheadPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final DateRangePickerHeadlinePadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final DateRangePickerTitlePadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final HeaderHeightOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 903
    nop

    .line 904
    const/16 v0, 0x18

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1171
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 905
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/16 v0, 0x14

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1172
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 903
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v5, 0x0

    .line 906
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1173
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 903
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DateRangePickerKt;->CalendarMonthSubheadPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 1091
    const/16 v0, 0x40

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1174
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 1091
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v4, 0x0

    const/16 v0, 0xc

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1174
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 1091
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerTitlePadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 1093
    const/16 v0, 0x40

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1175
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 1093
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/16 v0, 0xc

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1175
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 1093
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/16 v0, 0xc

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1175
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 1093
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v7, 0x2

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerHeadlinePadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 1098
    const/16 v0, 0x3c

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1176
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1098
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/DateRangePickerKt;->HeaderHeightOffset:F

    return-void
.end method

.method public static final DateRangePicker(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "state"    # Landroidx/compose/material3/DateRangePickerState;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p3, "title"    # Lkotlin/jvm/functions/Function2;
    .param p4, "headline"    # Lkotlin/jvm/functions/Function2;
    .param p5, "showModeToggle"    # Z
    .param p6, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DateRangePickerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 106
    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move/from16 v11, p8

    const v1, 0x26cae3b6

    move-object/from16 v2, p7

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(DateRangePicker)P(5,3,1,6,2,4)87@4101L47,104@4858L8,106@4895L15,107@4935L62,123@5551L10,108@5002L1936:DateRangePicker.kt#uh7d8r"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_2

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v11, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, p9, 0x4

    if-nez v5, :cond_7

    and-int/lit16 v5, v11, 0x200

    if-nez v5, :cond_6

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_6
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_5

    :cond_7
    const/16 v5, 0x80

    :goto_5
    or-int/2addr v2, v5

    :cond_8
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v6, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v2, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v8, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v11, 0x6000

    if-nez v8, :cond_e

    move-object/from16 v8, p4

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v2, v12

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v12, p9, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_f

    or-int/2addr v2, v13

    move/from16 v13, p5

    goto :goto_b

    :cond_f
    and-int/2addr v13, v11

    if-nez v13, :cond_11

    move/from16 v13, p5

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v2, v14

    goto :goto_b

    :cond_11
    move/from16 v13, p5

    :goto_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v11

    if-nez v14, :cond_14

    and-int/lit8 v14, p9, 0x40

    if-nez v14, :cond_12

    move-object/from16 v14, p6

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v14, p6

    :cond_13
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v2, v15

    goto :goto_d

    :cond_14
    move-object/from16 v14, p6

    :goto_d
    const v15, 0x92493

    and-int/2addr v15, v2

    const v1, 0x92492

    if-ne v15, v1, :cond_16

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_e

    .line 157
    :cond_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v2

    move-object v12, v4

    move-object v15, v8

    move/from16 v16, v13

    move-object/from16 v17, v14

    move-object v13, v0

    move-object v14, v6

    goto/16 :goto_18

    .line 106
    :cond_16
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v11, 0x1

    const-string v15, "CC(remember):DateRangePicker.kt#9igjgp"

    if-eqz v1, :cond_1a

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_f

    .line 105
    :cond_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_18

    and-int/lit16 v2, v2, -0x381

    :cond_18
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_19

    const v1, -0x380001

    and-int/2addr v1, v2

    move-object/from16 v0, p2

    move v3, v1

    move v1, v13

    move-object v2, v14

    .end local v2    # "$dirty":I
    .local v1, "$dirty":I
    goto/16 :goto_14

    .end local v1    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_19
    move-object/from16 v0, p2

    move v3, v2

    move v1, v13

    move-object v2, v14

    goto/16 :goto_14

    .line 106
    :cond_1a
    :goto_f
    if-eqz v3, :cond_1b

    .line 87
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 106
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object v1, v4

    .line 87
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_1d

    .line 88
    const v3, -0x44dc9815

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    move-object v4, v9

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 1100
    .local v18, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1101
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 1102
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-cache-DateRangePickerKt$DateRangePicker$1":I
    sget-object v21, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x7

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Landroidx/compose/material3/DatePickerDefaults;->dateFormatter$default(Landroidx/compose/material3/DatePickerDefaults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/compose/material3/DatePickerFormatter;

    move-result-object v1

    .line 1102
    .end local v1    # "$i$a$-cache-DateRangePickerKt$DateRangePicker$1":I
    nop

    .line 1103
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1104
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_11

    .line 1105
    :cond_1c
    move-object v1, v0

    .line 1101
    :goto_11
    nop

    .line 1100
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 88
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/material3/DatePickerFormatter;

    .end local p2    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    .local v0, "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit16 v2, v2, -0x381

    goto :goto_12

    .line 87
    .end local v0    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    :cond_1d
    move-object/from16 p1, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v0, p2

    .line 88
    .end local p2    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    .restart local v0    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    :goto_12
    if-eqz v5, :cond_1e

    .line 89
    new-instance v1, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$2;

    invoke-direct {v1, v10}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$2;-><init>(Landroidx/compose/material3/DateRangePickerState;)V

    const v3, -0x9aa6fd6

    const/4 v4, 0x1

    invoke-static {v9, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    .end local p3    # "title":Lkotlin/jvm/functions/Function2;
    .local v1, "title":Lkotlin/jvm/functions/Function2;
    goto :goto_13

    .line 88
    .end local v1    # "title":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "title":Lkotlin/jvm/functions/Function2;
    :cond_1e
    const/4 v4, 0x1

    .line 89
    .end local p3    # "title":Lkotlin/jvm/functions/Function2;
    .local v6, "title":Lkotlin/jvm/functions/Function2;
    :goto_13
    if-eqz v7, :cond_1f

    .line 95
    new-instance v1, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$3;

    invoke-direct {v1, v10, v0}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$3;-><init>(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/DatePickerFormatter;)V

    const v3, -0xb0b23ac

    invoke-static {v9, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v8, v1

    .end local p4    # "headline":Lkotlin/jvm/functions/Function2;
    .local v8, "headline":Lkotlin/jvm/functions/Function2;
    :cond_1f
    if-eqz v12, :cond_20

    .line 104
    const/4 v1, 0x1

    move v13, v1

    .end local p5    # "showModeToggle":Z
    .local v13, "showModeToggle":Z
    :cond_20
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_21

    .line 105
    sget-object v1, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    const/4 v3, 0x6

    invoke-virtual {v1, v9, v3}, Landroidx/compose/material3/DatePickerDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/DatePickerColors;

    move-result-object v1

    const v3, -0x380001

    .end local p6    # "colors":Landroidx/compose/material3/DatePickerColors;
    .local v1, "colors":Landroidx/compose/material3/DatePickerColors;
    and-int/2addr v2, v3

    move-object/from16 v4, p1

    move v3, v2

    move-object v2, v1

    move v1, v13

    goto :goto_14

    .line 104
    .end local v1    # "colors":Landroidx/compose/material3/DatePickerColors;
    .restart local p6    # "colors":Landroidx/compose/material3/DatePickerColors;
    :cond_21
    move-object/from16 v4, p1

    move v3, v2

    move v1, v13

    move-object v2, v14

    .line 105
    .end local v13    # "showModeToggle":Z
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p6    # "colors":Landroidx/compose/material3/DatePickerColors;
    .local v1, "showModeToggle":Z
    .local v2, "colors":Landroidx/compose/material3/DatePickerColors;
    .local v3, "$dirty":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 106
    const/4 v5, -0x1

    const-string/jumbo v7, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:105)"

    const v12, 0x26cae3b6

    invoke-static {v12, v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_22
    nop

    .line 107
    const/4 v5, 0x0

    invoke-static {v9, v5}, Landroidx/compose/material3/ActualAndroid_androidKt;->defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;

    move-result-object v5

    .local v5, "defaultLocale":Ljava/util/Locale;
    const v7, -0x44dc94d3

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv":Z
    move-object v12, v9

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 1106
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1107
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_24

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v7

    .end local v7    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v14, v7, :cond_23

    goto :goto_15

    .line 1111
    :cond_23
    move-object v7, v14

    goto :goto_16

    .line 1107
    .end local p1    # "invalid$iv":Z
    .restart local v7    # "invalid$iv":Z
    :cond_24
    move/from16 p1, v7

    .line 1108
    .end local v7    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_15
    const/4 v7, 0x0

    .line 108
    .local v7, "$i$a$-cache-DateRangePickerKt$DateRangePicker$calendarModel$1":I
    invoke-static {v5}, Landroidx/compose/material3/CalendarModel_androidKt;->createCalendarModel(Ljava/util/Locale;)Landroidx/compose/material3/CalendarModel;

    move-result-object v7

    .line 1108
    .end local v7    # "$i$a$-cache-DateRangePickerKt$DateRangePicker$calendarModel$1":I
    nop

    .line 1109
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1110
    nop

    .line 1107
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 1106
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 108
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v7, Landroidx/compose/material3/CalendarModel;

    .local v7, "calendarModel":Landroidx/compose/material3/CalendarModel;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 113
    if-eqz v1, :cond_25

    .line 114
    new-instance v12, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$4;

    invoke-direct {v12, v10}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$4;-><init>(Landroidx/compose/material3/DateRangePickerState;)V

    const v13, -0x58cfc21c

    const/4 v14, 0x1

    invoke-static {v9, v13, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object v15, v12

    goto :goto_17

    .line 122
    :cond_25
    const/4 v12, 0x0

    move-object v15, v12

    .line 113
    :goto_17
    nop

    .line 124
    sget-object v12, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v13, 0x6

    invoke-virtual {v12, v9, v13}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v12

    .line 125
    sget-object v13, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v13}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getRangeSelectionHeaderHeadlineFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v13

    .line 124
    invoke-static {v12, v13}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v17

    .line 127
    sget-object v12, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v12}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getRangeSelectionHeaderContainerHeight-D9Ej5fM()F

    move-result v12

    .line 128
    sget v13, Landroidx/compose/material3/DateRangePickerKt;->HeaderHeightOffset:F

    .line 127
    nop

    .local v12, "arg0$iv":F
    .local v13, "other$iv":F
    const/4 v14, 0x0

    .line 1112
    .local v14, "$i$f$minus-5rwHm24":I
    sub-float v16, v12, v13

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v18

    .line 127
    .end local v12    # "arg0$iv":F
    .end local v13    # "other$iv":F
    .end local v14    # "$i$f$minus-5rwHm24":I
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 129
    nop

    .line 124
    nop

    .line 127
    nop

    .line 130
    new-instance v12, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$5;

    invoke-direct {v12, v10, v7, v0, v2}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$5;-><init>(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/CalendarModel;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;)V

    const v13, -0x36de77b

    const/4 v14, 0x1

    invoke-static {v9, v13, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v12, v3, 0x3

    and-int/lit8 v12, v12, 0xe

    const/high16 v13, 0xd80000

    or-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x6

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x6

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x6

    const v14, 0xe000

    and-int/2addr v13, v14

    or-int v21, v12, v13

    .line 109
    move-object v12, v4

    move-object v13, v6

    move-object v14, v8

    move-object/from16 v16, v2

    move-object/from16 v20, v9

    invoke-static/range {v12 .. v21}, Landroidx/compose/material3/DatePickerKt;->DateEntryContainer-au3_HiA(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 157
    .end local v5    # "defaultLocale":Ljava/util/Locale;
    .end local v7    # "calendarModel":Landroidx/compose/material3/CalendarModel;
    :cond_26
    move-object v13, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object v12, v4

    move-object v14, v6

    move-object v15, v8

    .end local v0    # "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    .end local v1    # "showModeToggle":Z
    .end local v2    # "colors":Landroidx/compose/material3/DatePickerColors;
    .end local v3    # "$dirty":I
    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "title":Lkotlin/jvm/functions/Function2;
    .end local v8    # "headline":Lkotlin/jvm/functions/Function2;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "dateFormatter":Landroidx/compose/material3/DatePickerFormatter;
    .local v14, "title":Lkotlin/jvm/functions/Function2;
    .local v15, "headline":Lkotlin/jvm/functions/Function2;
    .local v16, "showModeToggle":Z
    .local v17, "colors":Landroidx/compose/material3/DatePickerColors;
    .local v18, "$dirty":I
    :goto_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_27

    new-instance v19, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object v10, v8

    move/from16 v8, p8

    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/DateRangePickerKt$DateRangePicker$6;-><init>(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;II)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_27
    move-object/from16 v20, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_19
    return-void
.end method

.method private static final DateRangePickerContent(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
    .locals 41
    .param p0, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p1, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p2, "displayedMonthMillis"    # J
    .param p4, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p6, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p7, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p8, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p9, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p10, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/CalendarModel;",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/SelectableDates;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 732
    move-wide/from16 v13, p2

    move-object/from16 v15, p6

    move-object/from16 v12, p7

    move-object/from16 v11, p8

    move-object/from16 v10, p10

    move/from16 v9, p12

    const v0, -0x2ee9a3a9

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DateRangePickerContent)P(8,7,3,4,5!1,9,2,6)734@31377L87,735@31469L648:DateRangePicker.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_1

    move-object/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v2, v9, 0x30

    if-nez v2, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v2, v9, 0x180

    if-nez v2, :cond_5

    invoke-interface {v8, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_4

    :cond_4
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v9, 0xc00

    if-nez v2, :cond_7

    move-object/from16 v5, p4

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_5

    :cond_6
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v1, v2

    goto :goto_6

    :cond_7
    move-object/from16 v5, p4

    :goto_6
    and-int/lit16 v2, v9, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v4, p5

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_7

    :cond_8
    const/16 v2, 0x2000

    :goto_7
    or-int/2addr v1, v2

    goto :goto_8

    :cond_9
    move-object/from16 v4, p5

    :goto_8
    const/high16 v2, 0x30000

    and-int/2addr v2, v9

    if-nez v2, :cond_b

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v2, 0x10000

    :goto_9
    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0x180000

    and-int/2addr v2, v9

    if-nez v2, :cond_d

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v2, 0x80000

    :goto_a
    or-int/2addr v1, v2

    :cond_d
    const/high16 v2, 0xc00000

    and-int/2addr v2, v9

    if-nez v2, :cond_10

    const/high16 v2, 0x1000000

    and-int/2addr v2, v9

    if-nez v2, :cond_e

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_b

    :cond_e
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_b
    if-eqz v2, :cond_f

    const/high16 v2, 0x800000

    goto :goto_c

    :cond_f
    const/high16 v2, 0x400000

    :goto_c
    or-int/2addr v1, v2

    :cond_10
    const/high16 v2, 0x6000000

    and-int/2addr v2, v9

    if-nez v2, :cond_12

    move-object/from16 v2, p9

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v16, 0x2000000

    :goto_d
    or-int v1, v1, v16

    goto :goto_e

    :cond_12
    move-object/from16 v2, p9

    :goto_e
    const/high16 v16, 0x30000000

    and-int v16, v9, v16

    if-nez v16, :cond_14

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v16, 0x10000000

    :goto_f
    or-int v1, v1, v16

    :cond_14
    const v16, 0x12492493

    and-int v3, v1, v16

    const v0, 0x12492492

    if-ne v3, v0, :cond_16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_10

    .line 751
    :cond_15
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v35, v1

    move-object/from16 v40, v8

    goto/16 :goto_14

    .line 732
    :cond_16
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.material3.DateRangePickerContent (DateRangePicker.kt:731)"

    const v2, -0x2ee9a3a9

    invoke-static {v2, v1, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 733
    :cond_17
    invoke-virtual {v15, v13, v14}, Landroidx/compose/material3/CalendarModel;->getMonth(J)Landroidx/compose/material3/CalendarMonth;

    move-result-object v3

    .line 735
    .local v3, "displayedMonth":Landroidx/compose/material3/CalendarMonth;
    invoke-virtual {v3, v12}, Landroidx/compose/material3/CalendarMonth;->indexIn(Lkotlin/ranges/IntRange;)I

    move-result v0

    const/4 v2, 0x0

    move-object/from16 v16, v3

    const/4 v3, 0x2

    .end local v3    # "displayedMonth":Landroidx/compose/material3/CalendarMonth;
    .local v16, "displayedMonth":Landroidx/compose/material3/CalendarMonth;
    invoke-static {v0, v2, v8, v2, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v0

    .line 734
    nop

    .line 736
    .local v0, "monthsListState":Landroidx/compose/foundation/lazy/LazyListState;
    sget-object v17, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getDatePickerHorizontalPadding()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v3, v4, v6, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .local v17, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    move/from16 v18, v2

    .end local v2    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const/16 v19, 0x0

    .local v19, "$i$f$Column":I
    const v2, -0x1cd0f17e

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1119
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v6

    .line 1120
    .local v6, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 1123
    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v2, v18, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v18, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    invoke-static {v6, v5, v8, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v2, v18, 0x3

    and-int/lit8 v2, v2, 0x70

    .line 1124
    move/from16 v20, v2

    .local v20, "$changed$iv$iv":I
    const/16 v21, 0x0

    .local v21, "$i$f$Layout":I
    const v2, -0x4ee9b9da

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1125
    const/4 v2, 0x0

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v22

    .line 1126
    .local v22, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1128
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    .line 1135
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v23

    move-object/from16 p11, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local p11, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shl-int/lit8 v5, v20, 0x9

    and-int/lit16 v5, v5, 0x1c00

    or-int/lit8 v5, v5, 0x6

    .line 1127
    move/from16 v24, v5

    .local v24, "$changed$iv$iv$iv":I
    move-object v5, v2

    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v2, v23

    .local v2, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v23, 0x0

    .line 1136
    .local v23, "$i$f$ReusableComposeNode":I
    move-object/from16 v25, v6

    .end local v6    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v25, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1137
    :cond_18
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1138
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1139
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    .line 1141
    :cond_19
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1143
    :goto_11
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 1130
    .local v26, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v28, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1131
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1133
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v27, 0x0

    .line 1144
    .local v27, "$i$f$set-impl":I
    move-object/from16 v29, v6

    .local v29, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 1145
    .local v30, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v31

    if-nez v31, :cond_1b

    move-object/from16 v31, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v31, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v32, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_12

    :cond_1a
    move-object/from16 v4, v29

    goto :goto_13

    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_1b
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    .line 1146
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_12
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v29

    .end local v29    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1147
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1149
    :goto_13
    nop

    .line 1144
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1149
    nop

    .line 1134
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v27    # "$i$f$set-impl":I
    nop

    .line 1143
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1150
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v4, v24, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v8, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const v3, 0x7ab4aae9

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1152
    shr-int/lit8 v3, v24, 0x9

    and-int/lit8 v26, v3, 0xe

    .local v26, "$changed$iv":I
    move-object v6, v8

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 1153
    .local v27, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v3, 0x107e0298

    const-string v4, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v6, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v4, v18, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v29, v4, 0x6

    .local v29, "$changed":I
    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    .local v3, "$this$DateRangePickerContent_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v30, v3

    .end local v3    # "$this$DateRangePickerContent_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    .local v30, "$this$DateRangePickerContent_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v5, v6

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 737
    .local v33, "$i$a$-Column-DateRangePickerKt$DateRangePickerContent$1":I
    const v3, 0x4b6c2c07    # 1.5477767E7f

    const-string v4, "C736@31557L31,737@31597L514:DateRangePicker.kt#uh7d8r"

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v3, v1, 0x1b

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    invoke-static {v10, v15, v5, v3}, Landroidx/compose/material3/DatePickerKt;->WeekDays(Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/CalendarModel;Landroidx/compose/runtime/Composer;I)V

    .line 739
    nop

    .line 740
    nop

    .line 741
    nop

    .line 742
    nop

    .line 743
    nop

    .line 744
    nop

    .line 745
    nop

    .line 746
    nop

    .line 747
    nop

    .line 748
    shl-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    shl-int/lit8 v4, v1, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    and-int/lit16 v4, v1, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    const/high16 v4, 0x70000000

    and-int/2addr v4, v1

    or-int v34, v3, v4

    .line 738
    move/from16 v35, v1

    .end local v1    # "$dirty":I
    .local v35, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v36, v2

    .end local v2    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v36, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v38, v5

    move-object/from16 v37, v28

    move-object/from16 v28, p11

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p11    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v28, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v37, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v38, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v5, p6

    move-object/from16 v39, v6

    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v39, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v40, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v40, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v38

    move/from16 v11, v34

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerKt;->VerticalMonthsList(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    .line 737
    invoke-static/range {v38 .. v38}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 750
    nop

    .line 1153
    .end local v29    # "$changed":I
    .end local v30    # "$this$DateRangePickerContent_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v33    # "$i$a$-Column-DateRangePickerKt$DateRangePickerContent$1":I
    .end local v38    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v39 .. v39}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1152
    .end local v26    # "$changed$iv":I
    .end local v27    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v39    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 1154
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1155
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1156
    nop

    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v24    # "$changed$iv$iv$iv":I
    .end local v36    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1157
    nop

    .end local v20    # "$changed$iv$iv":I
    .end local v21    # "$i$f$Layout":I
    .end local v22    # "compositeKeyHash$iv$iv":I
    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1158
    nop

    .end local v17    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v18    # "$changed$iv":I
    .end local v19    # "$i$f$Column":I
    .end local v25    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 751
    .end local v0    # "monthsListState":Landroidx/compose/foundation/lazy/LazyListState;
    .end local v16    # "displayedMonth":Landroidx/compose/material3/CalendarMonth;
    :cond_1c
    :goto_14
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1d

    new-instance v16, Landroidx/compose/material3/DateRangePickerKt$DateRangePickerContent$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v13, v11

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/DateRangePickerKt$DateRangePickerContent$2;-><init>(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1d
    return-void
.end method

.method public static final DateRangePickerState-HVP43zI(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;
    .locals 10
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "initialSelectedStartDateMillis"    # Ljava/lang/Long;
    .param p2, "initialSelectedEndDateMillis"    # Ljava/lang/Long;
    .param p3, "initialDisplayedMonthMillis"    # Ljava/lang/Long;
    .param p4, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p5, "initialDisplayMode"    # I
    .param p6, "selectableDates"    # Landroidx/compose/material3/SelectableDates;

    .line 316
    new-instance v9, Landroidx/compose/material3/DateRangePickerStateImpl;

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    const/4 v8, 0x0

    .line 316
    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/DateRangePickerStateImpl;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Landroidx/compose/material3/DateRangePickerState;

    .line 324
    return-object v9
.end method

.method public static synthetic DateRangePickerState-HVP43zI$default(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;ILjava/lang/Object;)Landroidx/compose/material3/DateRangePickerState;
    .locals 1

    .line 307
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 309
    move-object p1, v0

    .line 307
    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    .line 310
    move-object p2, v0

    .line 307
    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    .line 312
    move-object p3, p1

    .line 307
    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    .line 313
    sget-object p4, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p4}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Lkotlin/ranges/IntRange;

    move-result-object p4

    .line 307
    :cond_3
    and-int/lit8 p8, p7, 0x20

    if-eqz p8, :cond_4

    .line 314
    sget-object p5, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p5}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result p5

    .line 307
    :cond_4
    and-int/lit8 p7, p7, 0x40

    if-eqz p7, :cond_5

    .line 315
    sget-object p6, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p6}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object p6

    .line 307
    :cond_5
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerState-HVP43zI(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;

    move-result-object p0

    return-object p0
.end method

.method private static final SwitchableDateEntryContent-RN-2D1Q(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p1, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p2, "displayedMonthMillis"    # J
    .param p4, "displayMode"    # I
    .param p5, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p6, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p7, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p8, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p9, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p10, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p11, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "JI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/CalendarModel;",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/SelectableDates;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 681
    move-object/from16 v15, p9

    move/from16 v14, p13

    const v0, -0x1fc1b857

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SwitchableDateEntryContent)P(9,8,4,3:c#material3.DisplayMode,5,6!1,10,2,7)683@29429L1337:DateRangePicker.kt#uh7d8r"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p13

    .local v1, "$dirty":I
    move/from16 v2, p14

    .local v2, "$dirty1":I
    and-int/lit8 v3, v14, 0x6

    const/4 v4, 0x4

    if-nez v3, :cond_1

    move-object/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move-object/from16 v12, p0

    :goto_1
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_3

    move-object/from16 v11, p1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_3
    move-object/from16 v11, p1

    :goto_3
    and-int/lit16 v3, v14, 0x180

    if-nez v3, :cond_5

    move-wide/from16 v9, p2

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_4

    :cond_4
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p2

    :goto_5
    and-int/lit16 v3, v14, 0xc00

    if-nez v3, :cond_7

    move/from16 v8, p4

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_6

    :cond_6
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_7
    move/from16 v8, p4

    :goto_7
    and-int/lit16 v3, v14, 0x6000

    if-nez v3, :cond_9

    move-object/from16 v7, p5

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_8

    :cond_8
    const/16 v3, 0x2000

    :goto_8
    or-int/2addr v1, v3

    goto :goto_9

    :cond_9
    move-object/from16 v7, p5

    :goto_9
    const/high16 v3, 0x30000

    and-int/2addr v3, v14

    if-nez v3, :cond_b

    move-object/from16 v6, p6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v3, 0x10000

    :goto_a
    or-int/2addr v1, v3

    goto :goto_b

    :cond_b
    move-object/from16 v6, p6

    :goto_b
    const/high16 v3, 0x180000

    and-int/2addr v3, v14

    if-nez v3, :cond_d

    move-object/from16 v3, p7

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_c
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_d
    move-object/from16 v3, p7

    :goto_d
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_f

    move-object/from16 v0, p8

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_e
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    goto :goto_f

    :cond_f
    move-object/from16 v0, p8

    :goto_f
    const/high16 v17, 0x6000000

    and-int v17, v14, v17

    if-nez v17, :cond_12

    const/high16 v17, 0x8000000

    and-int v17, v14, v17

    if-nez v17, :cond_10

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    goto :goto_10

    :cond_10
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    :goto_10
    if-eqz v17, :cond_11

    const/high16 v17, 0x4000000

    goto :goto_11

    :cond_11
    const/high16 v17, 0x2000000

    :goto_11
    or-int v1, v1, v17

    :cond_12
    const/high16 v17, 0x30000000

    and-int v17, v14, v17

    if-nez v17, :cond_14

    move-object/from16 v5, p10

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_13
    const/high16 v17, 0x10000000

    :goto_12
    or-int v1, v1, v17

    goto :goto_13

    :cond_14
    move-object/from16 v5, p10

    :goto_13
    and-int/lit8 v17, p14, 0x6

    if-nez v17, :cond_16

    move-object/from16 v15, p11

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    goto :goto_14

    :cond_15
    const/4 v4, 0x2

    :goto_14
    or-int/2addr v2, v4

    goto :goto_15

    :cond_16
    move-object/from16 v15, p11

    :goto_15
    move v4, v2

    .end local v2    # "$dirty1":I
    .local v4, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v0, 0x12492492

    if-ne v2, v0, :cond_18

    and-int/lit8 v0, v4, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_16

    .line 717
    :cond_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v1

    move/from16 v16, v4

    goto/16 :goto_17

    .line 681
    :cond_18
    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "androidx.compose.material3.SwitchableDateEntryContent (DateRangePicker.kt:680)"

    const v2, -0x1fc1b857

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 686
    :cond_19
    const/4 v0, 0x7

    const/4 v2, 0x0

    move/from16 p12, v1

    .end local v1    # "$dirty":I
    .local p12, "$dirty":I
    const/4 v1, 0x0

    invoke-static {v2, v2, v1, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    .line 687
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    sget-object v16, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$1;->INSTANCE:Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$1;

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v12, 0x1

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "$dirty1":I
    .local v16, "$dirty1":I
    invoke-static {v2, v3, v1, v12, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 685
    invoke-static/range {p4 .. p4}, Landroidx/compose/material3/DisplayMode;->box-impl(I)Landroidx/compose/material3/DisplayMode;

    move-result-object v18

    .line 687
    nop

    .line 686
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/16 v20, 0x0

    .line 690
    new-instance v3, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;

    move-object v0, v3

    move/from16 v21, p12

    .end local p12    # "$dirty":I
    .local v21, "$dirty":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v3

    move-wide/from16 v3, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;-><init>(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    const v0, -0x3d3152bb

    invoke-static {v13, v0, v12, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v0, v21, 0x9

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v7, v0, 0x6180

    const/16 v8, 0x8

    .line 684
    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object v6, v13

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 717
    :cond_1a
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_1b

    new-instance v17, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v18, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$3;-><init>(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_18

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1b
    move-object/from16 v18, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_18
    return-void
.end method

.method private static final VerticalMonthsList(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p0, "lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p1, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p2, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p3, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p4, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p6, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p7, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p8, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p9, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/CalendarModel;",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/SelectableDates;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 770
    move-object/from16 v12, p0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v11, p11

    const v0, 0x4af1de09    # 7925508.5f

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(VerticalMonthsList)P(3,8,7,4,5!1,9,2,6)771@32837L138,778@33020L10,777@32980L4376,872@37391L228,872@37361L258:DateRangePicker.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_1

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_3

    move-object/from16 v8, p1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    goto :goto_2

    :cond_3
    move-object/from16 v8, p1

    :goto_2
    and-int/lit16 v2, v11, 0x180

    if-nez v2, :cond_5

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    goto :goto_4

    :cond_5
    move-object/from16 v7, p2

    :goto_4
    and-int/lit16 v2, v11, 0xc00

    if-nez v2, :cond_7

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_5

    :cond_6
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v1, v2

    goto :goto_6

    :cond_7
    move-object/from16 v6, p3

    :goto_6
    and-int/lit16 v2, v11, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v4, p4

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_7

    :cond_8
    const/16 v2, 0x2000

    :goto_7
    or-int/2addr v1, v2

    goto :goto_8

    :cond_9
    move-object/from16 v4, p4

    :goto_8
    const/high16 v2, 0x30000

    and-int/2addr v2, v11

    if-nez v2, :cond_b

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v2, 0x10000

    :goto_9
    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0x180000

    and-int/2addr v2, v11

    if-nez v2, :cond_d

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v2, 0x80000

    :goto_a
    or-int/2addr v1, v2

    :cond_d
    const/high16 v2, 0xc00000

    and-int/2addr v2, v11

    if-nez v2, :cond_10

    const/high16 v2, 0x1000000

    and-int/2addr v2, v11

    if-nez v2, :cond_e

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_b

    :cond_e
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_b
    if-eqz v2, :cond_f

    const/high16 v2, 0x800000

    goto :goto_c

    :cond_f
    const/high16 v2, 0x400000

    :goto_c
    or-int/2addr v1, v2

    :cond_10
    const/high16 v2, 0x6000000

    and-int/2addr v2, v11

    if-nez v2, :cond_12

    move-object/from16 v3, p8

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x4000000

    goto :goto_d

    :cond_11
    const/high16 v2, 0x2000000

    :goto_d
    or-int/2addr v1, v2

    goto :goto_e

    :cond_12
    move-object/from16 v3, p8

    :goto_e
    const/high16 v2, 0x30000000

    and-int/2addr v2, v11

    if-nez v2, :cond_14

    move-object/from16 v2, p9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v16, 0x10000000

    :goto_f
    or-int v1, v1, v16

    goto :goto_10

    :cond_14
    move-object/from16 v2, p9

    :goto_10
    const v16, 0x12492493

    and-int v5, v1, v16

    const v9, 0x12492492

    if-ne v5, v9, :cond_16

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_11

    .line 881
    :cond_15
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v1

    move-object v15, v10

    move-object/from16 v23, v14

    move-object v14, v12

    move-object v12, v13

    move-object/from16 v13, v23

    goto/16 :goto_18

    .line 770
    :cond_16
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, -0x1

    const-string/jumbo v9, "androidx.compose.material3.VerticalMonthsList (DateRangePicker.kt:769)"

    invoke-static {v0, v1, v5, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 771
    :cond_17
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/material3/CalendarModel;->getToday()Landroidx/compose/material3/CalendarDate;

    move-result-object v17

    .local v17, "today":Landroidx/compose/material3/CalendarDate;
    const v0, 0x56b9411b

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember):DateRangePicker.kt#9igjgp"

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 772
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v5, v10

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 1159
    .local v18, "$i$f$cache":I
    move/from16 v19, v1

    .end local v1    # "$dirty":I
    .local v19, "$dirty":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1160
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_19

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v1, v15, :cond_18

    goto :goto_12

    .line 1164
    :cond_18
    move/from16 v21, v0

    move-object v0, v1

    move-object/from16 v22, v0

    goto :goto_13

    .line 1161
    :cond_19
    :goto_12
    const/4 v15, 0x0

    .line 773
    .local v15, "$i$a$-cache-DateRangePickerKt$VerticalMonthsList$firstMonth$1":I
    nop

    .line 774
    move/from16 v21, v0

    .end local v0    # "invalid$iv":Z
    .local v21, "invalid$iv":Z
    invoke-virtual/range {p6 .. p6}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    .line 775
    nop

    .line 773
    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v22, "it$iv":Ljava/lang/Object;
    invoke-virtual {v13, v0, v1}, Landroidx/compose/material3/CalendarModel;->getMonth(II)Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    .line 1161
    .end local v15    # "$i$a$-cache-DateRangePickerKt$VerticalMonthsList$firstMonth$1":I
    nop

    .line 1162
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1163
    nop

    .line 1160
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 1159
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v22    # "it$iv":Ljava/lang/Object;
    nop

    .line 772
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    .end local v21    # "invalid$iv":Z
    move-object v15, v0

    check-cast v15, Landroidx/compose/material3/CalendarMonth;

    .local v15, "firstMonth":Landroidx/compose/material3/CalendarMonth;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 779
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getDateLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 780
    new-instance v1, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1;

    move-object v0, v1

    move-object v12, v1

    move/from16 v18, v19

    .end local v19    # "$dirty":I
    .local v18, "$dirty":I
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v14, v5

    const/16 v13, 0x4000

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object v7, v15

    move-object/from16 v8, p7

    move-object v13, v9

    move-object/from16 v16, v15

    const/4 v15, 0x4

    .end local v15    # "firstMonth":Landroidx/compose/material3/CalendarMonth;
    .local v16, "firstMonth":Landroidx/compose/material3/CalendarMonth;
    move-object/from16 v9, p9

    move-object v15, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v17

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/ranges/IntRange;Landroidx/compose/material3/CalendarModel;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/SelectableDates;)V

    const v0, 0x4103e1b8

    const/4 v1, 0x1

    invoke-static {v15, v0, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 778
    const/16 v2, 0x30

    invoke-static {v14, v0, v15, v2}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 873
    const v0, 0x56b952e5

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v18, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    move v0, v1

    goto :goto_14

    :cond_1a
    move v0, v2

    :goto_14
    const v3, 0xe000

    and-int v3, v18, v3

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_1b

    goto :goto_15

    :cond_1b
    move v1, v2

    :goto_15
    or-int/2addr v0, v1

    move-object/from16 v12, p5

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v13, p6

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v6, v15

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v7, v0

    .end local v0    # "invalid$iv":Z
    .local v7, "invalid$iv":Z
    const/4 v8, 0x0

    .line 1165
    .local v8, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1166
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_1d

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_1c

    goto :goto_16

    .line 1170
    :cond_1c
    move-object v0, v9

    goto :goto_17

    .line 1167
    :cond_1d
    :goto_16
    const/4 v11, 0x0

    .line 873
    .local v11, "$i$a$-cache-DateRangePickerKt$VerticalMonthsList$2":I
    new-instance v14, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$2$1;

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Lkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 1167
    .end local v11    # "$i$a$-cache-DateRangePickerKt$VerticalMonthsList$2":I
    move-object v0, v14

    .line 1168
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1169
    nop

    .line 1166
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 1165
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 873
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v1, v18, 0xe

    move-object/from16 v14, p0

    invoke-static {v14, v0, v15, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 881
    .end local v16    # "firstMonth":Landroidx/compose/material3/CalendarMonth;
    .end local v17    # "today":Landroidx/compose/material3/CalendarDate;
    :cond_1e
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_1f

    new-instance v16, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v12, v11

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1f
    return-void
.end method

.method public static final synthetic access$DateRangePickerContent(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p1, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p2, "displayedMonthMillis"    # J
    .param p4, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p6, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p7, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p8, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p9, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p10, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerContent(Ljava/lang/Long;Ljava/lang/Long;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SwitchableDateEntryContent-RN-2D1Q(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p1, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p2, "displayedMonthMillis"    # J
    .param p4, "displayMode"    # I
    .param p5, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p6, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p7, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p8, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p9, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p10, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p11, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I

    .line 1
    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/DateRangePickerKt;->SwitchableDateEntryContent-RN-2D1Q(Ljava/lang/Long;Ljava/lang/Long;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$VerticalMonthsList(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "lazyListState"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p1, "selectedStartDateMillis"    # Ljava/lang/Long;
    .param p2, "selectedEndDateMillis"    # Ljava/lang/Long;
    .param p3, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .param p4, "onDisplayedMonthChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "calendarModel"    # Landroidx/compose/material3/CalendarModel;
    .param p6, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p7, "dateFormatter"    # Landroidx/compose/material3/DatePickerFormatter;
    .param p8, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p9, "colors"    # Landroidx/compose/material3/DatePickerColors;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/DateRangePickerKt;->VerticalMonthsList(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$customScrollActions(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "state"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "scrollUpLabel"    # Ljava/lang/String;
    .param p3, "scrollDownLabel"    # Ljava/lang/String;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/DateRangePickerKt;->customScrollActions(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDateRangePickerHeadlinePadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerHeadlinePadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getDateRangePickerTitlePadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerTitlePadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$updateDateSelection(JLjava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p0, "dateInMillis"    # J
    .param p2, "currentStartDateMillis"    # Ljava/lang/Long;
    .param p3, "currentEndDateMillis"    # Ljava/lang/Long;
    .param p4, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DateRangePickerKt;->updateDateSelection(JLjava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final customScrollActions(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "state"    # Landroidx/compose/foundation/lazy/LazyListState;
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "scrollUpLabel"    # Ljava/lang/String;
    .param p3, "scrollDownLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/CustomAccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 1059
    new-instance v0, Landroidx/compose/material3/DateRangePickerKt$customScrollActions$scrollUpAction$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/DateRangePickerKt$customScrollActions$scrollUpAction$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1069
    .local v0, "scrollUpAction":Lkotlin/jvm/functions/Function0;
    new-instance v1, Landroidx/compose/material3/DateRangePickerKt$customScrollActions$scrollDownAction$1;

    invoke-direct {v1, p0, p1}, Landroidx/compose/material3/DateRangePickerKt$customScrollActions$scrollDownAction$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 1080
    .local v1, "scrollDownAction":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    new-instance v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 1081
    nop

    .line 1082
    nop

    .line 1080
    invoke-direct {v3, p2, v0}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1084
    new-instance v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 1085
    nop

    .line 1086
    nop

    .line 1084
    invoke-direct {v3, p3, v1}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1080
    nop

    .line 1079
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static final drawRangeBackground-mxwnekA(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/material3/SelectedRangeInfo;J)V
    .locals 32
    .param p0, "$this$drawRangeBackground_u2dmxwnekA"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
    .param p1, "selectedRangeInfo"    # Landroidx/compose/material3/SelectedRangeInfo;
    .param p2, "color"    # J

    .line 987
    move-object/from16 v0, p0

    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v1

    .line 988
    .local v1, "itemContainerWidth":F
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v2

    .line 989
    .local v2, "itemContainerHeight":F
    sget-object v3, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getDateStateLayerHeight-D9Ej5fM()F

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v3

    .line 990
    .local v3, "itemStateLayerHeight":F
    sub-float v4, v2, v3

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 992
    .local v4, "stateLayerVerticalPadding":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    const/4 v7, 0x7

    int-to-float v7, v7

    mul-float v8, v7, v1

    sub-float/2addr v6, v8

    div-float/2addr v6, v7

    .line 991
    nop

    .line 994
    .local v6, "horizontalSpaceBetweenItems":F
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SelectedRangeInfo;->getGridStartCoordinates-nOcc-ac()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->component1-impl(J)I

    move-result v9

    .local v9, "x1":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->component2-impl(J)I

    move-result v7

    .line 995
    .local v7, "y1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SelectedRangeInfo;->getGridEndCoordinates-nOcc-ac()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->component1-impl(J)I

    move-result v8

    .local v8, "x2":I
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->component2-impl(J)I

    move-result v10

    .line 998
    .local v10, "y2":I
    int-to-float v11, v9

    add-float v12, v1, v6

    mul-float/2addr v11, v12

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SelectedRangeInfo;->getFirstIsSelectionStart()Z

    move-result v12

    if-eqz v12, :cond_0

    div-float v12, v1, v5

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 998
    :goto_0
    add-float/2addr v11, v12

    .line 1000
    div-float v12, v6, v5

    .line 998
    add-float/2addr v11, v12

    .line 1001
    .local v11, "startX":F
    int-to-float v12, v7

    mul-float/2addr v12, v2

    add-float/2addr v12, v4

    .line 1002
    .local v12, "startY":F
    int-to-float v14, v8

    add-float v15, v1, v6

    mul-float/2addr v14, v15

    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SelectedRangeInfo;->getLastIsSelectionEnd()Z

    move-result v15

    if-eqz v15, :cond_1

    div-float v15, v1, v5

    goto :goto_1

    :cond_1
    move v15, v1

    .line 1002
    :goto_1
    add-float/2addr v14, v15

    .line 1004
    div-float v5, v6, v5

    .line 1002
    add-float/2addr v14, v5

    .line 1005
    .local v14, "endX":F
    int-to-float v5, v10

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    .line 1007
    .local v5, "endY":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    sget-object v13, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/16 v17, 0x1

    if-ne v15, v13, :cond_2

    move/from16 v13, v17

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 1009
    .local v13, "isRtl":Z
    :goto_2
    if-eqz v13, :cond_3

    .line 1010
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v15

    sub-float v11, v15, v11

    .line 1011
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v15

    sub-float v14, v15, v14

    .line 1015
    :cond_3
    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1016
    nop

    .line 1017
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v21

    .line 1019
    nop

    .line 1020
    if-ne v7, v10, :cond_4

    sub-float v15, v14, v11

    goto :goto_3

    .line 1021
    :cond_4
    if-eqz v13, :cond_5

    neg-float v15, v11

    goto :goto_3

    .line 1022
    :cond_5
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v15

    sub-float/2addr v15, v11

    .line 1024
    :goto_3
    nop

    .line 1018
    invoke-static {v15, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v23

    .line 1015
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x78

    const/16 v30, 0x0

    move-wide/from16 v19, p2

    invoke-static/range {v18 .. v30}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1028
    if-eq v7, v10, :cond_9

    .line 1029
    sub-int v15, v10, v7

    add-int/lit8 v15, v15, -0x1

    .local v15, "y":I
    :goto_4
    if-lez v15, :cond_6

    .line 1031
    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1032
    nop

    .line 1033
    move/from16 v30, v1

    .end local v1    # "itemContainerWidth":F
    .local v30, "itemContainerWidth":F
    int-to-float v1, v15

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    move/from16 v31, v2

    const/4 v2, 0x0

    .end local v2    # "itemContainerHeight":F
    .local v31, "itemContainerHeight":F
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v20

    .line 1035
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    .line 1036
    nop

    .line 1034
    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v22

    .line 1031
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x78

    const/16 v29, 0x0

    move-wide/from16 v18, p2

    invoke-static/range {v17 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1029
    add-int/lit8 v15, v15, -0x1

    move/from16 v1, v30

    move/from16 v2, v31

    goto :goto_4

    .end local v30    # "itemContainerWidth":F
    .end local v31    # "itemContainerHeight":F
    .restart local v1    # "itemContainerWidth":F
    .restart local v2    # "itemContainerHeight":F
    :cond_6
    move/from16 v30, v1

    move/from16 v31, v2

    const/4 v2, 0x0

    .line 1041
    .end local v1    # "itemContainerWidth":F
    .end local v2    # "itemContainerHeight":F
    .end local v15    # "y":I
    .restart local v30    # "itemContainerWidth":F
    .restart local v31    # "itemContainerHeight":F
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v15, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    .line 1042
    .local v1, "topLeftX":F
    :goto_5
    move-object v15, v0

    check-cast v15, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1043
    nop

    .line 1044
    invoke-static {v1, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v18

    .line 1046
    if-eqz v13, :cond_8

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    sub-float v2, v14, v2

    goto :goto_6

    :cond_8
    move v2, v14

    .line 1047
    :goto_6
    nop

    .line 1045
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v20

    .line 1042
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x78

    const/16 v27, 0x0

    move-wide/from16 v16, p2

    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_7

    .line 1028
    .end local v30    # "itemContainerWidth":F
    .end local v31    # "itemContainerHeight":F
    .local v1, "itemContainerWidth":F
    .restart local v2    # "itemContainerHeight":F
    :cond_9
    move/from16 v30, v1

    move/from16 v31, v2

    .line 1051
    .end local v1    # "itemContainerWidth":F
    .end local v2    # "itemContainerHeight":F
    .restart local v30    # "itemContainerWidth":F
    .restart local v31    # "itemContainerHeight":F
    :goto_7
    return-void
.end method

.method public static final getCalendarMonthSubheadPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 903
    sget-object v0, Landroidx/compose/material3/DateRangePickerKt;->CalendarMonthSubheadPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final rememberDateRangePickerState-IlFM19s(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DateRangePickerState;
    .locals 27
    .param p0, "initialSelectedStartDateMillis"    # Ljava/lang/Long;
    .param p1, "initialSelectedEndDateMillis"    # Ljava/lang/Long;
    .param p2, "initialDisplayedMonthMillis"    # Ljava/lang/Long;
    .param p3, "yearRange"    # Lkotlin/ranges/IntRange;
    .param p4, "initialDisplayMode"    # I
    .param p5, "selectableDates"    # Landroidx/compose/material3/SelectableDates;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    move-object/from16 v7, p6

    move/from16 v8, p7

    const v0, -0x77ee04a5

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDateRangePickerState)P(3,2,1,5,0:c#material3.DisplayMode)262@11461L15,265@11584L435,263@11488L531:DateRangePicker.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    move-object v6, v1

    .end local p0    # "initialSelectedStartDateMillis":Ljava/lang/Long;
    .local v1, "initialSelectedStartDateMillis":Ljava/lang/Long;
    goto :goto_0

    .line 0
    .end local v1    # "initialSelectedStartDateMillis":Ljava/lang/Long;
    .restart local p0    # "initialSelectedStartDateMillis":Ljava/lang/Long;
    :cond_0
    move-object/from16 v6, p0

    .line 255
    .end local p0    # "initialSelectedStartDateMillis":Ljava/lang/Long;
    .local v6, "initialSelectedStartDateMillis":Ljava/lang/Long;
    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    .line 256
    const/4 v1, 0x0

    move-object v5, v1

    .end local p1    # "initialSelectedEndDateMillis":Ljava/lang/Long;
    .local v1, "initialSelectedEndDateMillis":Ljava/lang/Long;
    goto :goto_1

    .line 255
    .end local v1    # "initialSelectedEndDateMillis":Ljava/lang/Long;
    .restart local p1    # "initialSelectedEndDateMillis":Ljava/lang/Long;
    :cond_1
    move-object/from16 v5, p1

    .line 256
    .end local p1    # "initialSelectedEndDateMillis":Ljava/lang/Long;
    .local v5, "initialSelectedEndDateMillis":Ljava/lang/Long;
    :goto_1
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_2

    .line 258
    move-object v1, v6

    move-object v4, v1

    .end local p2    # "initialDisplayedMonthMillis":Ljava/lang/Long;
    .local v1, "initialDisplayedMonthMillis":Ljava/lang/Long;
    goto :goto_2

    .line 256
    .end local v1    # "initialDisplayedMonthMillis":Ljava/lang/Long;
    .restart local p2    # "initialDisplayedMonthMillis":Ljava/lang/Long;
    :cond_2
    move-object/from16 v4, p2

    .line 258
    .end local p2    # "initialDisplayedMonthMillis":Ljava/lang/Long;
    .local v4, "initialDisplayedMonthMillis":Ljava/lang/Long;
    :goto_2
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_3

    .line 259
    sget-object v1, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    move-object v3, v1

    .end local p3    # "yearRange":Lkotlin/ranges/IntRange;
    .local v1, "yearRange":Lkotlin/ranges/IntRange;
    goto :goto_3

    .line 258
    .end local v1    # "yearRange":Lkotlin/ranges/IntRange;
    .restart local p3    # "yearRange":Lkotlin/ranges/IntRange;
    :cond_3
    move-object/from16 v3, p3

    .line 259
    .end local p3    # "yearRange":Lkotlin/ranges/IntRange;
    .local v3, "yearRange":Lkotlin/ranges/IntRange;
    :goto_3
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_4

    .line 260
    sget-object v1, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result v1

    move v2, v1

    .end local p4    # "initialDisplayMode":I
    .local v1, "initialDisplayMode":I
    goto :goto_4

    .line 259
    .end local v1    # "initialDisplayMode":I
    .restart local p4    # "initialDisplayMode":I
    :cond_4
    move/from16 v2, p4

    .line 260
    .end local p4    # "initialDisplayMode":I
    .local v2, "initialDisplayMode":I
    :goto_4
    const/16 v1, 0x20

    and-int/lit8 v9, p8, 0x20

    if-eqz v9, :cond_5

    .line 261
    sget-object v9, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object v9

    move-object v15, v9

    .end local p5    # "selectableDates":Landroidx/compose/material3/SelectableDates;
    .local v9, "selectableDates":Landroidx/compose/material3/SelectableDates;
    goto :goto_5

    .line 260
    .end local v9    # "selectableDates":Landroidx/compose/material3/SelectableDates;
    .restart local p5    # "selectableDates":Landroidx/compose/material3/SelectableDates;
    :cond_5
    move-object/from16 v15, p5

    .line 261
    .end local p5    # "selectableDates":Landroidx/compose/material3/SelectableDates;
    .local v15, "selectableDates":Landroidx/compose/material3/SelectableDates;
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 262
    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.material3.rememberDateRangePickerState (DateRangePicker.kt:261)"

    invoke-static {v0, v8, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    nop

    .line 263
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroidx/compose/material3/ActualAndroid_androidKt;->defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;

    move-result-object v14

    .local v14, "locale":Ljava/util/Locale;
    new-array v13, v0, [Ljava/lang/Object;

    .line 265
    sget-object v9, Landroidx/compose/material3/DateRangePickerStateImpl;->Companion:Landroidx/compose/material3/DateRangePickerStateImpl$Companion;

    invoke-virtual {v9, v15, v14}, Landroidx/compose/material3/DateRangePickerStateImpl$Companion;->Saver(Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v17

    const/16 v18, 0x0

    const v9, 0x1008c55c

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember):DateRangePicker.kt#9igjgp"

    invoke-static {v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v9, v8, 0xe

    xor-int/lit8 v9, v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-le v9, v10, :cond_7

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    and-int/lit8 v9, v8, 0x6

    if-ne v9, v10, :cond_9

    :cond_8
    move v9, v11

    goto :goto_6

    :cond_9
    move v9, v0

    :goto_6
    and-int/lit8 v10, v8, 0x70

    xor-int/lit8 v10, v10, 0x30

    if-le v10, v1, :cond_a

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    and-int/lit8 v10, v8, 0x30

    if-ne v10, v1, :cond_c

    :cond_b
    move v1, v11

    goto :goto_7

    :cond_c
    move v1, v0

    :goto_7
    or-int/2addr v1, v9

    and-int/lit16 v9, v8, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v10, 0x100

    if-le v9, v10, :cond_d

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    :cond_d
    and-int/lit16 v9, v8, 0x180

    if-ne v9, v10, :cond_f

    :cond_e
    move v9, v11

    goto :goto_8

    :cond_f
    move v9, v0

    :goto_8
    or-int/2addr v1, v9

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    const v9, 0xe000

    and-int/2addr v9, v8

    xor-int/lit16 v9, v9, 0x6000

    const/16 v10, 0x4000

    if-le v9, v10, :cond_10

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v9

    if-nez v9, :cond_11

    :cond_10
    and-int/lit16 v9, v8, 0x6000

    if-ne v9, v10, :cond_12

    :cond_11
    move v9, v11

    goto :goto_9

    :cond_12
    move v9, v0

    :goto_9
    or-int/2addr v1, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v8

    const/high16 v10, 0x30000

    xor-int/2addr v9, v10

    const/high16 v12, 0x20000

    if-le v9, v12, :cond_13

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    :cond_13
    and-int v9, v8, v10

    if-ne v9, v12, :cond_15

    :cond_14
    move v0, v11

    :cond_15
    or-int/2addr v0, v1

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 266
    move-object/from16 v1, p6

    .local v0, "invalid$iv":Z
    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 1113
    .local v19, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1114
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_17

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v12, v9, :cond_16

    goto :goto_a

    .line 1118
    :cond_16
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto :goto_b

    .line 1115
    :cond_17
    :goto_a
    const/16 v21, 0x0

    .line 266
    .local v21, "$i$a$-cache-DateRangePickerKt$rememberDateRangePickerState$1":I
    new-instance v22, Landroidx/compose/material3/DateRangePickerKt$rememberDateRangePickerState$1$1;

    move-object/from16 v9, v22

    move-object v10, v6

    move-object v11, v5

    move-object/from16 v23, v12

    .end local v12    # "it$iv":Ljava/lang/Object;
    .local v23, "it$iv":Ljava/lang/Object;
    move-object v12, v4

    move-object/from16 v24, v13

    move-object v13, v3

    move-object/from16 v25, v14

    .end local v14    # "locale":Ljava/util/Locale;
    .local v25, "locale":Ljava/util/Locale;
    move v14, v2

    move-object/from16 v26, v15

    .end local v15    # "selectableDates":Landroidx/compose/material3/SelectableDates;
    .local v26, "selectableDates":Landroidx/compose/material3/SelectableDates;
    move-object/from16 v16, v25

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/DateRangePickerKt$rememberDateRangePickerState$1$1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V

    check-cast v22, Lkotlin/jvm/functions/Function0;

    .line 1115
    .end local v21    # "$i$a$-cache-DateRangePickerKt$rememberDateRangePickerState$1":I
    move-object/from16 v12, v22

    .line 1116
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1117
    nop

    .line 1114
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 1113
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v23    # "it$iv":Ljava/lang/Object;
    nop

    .line 266
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    move-object v9, v12

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v10, 0x0

    const/4 v11, 0x4

    .line 264
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move v12, v2

    .end local v2    # "initialDisplayMode":I
    .local v12, "initialDisplayMode":I
    move-object/from16 v2, v18

    move-object v13, v3

    .end local v3    # "yearRange":Lkotlin/ranges/IntRange;
    .local v13, "yearRange":Lkotlin/ranges/IntRange;
    move-object v3, v9

    move-object v9, v4

    .end local v4    # "initialDisplayedMonthMillis":Ljava/lang/Long;
    .local v9, "initialDisplayedMonthMillis":Ljava/lang/Long;
    move-object/from16 v4, p6

    move-object v14, v5

    .end local v5    # "initialSelectedEndDateMillis":Ljava/lang/Long;
    .local v14, "initialSelectedEndDateMillis":Ljava/lang/Long;
    move v5, v10

    move-object v10, v6

    .end local v6    # "initialSelectedStartDateMillis":Ljava/lang/Long;
    .local v10, "initialSelectedStartDateMillis":Ljava/lang/Long;
    move v6, v11

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/DateRangePickerStateImpl;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/material3/DateRangePickerState;

    return-object v0
.end method

.method private static final updateDateSelection(JLjava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p0, "dateInMillis"    # J
    .param p2, "currentStartDateMillis"    # Ljava/lang/Long;
    .param p3, "currentEndDateMillis"    # Ljava/lang/Long;
    .param p4, "onDatesSelectionChange"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 889
    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 890
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 893
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 894
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p0, v1

    if-ltz v1, :cond_3

    .line 896
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 899
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :goto_0
    return-void
.end method
