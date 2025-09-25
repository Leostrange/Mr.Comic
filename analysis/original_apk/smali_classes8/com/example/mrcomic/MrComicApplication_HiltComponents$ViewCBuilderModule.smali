.class interface abstract Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewCBuilderModule;
.super Ljava/lang/Object;
.source "MrComicApplication_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/MrComicApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lcom/example/mrcomic/MrComicApplication_HiltComponents$ViewC$Builder;)Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method
