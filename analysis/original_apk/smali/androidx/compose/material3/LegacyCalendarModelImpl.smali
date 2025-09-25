.class public final Landroidx/compose/material3/LegacyCalendarModelImpl;
.super Landroidx/compose/material3/CalendarModel;
.source "LegacyCalendarModelImpl.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacyCalendarModelImpl.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyCalendarModelImpl.jvm.kt\nandroidx/compose/material3/LegacyCalendarModelImpl\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,244:1\n69#2,6:245\n*S KotlinDebug\n*F\n+ 1 LegacyCalendarModelImpl.jvm.kt\nandroidx/compose/material3/LegacyCalendarModelImpl\n*L\n60#1:245,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 02\u00020\u0001:\u00010B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J$\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0014\u0010\u001c\u001a\u00020\u001d2\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u0016J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010 \u001a\u00020!2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0007H\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0018\u0010&\u001a\u00020!2\u0006\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020\u0007H\u0016J\u001a\u0010)\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0011H\u0016J\u0018\u0010*\u001a\u00020!2\u0006\u0010\'\u001a\u00020!2\u0006\u0010+\u001a\u00020\u0007H\u0016J\u0008\u0010,\u001a\u00020\u0011H\u0016J\u0014\u0010-\u001a\u00020#*\u00020\u000b2\u0006\u0010.\u001a\u00020/H\u0002J\u000c\u0010-\u001a\u00020#*\u00020!H\u0002R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR&\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u00061"
    }
    d2 = {
        "Landroidx/compose/material3/LegacyCalendarModelImpl;",
        "Landroidx/compose/material3/CalendarModel;",
        "locale",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "(Ljava/util/Locale;)V",
        "firstDayOfWeek",
        "",
        "getFirstDayOfWeek",
        "()I",
        "today",
        "Landroidx/compose/material3/CalendarDate;",
        "getToday",
        "()Landroidx/compose/material3/CalendarDate;",
        "weekdayNames",
        "",
        "Lkotlin/Pair;",
        "",
        "getWeekdayNames",
        "()Ljava/util/List;",
        "dayInISO8601",
        "day",
        "formatWithPattern",
        "utcTimeMillis",
        "",
        "pattern",
        "getCanonicalDate",
        "timeInMillis",
        "getDateInputFormat",
        "Landroidx/compose/material3/DateInputFormat;",
        "getDayOfWeek",
        "date",
        "getMonth",
        "Landroidx/compose/material3/CalendarMonth;",
        "firstDayCalendar",
        "Ljava/util/Calendar;",
        "year",
        "month",
        "minusMonths",
        "from",
        "subtractedMonthsCount",
        "parse",
        "plusMonths",
        "addedMonthsCount",
        "toString",
        "toCalendar",
        "timeZone",
        "Ljava/util/TimeZone;",
        "Companion",
        "material3_release"
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

.field public static final Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

.field private static final utcTimeZone:Ljava/util/TimeZone;


# instance fields
.field private final firstDayOfWeek:I

.field private final weekdayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->$stable:I

    .line 189
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 17
    .param p1, "locale"    # Ljava/util/Locale;

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroidx/compose/material3/CalendarModel;-><init>(Ljava/util/Locale;)V

    .line 53
    invoke-static/range {p1 .. p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result v2

    iput v2, v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->firstDayOfWeek:I

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$weekdayNames_u24lambda_u241":Ljava/util/List;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$a$-buildList-LegacyCalendarModelImpl$weekdayNames$1":I
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "weekdays":[Ljava/lang/String;
    new-instance v6, Ljava/text/DateFormatSymbols;

    invoke-direct {v6, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "shortWeekdays":[Ljava/lang/String;
    const/4 v7, 0x2

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v7

    .local v7, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 245
    .local v8, "$i$f$fastForEachIndexed":I
    nop

    .line 246
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_0

    .line 247
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 248
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "day":Ljava/lang/String;
    move v13, v9

    .local v13, "index":I
    const/4 v14, 0x0

    .line 61
    .local v14, "$i$a$-fastForEachIndexed-LegacyCalendarModelImpl$weekdayNames$1$1":I
    new-instance v15, Lkotlin/Pair;

    add-int/lit8 v16, v13, 0x2

    aget-object v1, v6, v16

    invoke-direct {v15, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    nop

    .line 248
    .end local v12    # "day":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v14    # "$i$a$-fastForEachIndexed-LegacyCalendarModelImpl$weekdayNames$1$1":I
    nop

    .line 246
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 250
    .end local v9    # "index$iv":I
    :cond_0
    nop

    .line 64
    .end local v7    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEachIndexed":I
    new-instance v1, Lkotlin/Pair;

    const/4 v7, 0x1

    aget-object v8, v5, v7

    aget-object v7, v6, v7

    invoke-direct {v1, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    nop

    .line 55
    .end local v3    # "$this$weekdayNames_u24lambda_u241":Ljava/util/List;
    .end local v4    # "$i$a$-buildList-LegacyCalendarModelImpl$weekdayNames$1":I
    .end local v5    # "weekdays":[Ljava/lang/String;
    .end local v6    # "shortWeekdays":[Ljava/lang/String;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->weekdayNames:Ljava/util/List;

    .line 33
    return-void
.end method

.method public static final synthetic access$getUtcTimeZone$cp()Ljava/util/TimeZone;
    .locals 1

    .line 32
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method private final dayInISO8601(I)I
    .locals 2
    .param p1, "day"    # I

    .line 209
    add-int/lit8 v0, p1, 0x6

    const/4 v1, 0x7

    rem-int/2addr v0, v1

    .line 210
    .local v0, "shiftedDay":I
    if-nez v0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private final getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;
    .locals 9
    .param p1, "firstDayCalendar"    # Ljava/util/Calendar;

    .line 214
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    .line 215
    .local v0, "difference":I
    if-gez v0, :cond_0

    .line 216
    add-int/lit8 v1, v0, 0x7

    move v6, v1

    goto :goto_0

    .line 218
    :cond_0
    move v6, v0

    .line 215
    :goto_0
    nop

    .line 220
    .local v6, "daysFromStartOfWeekToFirstOfMonth":I
    new-instance v1, Landroidx/compose/material3/CalendarMonth;

    .line 221
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 222
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 223
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 224
    nop

    .line 225
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 220
    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/CalendarMonth;-><init>(IIIIJ)V

    return-object v1
.end method

.method private final toCalendar(Landroidx/compose/material3/CalendarDate;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 3
    .param p1, "$this$toCalendar"    # Landroidx/compose/material3/CalendarDate;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 236
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 237
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 238
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    return-object v0
.end method

.method private final toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;
    .locals 3
    .param p1, "$this$toCalendar"    # Landroidx/compose/material3/CalendarMonth;

    .line 230
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 231
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    return-object v0
.end method


# virtual methods
.method public formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "utcTimeMillis"    # J
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 139
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->Companion:Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;

    invoke-virtual {p0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getFormatterCache$material3_release()Ljava/util/Map;

    move-result-object v5

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/LegacyCalendarModelImpl$Companion;->formatWithPattern(JLjava/lang/String;Ljava/util/Locale;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalDate(J)Landroidx/compose/material3/CalendarDate;
    .locals 9
    .param p1, "timeInMillis"    # J

    .line 77
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 78
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 79
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    new-instance v1, Landroidx/compose/material3/CalendarDate;

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 85
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    .line 86
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 87
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 83
    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object v1
.end method

.method public getDateInputFormat(Ljava/util/Locale;)Landroidx/compose/material3/DateInputFormat;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 70
    nop

    .line 71
    nop

    .line 69
    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type java.text.SimpleDateFormat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 72
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroidx/compose/material3/CalendarModelKt;->datePatternAsInputFormat(Ljava/lang/String;)Landroidx/compose/material3/DateInputFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeek(Landroidx/compose/material3/CalendarDate;)I
    .locals 2
    .param p1, "date"    # Landroidx/compose/material3/CalendarDate;

    .line 116
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarDate;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->dayInISO8601(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->firstDayOfWeek:I

    return v0
.end method

.method public getMonth(II)Landroidx/compose/material3/CalendarMonth;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 107
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "firstDayCalendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 110
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    return-object v1
.end method

.method public getMonth(J)Landroidx/compose/material3/CalendarMonth;
    .locals 3
    .param p1, "timeInMillis"    # J

    .line 92
    sget-object v0, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, "firstDayCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 94
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 96
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 98
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    return-object v1
.end method

.method public getMonth(Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/CalendarMonth;
    .locals 2
    .param p1, "date"    # Landroidx/compose/material3/CalendarDate;

    .line 103
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(II)Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public getToday()Landroidx/compose/material3/CalendarDate;
    .locals 11

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "systemCalendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 39
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 40
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 42
    nop

    .line 44
    .local v1, "utcOffset":I
    new-instance v8, Landroidx/compose/material3/CalendarDate;

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 46
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 47
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 48
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    int-to-long v9, v1

    add-long/2addr v6, v9

    .line 44
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object v8
.end method

.method public getWeekdayNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/compose/material3/LegacyCalendarModelImpl;->weekdayNames:Ljava/util/List;

    return-object v0
.end method

.method public minusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 3
    .param p1, "from"    # Landroidx/compose/material3/CalendarMonth;
    .param p2, "subtractedMonthsCount"    # I

    .line 128
    if-gtz p2, :cond_0

    return-object p1

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "earlierMonth":Ljava/util/Calendar;
    const/4 v1, 0x2

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 132
    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/material3/CalendarDate;
    .locals 11
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v1, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 145
    nop

    .line 146
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 147
    .local v2, "parsedDate":Ljava/util/Date;
    :cond_0
    sget-object v3, Landroidx/compose/material3/LegacyCalendarModelImpl;->utcTimeZone:Ljava/util/TimeZone;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 148
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    new-instance v10, Landroidx/compose/material3/CalendarDate;

    .line 150
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 151
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    .line 152
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 153
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 149
    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v10

    .end local v2    # "parsedDate":Ljava/util/Date;
    .end local v3    # "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "pe":Ljava/text/ParseException;
    nop

    .line 145
    .end local v2    # "pe":Ljava/text/ParseException;
    :goto_0
    return-object v1
.end method

.method public plusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 2
    .param p1, "from"    # Landroidx/compose/material3/CalendarMonth;
    .param p2, "addedMonthsCount"    # I

    .line 120
    if-gtz p2, :cond_0

    return-object p1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/LegacyCalendarModelImpl;->toCalendar(Landroidx/compose/material3/CalendarMonth;)Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, "laterMonth":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 124
    invoke-direct {p0, v0}, Landroidx/compose/material3/LegacyCalendarModelImpl;->getMonth(Ljava/util/Calendar;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 161
    const-string/jumbo v0, "LegacyCalendarModel"

    return-object v0
.end method
