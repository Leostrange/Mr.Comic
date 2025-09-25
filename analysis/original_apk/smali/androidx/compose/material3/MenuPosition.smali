.class public final Landroidx/compose/material3/MenuPosition;
.super Ljava/lang/Object;
.source "MenuPosition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/MenuPosition$Horizontal;,
        Landroidx/compose/material3/MenuPosition$Vertical;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material3/MenuPosition;",
        "",
        "()V",
        "bottomToAnchorTop",
        "Landroidx/compose/material3/MenuPosition$Vertical;",
        "offset",
        "",
        "bottomToWindowBottom",
        "margin",
        "centerToAnchorTop",
        "endToAnchorEnd",
        "Landroidx/compose/material3/MenuPosition$Horizontal;",
        "leftToWindowLeft",
        "rightToWindowRight",
        "startToAnchorStart",
        "topToAnchorBottom",
        "topToWindowTop",
        "Horizontal",
        "Vertical",
        "material3_release"
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
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/MenuPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/MenuPosition;

    invoke-direct {v0}, Landroidx/compose/material3/MenuPosition;-><init>()V

    sput-object v0, Landroidx/compose/material3/MenuPosition;->INSTANCE:Landroidx/compose/material3/MenuPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic bottomToAnchorTop$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 0

    .line 140
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->bottomToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bottomToWindowBottom$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 0

    .line 178
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->bottomToWindowBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic centerToAnchorTop$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 0

    .line 151
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->centerToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic endToAnchorEnd$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 0

    .line 92
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->endToAnchorEnd(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic leftToWindowLeft$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 0

    .line 106
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->leftToWindowLeft(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rightToWindowRight$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 0

    .line 119
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->rightToWindowRight(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic startToAnchorStart$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 0

    .line 78
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->startToAnchorStart(I)Landroidx/compose/material3/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic topToAnchorBottom$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 0

    .line 129
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->topToAnchorBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic topToWindowTop$default(Landroidx/compose/material3/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 0

    .line 165
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuPosition;->topToWindowTop(I)Landroidx/compose/material3/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bottomToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 3
    .param p1, "offset"    # I

    .line 141
    new-instance v0, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;

    .line 142
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 143
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 144
    nop

    .line 141
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Vertical;

    .line 145
    return-object v0
.end method

.method public final bottomToWindowBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 2
    .param p1, "margin"    # I

    .line 179
    new-instance v0, Landroidx/compose/material3/WindowAlignmentMarginPosition$Vertical;

    .line 180
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 181
    nop

    .line 179
    invoke-direct {v0, v1, p1}, Landroidx/compose/material3/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Vertical;

    .line 182
    return-object v0
.end method

.method public final centerToAnchorTop(I)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 3
    .param p1, "offset"    # I

    .line 152
    new-instance v0, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;

    .line 153
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 154
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 155
    nop

    .line 152
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Vertical;

    .line 156
    return-object v0
.end method

.method public final endToAnchorEnd(I)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 3
    .param p1, "offset"    # I

    .line 93
    new-instance v0, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Horizontal;

    .line 94
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 95
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    .line 96
    nop

    .line 93
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 97
    return-object v0
.end method

.method public final leftToWindowLeft(I)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 2
    .param p1, "margin"    # I

    .line 107
    new-instance v0, Landroidx/compose/material3/WindowAlignmentMarginPosition$Horizontal;

    .line 108
    sget-object v1, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    invoke-virtual {v1}, Landroidx/compose/ui/AbsoluteAlignment;->getLeft()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 109
    nop

    .line 107
    invoke-direct {v0, v1, p1}, Landroidx/compose/material3/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 110
    return-object v0
.end method

.method public final rightToWindowRight(I)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 2
    .param p1, "margin"    # I

    .line 120
    new-instance v0, Landroidx/compose/material3/WindowAlignmentMarginPosition$Horizontal;

    .line 121
    sget-object v1, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    invoke-virtual {v1}, Landroidx/compose/ui/AbsoluteAlignment;->getRight()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 122
    nop

    .line 120
    invoke-direct {v0, v1, p1}, Landroidx/compose/material3/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 123
    return-object v0
.end method

.method public final startToAnchorStart(I)Landroidx/compose/material3/MenuPosition$Horizontal;
    .locals 3
    .param p1, "offset"    # I

    .line 79
    new-instance v0, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Horizontal;

    .line 80
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 81
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    .line 82
    nop

    .line 79
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Horizontal;

    .line 83
    return-object v0
.end method

.method public final topToAnchorBottom(I)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 3
    .param p1, "offset"    # I

    .line 130
    new-instance v0, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;

    .line 131
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 132
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 133
    nop

    .line 130
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/material3/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Vertical;

    .line 134
    return-object v0
.end method

.method public final topToWindowTop(I)Landroidx/compose/material3/MenuPosition$Vertical;
    .locals 2
    .param p1, "margin"    # I

    .line 166
    new-instance v0, Landroidx/compose/material3/WindowAlignmentMarginPosition$Vertical;

    .line 167
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 168
    nop

    .line 166
    invoke-direct {v0, v1, p1}, Landroidx/compose/material3/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    check-cast v0, Landroidx/compose/material3/MenuPosition$Vertical;

    .line 169
    return-object v0
.end method
