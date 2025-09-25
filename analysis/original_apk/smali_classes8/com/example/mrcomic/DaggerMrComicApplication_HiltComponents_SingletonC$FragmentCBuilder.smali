.class final Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;
.super Ljava/lang/Object;
.source "DaggerMrComicApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/example/mrcomic/MrComicApplication_HiltComponents$FragmentC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private final singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 134
    iput-object p2, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 135
    iput-object p3, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->activityCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/example/mrcomic/MrComicApplication_HiltComponents$FragmentC;
    .locals 8

    .line 146
    iget-object v0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    const-class v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 147
    new-instance v0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCImpl;

    iget-object v3, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->singletonCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->activityRetainedCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v5, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->activityCImpl:Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v6, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCImpl;-><init>(Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/FragmentComponent;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->build()Lcom/example/mrcomic/MrComicApplication_HiltComponents$FragmentC;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Landroidx/fragment/app/Fragment;)Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    .line 141
    return-object p0
.end method

.method public bridge synthetic fragment(Landroidx/fragment/app/Fragment;)Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;->fragment(Landroidx/fragment/app/Fragment;)Lcom/example/mrcomic/DaggerMrComicApplication_HiltComponents_SingletonC$FragmentCBuilder;

    move-result-object p1

    return-object p1
.end method
