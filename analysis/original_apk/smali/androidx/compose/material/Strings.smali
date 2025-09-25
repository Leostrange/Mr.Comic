.class public final Landroidx/compose/material/Strings;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/Strings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u0010\u0010\r\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material/Strings;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field private static final CloseDrawer:I

.field private static final CloseSheet:I

.field public static final Companion:Landroidx/compose/material/Strings$Companion;

.field private static final DefaultErrorMessage:I

.field private static final ExposedDropdownMenu:I

.field private static final NavigationMenu:I

.field private static final SliderRangeEnd:I

.field private static final SliderRangeStart:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/Strings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/Strings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    .line 28
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->CloseSheet:I

    .line 29
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    .line 31
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    .line 32
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material/Strings;->value:I

    return-void
.end method

.method public static final synthetic access$getCloseDrawer$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    return v0
.end method

.method public static final synthetic access$getCloseSheet$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->CloseSheet:I

    return v0
.end method

.method public static final synthetic access$getDefaultErrorMessage$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    return v0
.end method

.method public static final synthetic access$getExposedDropdownMenu$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    return v0
.end method

.method public static final synthetic access$getNavigationMenu$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    return v0
.end method

.method public static final synthetic access$getSliderRangeEnd$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    return v0
.end method

.method public static final synthetic access$getSliderRangeStart$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/material/Strings;
    .locals 1

    new-instance v0, Landroidx/compose/material/Strings;

    invoke-direct {v0, p0}, Landroidx/compose/material/Strings;-><init>(I)V

    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/material/Strings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/material/Strings;

    invoke-virtual {v0}, Landroidx/compose/material/Strings;->unbox-impl()I

    move-result v0

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hashCode-impl(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Strings(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0, p1}, Landroidx/compose/material/Strings;->equals-impl(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0}, Landroidx/compose/material/Strings;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    invoke-static {v0}, Landroidx/compose/material/Strings;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    return v0
.end method
