.class public final Landroidx/compose/ui/text/android/selection/WordBoundary;
.super Ljava/lang/Object;
.source "WordBoundary.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/selection/WordBoundary;",
        "",
        "locale",
        "Ljava/util/Locale;",
        "text",
        "",
        "(Ljava/util/Locale;Ljava/lang/CharSequence;)V",
        "wordIterator",
        "Landroidx/compose/ui/text/android/selection/WordIterator;",
        "getWordEnd",
        "",
        "offset",
        "getWordStart",
        "ui-text_release"
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
.field private final wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/android/selection/WordBoundary;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, p2, v1, v2, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 36
    return-void
.end method


# virtual methods
.method public final getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 74
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 76
    .local v0, "retOffset":I
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationEnd(I)I

    move-result v1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v1

    .line 75
    :goto_0
    move v0, v1

    .line 82
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 83
    move v1, p1

    goto :goto_1

    .line 84
    :cond_1
    move v1, v0

    .line 82
    :goto_1
    return v1
.end method

.method public final getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 56
    .local v0, "retOffset":I
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationBeginning(I)I

    move-result v1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v1

    .line 55
    :goto_0
    move v0, v1

    .line 63
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 64
    move v1, p1

    goto :goto_1

    .line 65
    :cond_1
    move v1, v0

    .line 63
    :goto_1
    return v1
.end method
