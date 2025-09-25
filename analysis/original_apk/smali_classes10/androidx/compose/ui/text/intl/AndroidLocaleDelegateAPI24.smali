.class public final Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;
.super Ljava/lang/Object;
.source "AndroidLocaleDelegate.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;",
        "Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;",
        "()V",
        "current",
        "Landroidx/compose/ui/text/intl/LocaleList;",
        "getCurrent",
        "()Landroidx/compose/ui/text/intl/LocaleList;",
        "lastLocaleList",
        "lastPlatformLocaleList",
        "Landroid/os/LocaleList;",
        "lock",
        "Landroidx/compose/ui/text/platform/SynchronizedObject;",
        "parseLanguageTag",
        "Landroidx/compose/ui/text/intl/PlatformLocale;",
        "languageTag",
        "",
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
.field private lastLocaleList:Landroidx/compose/ui/text/intl/LocaleList;

.field private lastPlatformLocaleList:Landroid/os/LocaleList;

.field private final lock:Landroidx/compose/ui/text/platform/SynchronizedObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 56
    return-void
.end method


# virtual methods
.method public getCurrent()Landroidx/compose/ui/text/intl/LocaleList;
    .locals 11

    .line 63
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    .line 64
    .local v0, "platformLocaleList":Landroid/os/LocaleList;
    iget-object v1, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    monitor-enter v1

    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-synchronized-AndroidLocaleDelegateAPI24$current$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lastLocaleList:Landroidx/compose/ui/text/intl/LocaleList;

    if-eqz v3, :cond_1

    .local v3, "it":Landroidx/compose/ui/text/intl/LocaleList;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$a$-let-AndroidLocaleDelegateAPI24$current$1$1":I
    iget-object v5, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lastPlatformLocaleList:Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v5, :cond_0

    .end local v2    # "$i$a$-synchronized-AndroidLocaleDelegateAPI24$current$1":I
    .end local v3    # "it":Landroidx/compose/ui/text/intl/LocaleList;
    .end local v4    # "$i$a$-let-AndroidLocaleDelegateAPI24$current$1$1":I
    monitor-exit v1

    return-object v3

    .line 68
    .restart local v2    # "$i$a$-synchronized-AndroidLocaleDelegateAPI24$current$1":I
    .restart local v3    # "it":Landroidx/compose/ui/text/intl/LocaleList;
    .restart local v4    # "$i$a$-let-AndroidLocaleDelegateAPI24$current$1$1":I
    :cond_0
    nop

    .line 66
    .end local v3    # "it":Landroidx/compose/ui/text/intl/LocaleList;
    .end local v4    # "$i$a$-let-AndroidLocaleDelegateAPI24$current$1$1":I
    :cond_1
    nop

    .line 70
    nop

    .line 71
    :try_start_1
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    move v6, v5

    .local v6, "position":I
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-List-AndroidLocaleDelegateAPI24$current$1$localeList$1":I
    new-instance v8, Landroidx/compose/ui/text/intl/Locale;

    new-instance v9, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-virtual {v0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    check-cast v9, Landroidx/compose/ui/text/intl/PlatformLocale;

    invoke-direct {v8, v9}, Landroidx/compose/ui/text/intl/Locale;-><init>(Landroidx/compose/ui/text/intl/PlatformLocale;)V

    .line 71
    .end local v6    # "position":I
    .end local v7    # "$i$a$-List-AndroidLocaleDelegateAPI24$current$1$localeList$1":I
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    check-cast v4, Ljava/util/List;

    .line 70
    new-instance v3, Landroidx/compose/ui/text/intl/LocaleList;

    invoke-direct {v3, v4}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 76
    .local v3, "localeList":Landroidx/compose/ui/text/intl/LocaleList;
    iput-object v0, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lastPlatformLocaleList:Landroid/os/LocaleList;

    .line 77
    iput-object v3, p0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->lastLocaleList:Landroidx/compose/ui/text/intl/LocaleList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    nop

    .line 64
    .end local v2    # "$i$a$-synchronized-AndroidLocaleDelegateAPI24$current$1":I
    .end local v3    # "localeList":Landroidx/compose/ui/text/intl/LocaleList;
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public parseLanguageTag(Ljava/lang/String;)Landroidx/compose/ui/text/intl/PlatformLocale;
    .locals 2
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 83
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocale;

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/AndroidLocale;-><init>(Ljava/util/Locale;)V

    check-cast v0, Landroidx/compose/ui/text/intl/PlatformLocale;

    return-object v0
.end method
