.class final Landroidx/compose/ui/tooling/data/Parameter;
.super Ljava/lang/Object;
.source "SlotTree.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/data/Parameter;",
        "",
        "sortedIndex",
        "",
        "inlineClass",
        "",
        "(ILjava/lang/String;)V",
        "getInlineClass",
        "()Ljava/lang/String;",
        "getSortedIndex",
        "()I",
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
.field private final inlineClass:Ljava/lang/String;

.field private final sortedIndex:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "sortedIndex"    # I
    .param p2, "inlineClass"    # Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Landroidx/compose/ui/tooling/data/Parameter;->sortedIndex:I

    .line 264
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/Parameter;->inlineClass:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 262
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 264
    const/4 p2, 0x0

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/tooling/data/Parameter;-><init>(ILjava/lang/String;)V

    .line 265
    return-void
.end method


# virtual methods
.method public final getInlineClass()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/Parameter;->inlineClass:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortedIndex()I
    .locals 1

    .line 263
    iget v0, p0, Landroidx/compose/ui/tooling/data/Parameter;->sortedIndex:I

    return v0
.end method
