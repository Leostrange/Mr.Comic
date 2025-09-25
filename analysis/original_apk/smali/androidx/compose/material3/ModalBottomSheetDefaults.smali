.class public final Landroidx/compose/material3/ModalBottomSheetDefaults;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/material3/ModalBottomSheetDefaults;",
        "",
        "()V",
        "properties",
        "Landroidx/compose/material3/ModalBottomSheetProperties;",
        "securePolicy",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "isFocusable",
        "",
        "shouldDismissOnBackPress",
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

.field public static final INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ModalBottomSheetDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic properties$default(Landroidx/compose/material3/ModalBottomSheetDefaults;Landroidx/compose/ui/window/SecureFlagPolicy;ZZILjava/lang/Object;)Landroidx/compose/material3/ModalBottomSheetProperties;
    .locals 1

    .line 344
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 345
    sget-object p1, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 344
    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 346
    move p2, v0

    .line 344
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 347
    move p3, v0

    .line 344
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetDefaults;->properties(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final properties(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)Landroidx/compose/material3/ModalBottomSheetProperties;
    .locals 1
    .param p1, "securePolicy"    # Landroidx/compose/ui/window/SecureFlagPolicy;
    .param p2, "isFocusable"    # Z
    .param p3, "shouldDismissOnBackPress"    # Z

    .line 348
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-object v0
.end method
