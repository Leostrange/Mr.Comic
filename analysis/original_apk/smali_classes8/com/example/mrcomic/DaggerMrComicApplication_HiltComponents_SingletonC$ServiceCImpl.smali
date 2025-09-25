.class final Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;
.super Lcom/example/mrcomic/MrComicApplication_HiltComponents$ServiceC;
.source "DaggerMrComicApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCImpl"
.end annotation


# instance fields
.field private final serviceCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;

.field private final singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "serviceParam"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Lcom/example/mrcomic/MrComicApplication_HiltComponents$ServiceC;-><init>()V

    .line 512
    iput-object p0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;->serviceCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;

    .line 515
    iput-object p1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ServiceCImpl;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V

    return-void
.end method
