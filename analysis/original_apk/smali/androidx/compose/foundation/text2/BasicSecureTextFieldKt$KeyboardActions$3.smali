.class final Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicSecureTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->KeyboardActions(Landroidx/compose/foundation/text2/input/ImeActionHandler;)Landroidx/compose/foundation/text/KeyboardActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/text/KeyboardActionScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/text/KeyboardActionScope;",
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
.field final synthetic $onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 462
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/KeyboardActionScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;->invoke(Landroidx/compose/foundation/text/KeyboardActionScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/text/KeyboardActionScope;)V
    .locals 2
    .param p1, "$this$$receiver"    # Landroidx/compose/foundation/text/KeyboardActionScope;

    .line 463
    iget-object v0, p0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$KeyboardActions$3;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/foundation/text2/input/ImeActionHandler;->onImeAction-KlQnJC8(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    sget-object v0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/foundation/text/KeyboardActionScope;->defaultKeyboardAction-KlQnJC8(I)V

    .line 466
    :cond_0
    return-void
.end method
