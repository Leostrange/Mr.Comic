.class final Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;
.super Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewC;
.source "DaggerMrComicApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;


# direct methods
.method private constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "viewParam"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "viewParam"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewC;-><init>()V

    .line 330
    iput-object p0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;->viewCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;

    .line 334
    iput-object p1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 335
    iput-object p2, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;->activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 336
    iput-object p3, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;->activityCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewCImpl;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V

    return-void
.end method
