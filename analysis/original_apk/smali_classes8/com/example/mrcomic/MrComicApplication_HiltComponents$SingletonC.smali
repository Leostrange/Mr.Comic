.class public abstract Lcom/example/mrcomic/MrComicApplication_HiltComponents$SingletonC;
.super Ljava/lang/Object;
.source "MrComicApplication_HiltComponents.java"

# interfaces
.implements Lcom/example/mrcomic/MrComicApplication_GeneratedInjector;
.implements Ldagger/hilt/android/flags/FragmentGetContextFix$FragmentGetContextFixEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
.implements Ldagger/hilt/components/SingletonComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Ldagger/hilt/android/internal/modules/ApplicationContextModule;,
        Lcom/example/mrcomic/DatabaseModule;,
        Ldagger/hilt/android/flags/HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;,
        Landroidx/hilt/work/HiltWrapper_WorkerFactoryModule;,
        Lcom/example/mrcomic/MrComicApplication_HiltComponents$ActivityRetainedCBuilderModule;,
        Lcom/example/mrcomic/MrComicApplication_HiltComponents$ServiceCBuilderModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/MrComicApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingletonC"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
