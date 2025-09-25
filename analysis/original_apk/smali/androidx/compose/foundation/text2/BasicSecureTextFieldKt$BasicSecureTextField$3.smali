.class final Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicSecureTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField-mMrxcSU(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicSecureTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicSecureTextField.kt\nandroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,523:1\n1#2:524\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

.field final synthetic $cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

.field final synthetic $enabled:Z

.field final synthetic $imeAction:I

.field final synthetic $inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $keyboardType:I

.field final synthetic $onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

.field final synthetic $onTextLayout:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $revealLastTypedEnabled:Z

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $secureTextFieldController:Landroidx/compose/foundation/text2/SecureTextFieldController;

.field final synthetic $secureTextFieldModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $state:Landroidx/compose/foundation/text2/input/TextFieldState;

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/SecureTextFieldController;IILandroidx/compose/foundation/text2/input/ImeActionHandler;Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/foundation/text2/SecureTextFieldController;",
            "II",
            "Landroidx/compose/foundation/text2/input/ImeActionHandler;",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text2/input/CodepointTransformation;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$revealLastTypedEnabled:Z

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$secureTextFieldController:Landroidx/compose/foundation/text2/SecureTextFieldController;

    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$keyboardType:I

    move/from16 v5, p5

    iput v5, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$imeAction:I

    move-object/from16 v6, p6

    iput-object v6, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$state:Landroidx/compose/foundation/text2/input/TextFieldState;

    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$secureTextFieldModifier:Landroidx/compose/ui/Modifier;

    move/from16 v9, p9

    iput-boolean v9, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$enabled:Z

    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$onTextLayout:Lkotlin/jvm/functions/Function2;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 323
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "C323@17492L1033:BasicSecureTextField.kt#g98mwb"

    move-object/from16 v10, p1

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 324
    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 324
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text2.BasicSecureTextField.<anonymous> (BasicSecureTextField.kt:323)"

    const v4, -0x54589c56

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 329
    :cond_2
    iget-boolean v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$revealLastTypedEnabled:Z

    if-eqz v2, :cond_3

    .line 330
    iget-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    iget-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$secureTextFieldController:Landroidx/compose/foundation/text2/SecureTextFieldController;

    invoke-virtual {v3}, Landroidx/compose/foundation/text2/SecureTextFieldController;->getPasswordRevealFilter()Landroidx/compose/foundation/text2/PasswordRevealFilter;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text2/input/InputTransformation;

    invoke-static {v2, v3}, Landroidx/compose/foundation/text2/input/InputTransformationKt;->thenOrNull(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    .line 331
    :cond_3
    iget-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    move-object v7, v2

    .line 329
    :goto_1
    nop

    .line 335
    sget-object v2, Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text2/input/TextFieldLineLimits$SingleLine;

    .line 337
    new-instance v9, Landroidx/compose/foundation/text/KeyboardOptions;

    const/4 v12, 0x0

    .line 338
    const/4 v13, 0x0

    .line 339
    iget v14, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$keyboardType:I

    .line 340
    iget v15, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$imeAction:I

    .line 337
    const/16 v16, 0x0

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 342
    iget-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    if-eqz v3, :cond_5

    .line 524
    .local v3, "it":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    const/4 v4, 0x0

    .line 342
    .local v4, "$i$a$-let-BasicSecureTextFieldKt$BasicSecureTextField$3$1":I
    new-instance v5, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3$1$1;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3$1$1;-><init>(Landroidx/compose/foundation/text2/input/ImeActionHandler;)V

    check-cast v5, Landroidx/compose/foundation/text2/input/ImeActionHandler;

    invoke-static {v5}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->access$KeyboardActions(Landroidx/compose/foundation/text2/input/ImeActionHandler;)Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    .end local v3    # "it":Landroidx/compose/foundation/text2/input/ImeActionHandler;
    .end local v4    # "$i$a$-let-BasicSecureTextFieldKt$BasicSecureTextField$3$1":I
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v18, v3

    goto :goto_3

    .line 343
    :cond_5
    :goto_2
    sget-object v3, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v3

    move-object/from16 v18, v3

    .line 342
    :goto_3
    nop

    .line 325
    iget-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$state:Landroidx/compose/foundation/text2/input/TextFieldState;

    .line 326
    iget-object v4, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$secureTextFieldModifier:Landroidx/compose/ui/Modifier;

    .line 327
    iget-boolean v5, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$enabled:Z

    .line 328
    const/4 v6, 0x0

    .line 329
    nop

    .line 332
    iget-object v8, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 337
    nop

    .line 342
    nop

    .line 335
    move-object v11, v2

    check-cast v11, Landroidx/compose/foundation/text2/input/TextFieldLineLimits;

    .line 344
    iget-object v12, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$onTextLayout:Lkotlin/jvm/functions/Function2;

    .line 333
    iget-object v13, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 334
    iget-object v14, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 345
    iget-object v15, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$codepointTransformation:Landroidx/compose/foundation/text2/input/CodepointTransformation;

    .line 346
    iget-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    move-object/from16 v16, v2

    .line 336
    iget-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v17, v2

    const v19, 0x6000c00

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 324
    move-object/from16 v10, v18

    move-object/from16 v18, p1

    invoke-static/range {v3 .. v21}, Landroidx/compose/foundation/text2/BasicTextField2Kt;->BasicTextField2(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/text2/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text2/input/CodepointTransformation;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 348
    :cond_6
    :goto_4
    return-void
.end method
