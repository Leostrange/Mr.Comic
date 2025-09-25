.class final Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;
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

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

.field final synthetic $enabled:Z

.field final synthetic $imeAction:I

.field final synthetic $inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $keyboardType:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

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

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $state:Landroidx/compose/foundation/text2/input/TextFieldState;

.field final synthetic $textObfuscationMode:I

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text2/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text2/input/ImeActionHandler;",
            "IIIZ",
            "Landroidx/compose/foundation/text2/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text2/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$state:Landroidx/compose/foundation/text2/input/TextFieldState;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$modifier:Landroidx/compose/ui/Modifier;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$imeAction:I

    move/from16 v5, p5

    iput v5, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$textObfuscationMode:I

    move/from16 v6, p6

    iput v6, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$keyboardType:I

    move/from16 v7, p7

    iput-boolean v7, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$enabled:Z

    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$onTextLayout:Lkotlin/jvm/functions/Function2;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$scrollState:Landroidx/compose/foundation/ScrollState;

    move/from16 v15, p15

    iput v15, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$changed1:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$default:I

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$state:Landroidx/compose/foundation/text2/input/TextFieldState;

    iget-object v2, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$onSubmit:Landroidx/compose/foundation/text2/input/ImeActionHandler;

    iget v4, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$imeAction:I

    iget v5, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$textObfuscationMode:I

    iget v6, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$keyboardType:I

    iget-boolean v7, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$enabled:Z

    iget-object v8, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$inputTransformation:Landroidx/compose/foundation/text2/input/InputTransformation;

    iget-object v9, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v10, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v11, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    iget-object v12, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$onTextLayout:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$decorator:Landroidx/compose/foundation/text2/TextFieldDecorator;

    iget-object v14, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$scrollState:Landroidx/compose/foundation/ScrollState;

    move-object/from16 v19, v1

    iget v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v1, v0, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt$BasicSecureTextField$4;->$$default:I

    move/from16 v18, v1

    move-object/from16 v1, v19

    invoke-static/range {v1 .. v18}, Landroidx/compose/foundation/text2/BasicSecureTextFieldKt;->BasicSecureTextField-mMrxcSU(Landroidx/compose/foundation/text2/input/TextFieldState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text2/input/ImeActionHandler;IIIZLandroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text2/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
