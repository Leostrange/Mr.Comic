.class final Landroidx/compose/ui/tooling/data/SourceLocationInfo;
.super Ljava/lang/Object;
.source "SlotTree.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\n\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/data/SourceLocationInfo;",
        "",
        "lineNumber",
        "",
        "offset",
        "length",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getLength",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getLineNumber",
        "getOffset",
        "ui-tooling-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final length:Ljava/lang/Integer;

.field private final lineNumber:Ljava/lang/Integer;

.field private final offset:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "lineNumber"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "length"    # Ljava/lang/Integer;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->lineNumber:Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->offset:Ljava/lang/Integer;

    iput-object p3, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->length:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getLength()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->length:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLineNumber()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->lineNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOffset()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/SourceLocationInfo;->offset:Ljava/lang/Integer;

    return-object v0
.end method
