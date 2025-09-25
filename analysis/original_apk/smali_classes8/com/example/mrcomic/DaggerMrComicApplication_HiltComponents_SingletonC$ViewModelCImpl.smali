.class final Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;
.super Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewModelC;
.source "DaggerMrComicApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private comicViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/example/mrcomic/ComicViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewModelCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method private constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p4, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
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
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewModelC;-><init>()V

    .line 392
    iput-object p0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;

    .line 399
    iput-object p1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 400
    iput-object p2, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 402
    invoke-direct {p0, p3, p4}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-void
.end method

.method private initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 5
    .param p1, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p2, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->comicViewModelProvider:Ldagger/internal/Provider;

    .line 410
    return-void
.end method


# virtual methods
.method public getHiltViewModelAssistedMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHiltViewModelMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;"
        }
    .end annotation

    .line 414
    const-string v0, "com.example.mrcomic.ComicViewModel"

    iget-object v1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ViewModelCImpl;->comicViewModelProvider:Ldagger/internal/Provider;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
