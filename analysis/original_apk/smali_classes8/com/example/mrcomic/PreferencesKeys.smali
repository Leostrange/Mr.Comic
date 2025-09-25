.class public final Lcom/example/mrcomic/PreferencesKeys;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/example/mrcomic/PreferencesKeys;",
        "",
        "<init>",
        "()V",
        "DARK_THEME",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "getDARK_THEME",
        "()Landroidx/datastore/preferences/core/Preferences$Key;",
        "READING_MODE",
        "",
        "getREADING_MODE",
        "SORT_ORDER",
        "getSORT_ORDER",
        "FONT_SIZE",
        "",
        "getFONT_SIZE",
        "FONT_STYLE",
        "getFONT_STYLE",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final DARK_THEME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_SIZE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_STYLE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/example/mrcomic/PreferencesKeys;

.field private static final READING_MODE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_ORDER:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/mrcomic/PreferencesKeys;

    invoke-direct {v0}, Lcom/example/mrcomic/PreferencesKeys;-><init>()V

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->INSTANCE:Lcom/example/mrcomic/PreferencesKeys;

    .line 97
    const-string v0, "dark_theme"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->DARK_THEME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 98
    const-string v0, "reading_mode"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->READING_MODE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 99
    const-string v0, "sort_order"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->SORT_ORDER:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 100
    const-string v0, "font_size"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->floatKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->FONT_SIZE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 101
    const-string v0, "font_style"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/PreferencesKeys;->FONT_STYLE:Landroidx/datastore/preferences/core/Preferences$Key;

    const/16 v0, 0x8

    sput v0, Lcom/example/mrcomic/PreferencesKeys;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDARK_THEME()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/example/mrcomic/PreferencesKeys;->DARK_THEME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getFONT_SIZE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/example/mrcomic/PreferencesKeys;->FONT_SIZE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getFONT_STYLE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/example/mrcomic/PreferencesKeys;->FONT_STYLE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getREADING_MODE()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/example/mrcomic/PreferencesKeys;->READING_MODE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getSORT_ORDER()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/example/mrcomic/PreferencesKeys;->SORT_ORDER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method
