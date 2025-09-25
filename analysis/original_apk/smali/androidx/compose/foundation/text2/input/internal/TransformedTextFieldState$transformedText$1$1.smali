.class final Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransformedTextFieldState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;-><init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $transformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

.field final synthetic this$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/CodepointTransformation;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;->$transformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;
    .locals 3

    .line 64
    invoke-static {}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getCompanion$p()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text2/input/TextFieldState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/TextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;->$transformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;->access$calculateTransformedText(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text2/input/TextFieldCharSequence;Landroidx/compose/foundation/text2/input/CodepointTransformation;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$transformedText$1$1;->invoke()Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object v0

    return-object v0
.end method
