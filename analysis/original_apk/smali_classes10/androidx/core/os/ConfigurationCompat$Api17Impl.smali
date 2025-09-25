.class Landroidx/core/os/ConfigurationCompat$Api17Impl;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static setLocale(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "locales"    # Landroidx/core/os/LocaleListCompat;

    .line 74
    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 77
    :cond_0
    return-void
.end method
