.class public final Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;
.super Lcom/mrcomic/core/data/cache/PreloadStatus;
.source "PreloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrcomic/core/data/cache/PreloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;",
        "Lcom/mrcomic/core/data/cache/PreloadStatus;",
        "<init>",
        "()V",
        "core-data_debug"
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
.field public static final INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;

    invoke-direct {v0}, Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;-><init>()V

    sput-object v0, Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;->INSTANCE:Lcom/mrcomic/core/data/cache/PreloadStatus$Completed;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mrcomic/core/data/cache/PreloadStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
