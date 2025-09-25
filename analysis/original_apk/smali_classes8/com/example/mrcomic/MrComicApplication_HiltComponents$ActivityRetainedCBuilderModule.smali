.class interface abstract Lcom/example/mrcomic/MrComicApplication_HiltComponents$ActivityRetainedCBuilderModule;
.super Ljava/lang/Object;
.source "MrComicApplication_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/example/mrcomic/MrComicApplication_HiltComponents$ActivityRetainedC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/MrComicApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ActivityRetainedCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lcom/example/mrcomic/MrComicApplication_HiltComponents$ActivityRetainedC$Builder;)Ldagger/hilt/android/internal/builders/ActivityRetainedComponentBuilder;
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
