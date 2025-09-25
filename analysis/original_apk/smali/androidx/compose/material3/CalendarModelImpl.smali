.class public final Landroidx/compose/material3/CalendarModelImpl;
.super Landroidx/compose/material3/CalendarModel;
.source "CalendarModelImpl.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/CalendarModelImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalendarModelImpl.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CalendarModelImpl.android.kt\nandroidx/compose/material3/CalendarModelImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,235:1\n11335#2:236\n11670#2,3:237\n*S KotlinDebug\n*F\n+ 1 CalendarModelImpl.android.kt\nandroidx/compose/material3/CalendarModelImpl\n*L\n62#1:236\n62#1:237,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0001\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J$\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u0016J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\u0014\u0010\u001a\u001a\u00020\u001b2\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u0007H\u0016J\u001a\u0010\'\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0016J\u0018\u0010(\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u0007H\u0016J\u0008\u0010*\u001a\u00020\u0011H\u0016J\u000c\u0010+\u001a\u00020!*\u00020\u000bH\u0002J\u000c\u0010+\u001a\u00020!*\u00020\u001fH\u0002R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR&\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/compose/material3/CalendarModelImpl;",
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
        "firstDayLocalDate",
        "Ljava/time/LocalDate;",
        "year",
        "month",
        "minusMonths",
        "from",
        "subtractedMonthsCount",
        "parse",
        "plusMonths",
        "addedMonthsCount",
        "toString",
        "toLocalDate",
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

.field public static final Companion:Landroidx/compose/material3/CalendarModelImpl$Companion;

.field private static final utcTimeZoneId:Ljava/time/ZoneId;


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

    new-instance v0, Landroidx/compose/material3/CalendarModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/CalendarModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/CalendarModelImpl;->Companion:Landroidx/compose/material3/CalendarModelImpl$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/CalendarModelImpl;->$stable:I

    .line 187
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 14
    .param p1, "locale"    # Ljava/util/Locale;

    .line 43
    invoke-direct {p0, p1}, Landroidx/compose/material3/CalendarModel;-><init>(Ljava/util/Locale;)V

    .line 57
    invoke-static {p1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    iput v0, p0, Landroidx/compose/material3/CalendarModelImpl;->firstDayOfWeek:I

    .line 61
    move-object v0, p1

    .local v0, "$this$weekdayNames_u24lambda_u241":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-with-CalendarModelImpl$weekdayNames$1":I
    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v2

    .local v2, "$this$map$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 236
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 237
    .local v6, "$i$f$mapTo":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 238
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Ljava/time/DayOfWeek;
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$a$-map-CalendarModelImpl$weekdayNames$1$1":I
    nop

    .line 64
    sget-object v12, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 65
    nop

    .line 63
    invoke-virtual {v10, v12, v0}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 66
    nop

    .line 67
    sget-object v13, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 68
    nop

    .line 66
    invoke-virtual {v10, v13, v0}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 63
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 238
    .end local v10    # "it":Ljava/time/DayOfWeek;
    .end local v11    # "$i$a$-map-CalendarModelImpl$weekdayNames$1$1":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 239
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 236
    nop

    .line 62
    .end local v2    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$map":I
    nop

    .line 61
    .end local v0    # "$this$weekdayNames_u24lambda_u241":Ljava/util/Locale;
    .end local v1    # "$i$a$-with-CalendarModelImpl$weekdayNames$1":I
    iput-object v4, p0, Landroidx/compose/material3/CalendarModelImpl;->weekdayNames:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static final synthetic access$getUtcTimeZoneId$cp()Ljava/time/ZoneId;
    .locals 1

    .line 41
    sget-object v0, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    return-object v0
.end method

.method private final getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;
    .locals 9
    .param p1, "firstDayLocalDate"    # Ljava/time/LocalDate;

    .line 205
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarModelImpl;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    .line 206
    .local v0, "difference":I
    if-gez v0, :cond_0

    .line 207
    add-int/lit8 v1, v0, 0x7

    move v6, v1

    goto :goto_0

    .line 209
    :cond_0
    move v6, v0

    .line 206
    :goto_0
    nop

    .line 212
    .local v6, "daysFromStartOfWeekToFirstOfMonth":I
    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 211
    nop

    .line 214
    .local v7, "firstDayEpochMillis":J
    new-instance v1, Landroidx/compose/material3/CalendarMonth;

    .line 215
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    .line 216
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    .line 217
    invoke-virtual {p1}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v5

    .line 218
    nop

    .line 219
    nop

    .line 214
    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/CalendarMonth;-><init>(IIIIJ)V

    return-object v1
.end method

.method private final toLocalDate(Landroidx/compose/material3/CalendarDate;)Ljava/time/LocalDate;
    .locals 3
    .param p1, "$this$toLocalDate"    # Landroidx/compose/material3/CalendarDate;

    .line 229
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result v0

    .line 230
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getDayOfMonth()I

    move-result v2

    .line 228
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private final toLocalDate(Landroidx/compose/material3/CalendarMonth;)Ljava/time/LocalDate;
    .locals 2
    .param p1, "$this$toLocalDate"    # Landroidx/compose/material3/CalendarMonth;

    .line 224
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public formatWithPattern(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "utcTimeMillis"    # J
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 137
    sget-object v0, Landroidx/compose/material3/CalendarModelImpl;->Companion:Landroidx/compose/material3/CalendarModelImpl$Companion;

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarModelImpl;->getFormatterCache$material3_release()Ljava/util/Map;

    move-result-object v5

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/CalendarModelImpl$Companion;->formatWithPattern(JLjava/lang/String;Ljava/util/Locale;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalDate(J)Landroidx/compose/material3/CalendarDate;
    .locals 10
    .param p1, "timeInMillis"    # J

    .line 86
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 85
    nop

    .line 87
    .local v0, "localDate":Ljava/time/LocalDate;
    new-instance v7, Landroidx/compose/material3/CalendarDate;

    .line 88
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    .line 89
    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    .line 90
    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    .line 91
    invoke-virtual {v0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v5}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v5

    const/16 v1, 0x3e8

    int-to-long v8, v1

    mul-long/2addr v5, v8

    .line 87
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object v7
.end method

.method public getDateInputFormat(Ljava/util/Locale;)Landroidx/compose/material3/DateInputFormat;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 76
    sget-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    .line 77
    nop

    .line 78
    invoke-static {p1}, Ljava/time/chrono/Chronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v1

    .line 79
    nop

    .line 75
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroidx/compose/material3/CalendarModelKt;->datePatternAsInputFormat(Ljava/lang/String;)Landroidx/compose/material3/DateInputFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeek(Landroidx/compose/material3/CalendarDate;)I
    .locals 1
    .param p1, "date"    # Landroidx/compose/material3/CalendarDate;

    .line 114
    invoke-direct {p0, p1}, Landroidx/compose/material3/CalendarModelImpl;->toLocalDate(Landroidx/compose/material3/CalendarDate;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 57
    iget v0, p0, Landroidx/compose/material3/CalendarModelImpl;->firstDayOfWeek:I

    return v0
.end method

.method public getMonth(II)Landroidx/compose/material3/CalendarMonth;
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 110
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/CalendarModelImpl;->getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public getMonth(J)Landroidx/compose/material3/CalendarMonth;
    .locals 2
    .param p1, "timeInMillis"    # J

    .line 96
    nop

    .line 98
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 99
    sget-object v1, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->withDayOfMonth(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Landroidx/compose/material3/CalendarModelImpl;->getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public getMonth(Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/CalendarMonth;
    .locals 3
    .param p1, "date"    # Landroidx/compose/material3/CalendarDate;

    .line 106
    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/CalendarDate;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/CalendarModelImpl;->getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    return-object v0
.end method

.method public getToday()Landroidx/compose/material3/CalendarDate;
    .locals 8

    .line 47
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 48
    .local v0, "systemLocalDate":Ljava/time/LocalDate;
    new-instance v7, Landroidx/compose/material3/CalendarDate;

    .line 49
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    .line 50
    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    .line 51
    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    .line 52
    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 53
    sget-object v5, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v1, v5}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 48
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V

    return-object v7
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

    .line 59
    iget-object v0, p0, Landroidx/compose/material3/CalendarModelImpl;->weekdayNames:Ljava/util/List;

    return-object v0
.end method

.method public minusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 3
    .param p1, "from"    # Landroidx/compose/material3/CalendarMonth;
    .param p2, "subtractedMonthsCount"    # I

    .line 126
    if-gtz p2, :cond_0

    return-object p1

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/CalendarModelImpl;->toLocalDate(Landroidx/compose/material3/CalendarMonth;)Ljava/time/LocalDate;

    move-result-object v0

    .line 129
    .local v0, "firstDayLocalDate":Ljava/time/LocalDate;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->minusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 130
    .local v1, "earlierMonth":Ljava/time/LocalDate;
    invoke-direct {p0, v1}, Landroidx/compose/material3/CalendarModelImpl;->getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v2

    return-object v2
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/material3/CalendarDate;
    .locals 9
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 141
    invoke-static {p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 142
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    nop

    .line 143
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v1

    .line 144
    .local v1, "localDate":Ljava/time/LocalDate;
    new-instance v8, Landroidx/compose/material3/CalendarDate;

    .line 145
    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    .line 146
    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v4

    .line 147
    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v5

    .line 148
    sget-object v2, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 149
    sget-object v6, Landroidx/compose/material3/CalendarModelImpl;->utcTimeZoneId:Ljava/time/ZoneId;

    invoke-virtual {v2, v6}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 144
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/CalendarDate;-><init>(IIIJ)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "localDate":Ljava/time/LocalDate;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "pe":Ljava/time/format/DateTimeParseException;
    const/4 v8, 0x0

    .line 142
    .end local v1    # "pe":Ljava/time/format/DateTimeParseException;
    :goto_0
    return-object v8
.end method

.method public plusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;
    .locals 3
    .param p1, "from"    # Landroidx/compose/material3/CalendarMonth;
    .param p2, "addedMonthsCount"    # I

    .line 118
    if-gtz p2, :cond_0

    return-object p1

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/CalendarModelImpl;->toLocalDate(Landroidx/compose/material3/CalendarMonth;)Ljava/time/LocalDate;

    move-result-object v0

    .line 121
    .local v0, "firstDayLocalDate":Ljava/time/LocalDate;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 122
    .local v1, "laterMonth":Ljava/time/LocalDate;
    invoke-direct {p0, v1}, Landroidx/compose/material3/CalendarModelImpl;->getMonth(Ljava/time/LocalDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "CalendarModel"

    return-object v0
.end method
