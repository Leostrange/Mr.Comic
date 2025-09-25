.class final Landroidx/compose/foundation/text2/input/EmptyChangeList;
.super Ljava/lang/Object;
.source "TextFieldBuffer.kt"

# interfaces
.implements Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/EmptyChangeList;",
        "Landroidx/compose/foundation/text2/input/TextFieldBuffer$ChangeList;",
        "()V",
        "changeCount",
        "",
        "getChangeCount",
        "()I",
        "getOriginalRange",
        "Landroidx/compose/ui/text/TextRange;",
        "changeIndex",
        "getOriginalRange--jx7JFs",
        "(I)J",
        "getRange",
        "getRange--jx7JFs",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text2/input/EmptyChangeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text2/input/EmptyChangeList;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/EmptyChangeList;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text2/input/EmptyChangeList;->INSTANCE:Landroidx/compose/foundation/text2/input/EmptyChangeList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeCount()I
    .locals 1

    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalRange--jx7JFs(I)J
    .locals 1
    .param p1, "changeIndex"    # I

    .line 643
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getRange--jx7JFs(I)J
    .locals 1
    .param p1, "changeIndex"    # I

    .line 639
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
