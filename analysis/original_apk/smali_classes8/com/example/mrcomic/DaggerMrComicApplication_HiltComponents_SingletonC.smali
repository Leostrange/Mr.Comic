.class public final Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "DaggerMrComicApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$Builder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCBuilder;,
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static builder()Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$Builder;
    .locals 2

    .line 53
    new-instance v0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$Builder;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$Builder-IA;)V

    return-object v0
.end method
