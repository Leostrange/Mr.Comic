.class public final Landroidx/compose/foundation/text2/input/InputTransformation$Companion;
.super Ljava/lang/Object;
.source "InputTransformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text2/input/InputTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u00020\u000426\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/InputTransformation$Companion;",
        "",
        "()V",
        "byValue",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "transformation",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "current",
        "proposed",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/text2/input/InputTransformation$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text2/input/InputTransformation$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/InputTransformation$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text2/input/InputTransformation$Companion;->$$INSTANCE:Landroidx/compose/foundation/text2/input/InputTransformation$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final byValue(Lkotlin/jvm/functions/Function2;)Landroidx/compose/foundation/text2/input/InputTransformation;
    .locals 1
    .param p1, "transformation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroidx/compose/foundation/text2/input/InputTransformation;"
        }
    .end annotation

    .line 81
    new-instance v0, Landroidx/compose/foundation/text2/input/InputTransformationByValue;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text2/input/InputTransformationByValue;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Landroidx/compose/foundation/text2/input/InputTransformation;

    return-object v0
.end method
