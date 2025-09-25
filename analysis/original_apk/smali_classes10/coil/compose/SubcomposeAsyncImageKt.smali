.class public final Lcoil/compose/SubcomposeAsyncImageKt;
.super Ljava/lang/Object;
.source "SubcomposeAsyncImage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeAsyncImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeAsyncImage.kt\ncoil/compose/SubcomposeAsyncImageKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n72#2,2:407\n74#2:437\n78#2:442\n79#3,11:409\n92#3:441\n124#3,5:444\n130#3,5:457\n135#3:468\n137#3:471\n456#4,8:420\n464#4,3:434\n467#4,3:438\n286#4,8:449\n294#4,2:469\n3737#5,6:428\n3737#5,6:462\n1#6:443\n*S KotlinDebug\n*F\n+ 1 SubcomposeAsyncImage.kt\ncoil/compose/SubcomposeAsyncImageKt\n*L\n248#1:407,2\n248#1:437\n248#1:442\n248#1:409,11\n248#1:441\n336#1:444,5\n336#1:457,5\n336#1:468\n336#1:471\n248#1:420,8\n248#1:434,3\n248#1:438,3\n336#1:449,8\n336#1:469,2\n248#1:428,6\n336#1:462,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u00d3\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b2&\u0008\u0002\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122&\u0008\u0002\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122&\u0008\u0002\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'H\u0007\u00a2\u0006\u0004\u0008(\u0010)\u001a\u00a9\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2&\u0008\u0002\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122&\u0008\u0002\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122&\u0008\u0002\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#H\u0007\u00a2\u0006\u0004\u0008*\u0010+\u001a\u00c9\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b2\u0016\u0008\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00a2\u0006\u0004\u0008.\u0010/\u001a\u00b5\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b2\u0016\u0008\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0007\u00a2\u0006\u0004\u00080\u00101\u001a\u00a5\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00102\u001a\u0002032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0003\u00a2\u0006\u0004\u00084\u00105\u001ae\u00106\u001a\u00020\u0001*\u00020\u000f2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u00107\u001a\u0002082\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010$\u001a\u00020%H\u0007\u00a2\u0006\u0002\u00109\u001a[\u00106\u001a\u00020\u0001*\u00020\u000f2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u00107\u001a\u0002082\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!H\u0007\u00a2\u0006\u0002\u0010:\u001a\u0095\u0001\u0010;\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122$\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122$\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u00122$\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0012H\u0003\u00a2\u0006\u0002\u0010<\u00a8\u0006="
    }
    d2 = {
        "SubcomposeAsyncImage",
        "",
        "model",
        "",
        "contentDescription",
        "",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "transform",
        "Lkotlin/Function1;",
        "Lcoil/compose/AsyncImagePainter$State;",
        "loading",
        "Lkotlin/Function2;",
        "Lcoil/compose/SubcomposeAsyncImageScope;",
        "Lcoil/compose/AsyncImagePainter$State$Loading;",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/runtime/Composable;",
        "success",
        "Lcoil/compose/AsyncImagePainter$State$Success;",
        "error",
        "Lcoil/compose/AsyncImagePainter$State$Error;",
        "onLoading",
        "onSuccess",
        "onError",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "alpha",
        "",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "clipToBounds",
        "",
        "modelEqualityDelegate",
        "Lcoil/compose/EqualityDelegate;",
        "SubcomposeAsyncImage-TCQMD7g",
        "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V",
        "SubcomposeAsyncImage-Q4Kwu38",
        "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V",
        "onState",
        "content",
        "SubcomposeAsyncImage-FSyRiR8",
        "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SubcomposeAsyncImage-sKDTAoQ",
        "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "state",
        "Lcoil/compose/AsyncImageState;",
        "SubcomposeAsyncImage-gl8XCv8",
        "(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SubcomposeAsyncImageContent",
        "painter",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V",
        "(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V",
        "contentOf",
        "(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;",
        "coil-compose-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CnqD60_CNrmshu9AeerJFWtDVtA(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    invoke-static/range {p0 .. p16}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage_gl8XCv8$lambda$1(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$H2vgRSuztL2tTjvnlznpKPw9pqQ(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p12}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent$lambda$3(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZlmFE_W0Ogs5OVH1d-jY3xC9cnY(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p11}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent$lambda$4(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SubcomposeAsyncImage-FSyRiR8(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 27
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcoil/ImageLoader;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onState"    # Lkotlin/jvm/functions/Function1;
    .param p6, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p7, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p8, "alpha"    # F
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "filterQuality"    # I
    .param p11, "clipToBounds"    # Z
    .param p12, "modelEqualityDelegate"    # Lcoil/compose/EqualityDelegate;
    .param p13, "content"    # Lkotlin/jvm/functions/Function3;
    .param p14, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p15, "$changed"    # I
    .param p16, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcoil/ImageLoader;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "+",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v0, p17

    const v1, -0x6487aa2

    move-object/from16 v15, p14

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v1, p3

    .line 158
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 159
    sget-object v2, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v2}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v2, "transform":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 158
    .end local v2    # "transform":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "transform":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v18, p4

    .line 159
    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v18, "transform":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    .line 160
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .end local p5    # "onState":Lkotlin/jvm/functions/Function1;
    .local v2, "onState":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 159
    .end local v2    # "onState":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "onState":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v19, p5

    .line 160
    .end local p5    # "onState":Lkotlin/jvm/functions/Function1;
    .local v19, "onState":Lkotlin/jvm/functions/Function1;
    :goto_2
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    .line 161
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object/from16 v20, v2

    .end local p6    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_3

    .line 160
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p6    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_3
    move-object/from16 v20, p6

    .line 161
    .end local p6    # "alignment":Landroidx/compose/ui/Alignment;
    .local v20, "alignment":Landroidx/compose/ui/Alignment;
    :goto_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 162
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object/from16 v21, v2

    .end local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_4

    .line 161
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_4
    move-object/from16 v21, p7

    .line 162
    .end local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v21, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_5

    .line 163
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v22, v2

    .end local p8    # "alpha":F
    .local v2, "alpha":F
    goto :goto_5

    .line 162
    .end local v2    # "alpha":F
    .restart local p8    # "alpha":F
    :cond_5
    move/from16 v22, p8

    .line 163
    .end local p8    # "alpha":F
    .local v22, "alpha":F
    :goto_5
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_6

    .line 164
    const/4 v2, 0x0

    move-object/from16 v23, v2

    .end local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v2, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_6

    .line 163
    .end local v2    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_6
    move-object/from16 v23, p9

    .line 164
    .end local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v23, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_6
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_7

    .line 165
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v2

    move/from16 v24, v2

    .end local p10    # "filterQuality":I
    .local v2, "filterQuality":I
    goto :goto_7

    .line 164
    .end local v2    # "filterQuality":I
    .restart local p10    # "filterQuality":I
    :cond_7
    move/from16 v24, p10

    .line 165
    .end local p10    # "filterQuality":I
    .local v24, "filterQuality":I
    :goto_7
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    .line 166
    const/4 v2, 0x1

    move/from16 v25, v2

    .end local p11    # "clipToBounds":Z
    .local v2, "clipToBounds":Z
    goto :goto_8

    .line 165
    .end local v2    # "clipToBounds":Z
    .restart local p11    # "clipToBounds":Z
    :cond_8
    move/from16 v25, p11

    .line 166
    .end local p11    # "clipToBounds":Z
    .local v25, "clipToBounds":Z
    :goto_8
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    .line 167
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    .end local p12    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v0, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    goto :goto_9

    .line 166
    .end local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local p12    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :cond_9
    move-object/from16 v0, p12

    .line 170
    .end local p12    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :goto_9
    new-instance v2, Lcoil/compose/AsyncImageState;

    move-object/from16 v14, p0

    move-object/from16 v13, p2

    invoke-direct {v2, v14, v0, v13}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    and-int/lit8 v3, p15, 0x70

    shr-int/lit8 v4, p15, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p15, 0x3

    const/high16 v5, 0xe000000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p16, 0x1b

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v16, v3, v4

    shr-int/lit8 v3, p16, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, p16, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int v17, v3, v4

    const/16 v26, 0x0

    .line 169
    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v26

    invoke-static/range {v2 .. v17}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    return-void
.end method

.method public static final synthetic SubcomposeAsyncImage-Q4Kwu38(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
    .locals 31
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcoil/ImageLoader;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "loading"    # Lkotlin/jvm/functions/Function4;
    .param p5, "success"    # Lkotlin/jvm/functions/Function4;
    .param p6, "error"    # Lkotlin/jvm/functions/Function4;
    .param p7, "onLoading"    # Lkotlin/jvm/functions/Function1;
    .param p8, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p9, "onError"    # Lkotlin/jvm/functions/Function1;
    .param p10, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p11, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p12, "alpha"    # F
    .param p13, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p14, "filterQuality"    # I
    .param p15, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p16, "$changed"    # I
    .param p17, "$changed1"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move/from16 v0, p18

    const v1, -0x3a301041

    move-object/from16 v15, p15

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v1, p3

    .line 98
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 99
    const/4 v2, 0x0

    move-object v14, v2

    .end local p4    # "loading":Lkotlin/jvm/functions/Function4;
    .local v2, "loading":Lkotlin/jvm/functions/Function4;
    goto :goto_1

    .line 98
    .end local v2    # "loading":Lkotlin/jvm/functions/Function4;
    .restart local p4    # "loading":Lkotlin/jvm/functions/Function4;
    :cond_1
    move-object/from16 v14, p4

    .line 99
    .end local p4    # "loading":Lkotlin/jvm/functions/Function4;
    .local v14, "loading":Lkotlin/jvm/functions/Function4;
    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    .line 100
    const/4 v2, 0x0

    move-object v13, v2

    .end local p5    # "success":Lkotlin/jvm/functions/Function4;
    .local v2, "success":Lkotlin/jvm/functions/Function4;
    goto :goto_2

    .line 99
    .end local v2    # "success":Lkotlin/jvm/functions/Function4;
    .restart local p5    # "success":Lkotlin/jvm/functions/Function4;
    :cond_2
    move-object/from16 v13, p5

    .line 100
    .end local p5    # "success":Lkotlin/jvm/functions/Function4;
    .local v13, "success":Lkotlin/jvm/functions/Function4;
    :goto_2
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    .line 101
    const/4 v2, 0x0

    move-object v12, v2

    .end local p6    # "error":Lkotlin/jvm/functions/Function4;
    .local v2, "error":Lkotlin/jvm/functions/Function4;
    goto :goto_3

    .line 100
    .end local v2    # "error":Lkotlin/jvm/functions/Function4;
    .restart local p6    # "error":Lkotlin/jvm/functions/Function4;
    :cond_3
    move-object/from16 v12, p6

    .line 101
    .end local p6    # "error":Lkotlin/jvm/functions/Function4;
    .local v12, "error":Lkotlin/jvm/functions/Function4;
    :goto_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 102
    const/4 v2, 0x0

    move-object v11, v2

    .end local p7    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v2, "onLoading":Lkotlin/jvm/functions/Function1;
    goto :goto_4

    .line 101
    .end local v2    # "onLoading":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "onLoading":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v11, p7

    .line 102
    .end local p7    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v11, "onLoading":Lkotlin/jvm/functions/Function1;
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_5

    .line 103
    const/4 v2, 0x0

    move-object v10, v2

    .end local p8    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v2, "onSuccess":Lkotlin/jvm/functions/Function1;
    goto :goto_5

    .line 102
    .end local v2    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "onSuccess":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v10, p8

    .line 103
    .end local p8    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v10, "onSuccess":Lkotlin/jvm/functions/Function1;
    :goto_5
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_6

    .line 104
    const/4 v2, 0x0

    move-object v9, v2

    .end local p9    # "onError":Lkotlin/jvm/functions/Function1;
    .local v2, "onError":Lkotlin/jvm/functions/Function1;
    goto :goto_6

    .line 103
    .end local v2    # "onError":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "onError":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object/from16 v9, p9

    .line 104
    .end local p9    # "onError":Lkotlin/jvm/functions/Function1;
    .local v9, "onError":Lkotlin/jvm/functions/Function1;
    :goto_6
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_7

    .line 105
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p10    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_7

    .line 104
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p10    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_7
    move-object/from16 v18, p10

    .line 105
    .end local p10    # "alignment":Landroidx/compose/ui/Alignment;
    .local v18, "alignment":Landroidx/compose/ui/Alignment;
    :goto_7
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    .line 106
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object/from16 v19, v2

    .end local p11    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_8

    .line 105
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p11    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_8
    move-object/from16 v19, p11

    .line 106
    .end local p11    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v19, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_8
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_9

    .line 107
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v20, v2

    .end local p12    # "alpha":F
    .local v2, "alpha":F
    goto :goto_9

    .line 106
    .end local v2    # "alpha":F
    .restart local p12    # "alpha":F
    :cond_9
    move/from16 v20, p12

    .line 107
    .end local p12    # "alpha":F
    .local v20, "alpha":F
    :goto_9
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_a

    .line 108
    const/4 v2, 0x0

    move-object/from16 v21, v2

    .end local p13    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v2, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_a

    .line 107
    .end local v2    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p13    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_a
    move-object/from16 v21, p13

    .line 108
    .end local p13    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v21, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_a
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    .line 109
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    .end local p14    # "filterQuality":I
    .local v0, "filterQuality":I
    goto :goto_b

    .line 108
    .end local v0    # "filterQuality":I
    .restart local p14    # "filterQuality":I
    :cond_b
    move/from16 v0, p14

    .line 111
    .end local p14    # "filterQuality":I
    .restart local v0    # "filterQuality":I
    :goto_b
    new-instance v2, Lcoil/compose/AsyncImageState;

    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v3

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    invoke-direct {v2, v8, v3, v7}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 112
    nop

    .line 113
    nop

    .line 114
    sget-object v3, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v3}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 115
    invoke-static {v11, v10, v9}, Lcoil/compose/UtilsKt;->onStateOf(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    const/16 v16, 0x1

    .line 122
    invoke-static {v14, v13, v12}, Lcoil/compose/SubcomposeAsyncImageKt;->contentOf(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    and-int/lit8 v3, p16, 0x70

    or-int/lit16 v3, v3, 0xc00

    shr-int/lit8 v4, p16, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shl-int/lit8 v4, p17, 0xf

    const/high16 v22, 0x70000

    and-int v4, v4, v22

    or-int/2addr v3, v4

    shl-int/lit8 v4, p17, 0xf

    const/high16 v22, 0x380000

    and-int v4, v4, v22

    or-int/2addr v3, v4

    shl-int/lit8 v4, p17, 0xf

    const/high16 v22, 0x1c00000

    and-int v4, v4, v22

    or-int/2addr v3, v4

    shl-int/lit8 v4, p17, 0xf

    const/high16 v22, 0xe000000

    and-int v4, v4, v22

    or-int/2addr v3, v4

    const/high16 v4, 0x70000000

    shl-int/lit8 v22, p17, 0xf

    and-int v4, v22, v4

    or-int v22, v3, v4

    const/16 v23, 0x6

    const/16 v24, 0x0

    .line 110
    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v25, v9

    .end local v9    # "onError":Lkotlin/jvm/functions/Function1;
    .local v25, "onError":Lkotlin/jvm/functions/Function1;
    move/from16 v9, v20

    move-object/from16 v26, v10

    .end local v10    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v26, "onSuccess":Lkotlin/jvm/functions/Function1;
    move-object/from16 v10, v21

    move-object/from16 v27, v11

    .end local v11    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v27, "onLoading":Lkotlin/jvm/functions/Function1;
    move v11, v0

    move-object/from16 v28, v12

    .end local v12    # "error":Lkotlin/jvm/functions/Function4;
    .local v28, "error":Lkotlin/jvm/functions/Function4;
    move/from16 v12, v16

    move-object/from16 v29, v13

    .end local v13    # "success":Lkotlin/jvm/functions/Function4;
    .local v29, "success":Lkotlin/jvm/functions/Function4;
    move-object/from16 v13, v17

    move-object/from16 v30, v14

    .end local v14    # "loading":Lkotlin/jvm/functions/Function4;
    .local v30, "loading":Lkotlin/jvm/functions/Function4;
    move-object/from16 v14, p15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-static/range {v2 .. v17}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p15 .. p15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    return-void
.end method

.method public static final SubcomposeAsyncImage-TCQMD7g(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcoil/ImageLoader;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p5, "loading"    # Lkotlin/jvm/functions/Function4;
    .param p6, "success"    # Lkotlin/jvm/functions/Function4;
    .param p7, "error"    # Lkotlin/jvm/functions/Function4;
    .param p8, "onLoading"    # Lkotlin/jvm/functions/Function1;
    .param p9, "onSuccess"    # Lkotlin/jvm/functions/Function1;
    .param p10, "onError"    # Lkotlin/jvm/functions/Function1;
    .param p11, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p12, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p13, "alpha"    # F
    .param p14, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p15, "filterQuality"    # I
    .param p16, "clipToBounds"    # Z
    .param p17, "modelEqualityDelegate"    # Lcoil/compose/EqualityDelegate;
    .param p18, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p19, "$changed"    # I
    .param p20, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcoil/ImageLoader;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "+",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v0, p21

    const v1, -0x5c193b5f

    move-object/from16 v15, p18

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v1, p3

    .line 61
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 62
    sget-object v2, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v2}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v2, "transform":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 61
    .end local v2    # "transform":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "transform":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v18, p4

    .line 62
    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v18, "transform":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    .line 63
    const/4 v2, 0x0

    move-object v14, v2

    .end local p5    # "loading":Lkotlin/jvm/functions/Function4;
    .local v2, "loading":Lkotlin/jvm/functions/Function4;
    goto :goto_2

    .line 62
    .end local v2    # "loading":Lkotlin/jvm/functions/Function4;
    .restart local p5    # "loading":Lkotlin/jvm/functions/Function4;
    :cond_2
    move-object/from16 v14, p5

    .line 63
    .end local p5    # "loading":Lkotlin/jvm/functions/Function4;
    .local v14, "loading":Lkotlin/jvm/functions/Function4;
    :goto_2
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    .line 64
    const/4 v2, 0x0

    move-object v13, v2

    .end local p6    # "success":Lkotlin/jvm/functions/Function4;
    .local v2, "success":Lkotlin/jvm/functions/Function4;
    goto :goto_3

    .line 63
    .end local v2    # "success":Lkotlin/jvm/functions/Function4;
    .restart local p6    # "success":Lkotlin/jvm/functions/Function4;
    :cond_3
    move-object/from16 v13, p6

    .line 64
    .end local p6    # "success":Lkotlin/jvm/functions/Function4;
    .local v13, "success":Lkotlin/jvm/functions/Function4;
    :goto_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 65
    const/4 v2, 0x0

    move-object v12, v2

    .end local p7    # "error":Lkotlin/jvm/functions/Function4;
    .local v2, "error":Lkotlin/jvm/functions/Function4;
    goto :goto_4

    .line 64
    .end local v2    # "error":Lkotlin/jvm/functions/Function4;
    .restart local p7    # "error":Lkotlin/jvm/functions/Function4;
    :cond_4
    move-object/from16 v12, p7

    .line 65
    .end local p7    # "error":Lkotlin/jvm/functions/Function4;
    .local v12, "error":Lkotlin/jvm/functions/Function4;
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_5

    .line 66
    const/4 v2, 0x0

    move-object v11, v2

    .end local p8    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v2, "onLoading":Lkotlin/jvm/functions/Function1;
    goto :goto_5

    .line 65
    .end local v2    # "onLoading":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "onLoading":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v11, p8

    .line 66
    .end local p8    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v11, "onLoading":Lkotlin/jvm/functions/Function1;
    :goto_5
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_6

    .line 67
    const/4 v2, 0x0

    move-object v10, v2

    .end local p9    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v2, "onSuccess":Lkotlin/jvm/functions/Function1;
    goto :goto_6

    .line 66
    .end local v2    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "onSuccess":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object/from16 v10, p9

    .line 67
    .end local p9    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v10, "onSuccess":Lkotlin/jvm/functions/Function1;
    :goto_6
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_7

    .line 68
    const/4 v2, 0x0

    move-object v9, v2

    .end local p10    # "onError":Lkotlin/jvm/functions/Function1;
    .local v2, "onError":Lkotlin/jvm/functions/Function1;
    goto :goto_7

    .line 67
    .end local v2    # "onError":Lkotlin/jvm/functions/Function1;
    .restart local p10    # "onError":Lkotlin/jvm/functions/Function1;
    :cond_7
    move-object/from16 v9, p10

    .line 68
    .end local p10    # "onError":Lkotlin/jvm/functions/Function1;
    .local v9, "onError":Lkotlin/jvm/functions/Function1;
    :goto_7
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    .line 69
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object/from16 v19, v2

    .end local p11    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_8

    .line 68
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p11    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_8
    move-object/from16 v19, p11

    .line 69
    .end local p11    # "alignment":Landroidx/compose/ui/Alignment;
    .local v19, "alignment":Landroidx/compose/ui/Alignment;
    :goto_8
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_9

    .line 70
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object/from16 v20, v2

    .end local p12    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_9

    .line 69
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p12    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_9
    move-object/from16 v20, p12

    .line 70
    .end local p12    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v20, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_9
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_a

    .line 71
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v21, v2

    .end local p13    # "alpha":F
    .local v2, "alpha":F
    goto :goto_a

    .line 70
    .end local v2    # "alpha":F
    .restart local p13    # "alpha":F
    :cond_a
    move/from16 v21, p13

    .line 71
    .end local p13    # "alpha":F
    .local v21, "alpha":F
    :goto_a
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_b

    .line 72
    const/4 v2, 0x0

    move-object/from16 v22, v2

    .end local p14    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v2, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_b

    .line 71
    .end local v2    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p14    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_b
    move-object/from16 v22, p14

    .line 72
    .end local p14    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v22, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_b
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    .line 73
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v2

    move/from16 v23, v2

    .end local p15    # "filterQuality":I
    .local v2, "filterQuality":I
    goto :goto_c

    .line 72
    .end local v2    # "filterQuality":I
    .restart local p15    # "filterQuality":I
    :cond_c
    move/from16 v23, p15

    .line 73
    .end local p15    # "filterQuality":I
    .local v23, "filterQuality":I
    :goto_c
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    .line 74
    const/4 v2, 0x1

    move/from16 v24, v2

    .end local p16    # "clipToBounds":Z
    .local v2, "clipToBounds":Z
    goto :goto_d

    .line 73
    .end local v2    # "clipToBounds":Z
    .restart local p16    # "clipToBounds":Z
    :cond_d
    move/from16 v24, p16

    .line 74
    .end local p16    # "clipToBounds":Z
    .local v24, "clipToBounds":Z
    :goto_d
    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 75
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    .end local p17    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .local v0, "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    goto :goto_e

    .line 74
    .end local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local p17    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :cond_e
    move-object/from16 v0, p17

    .line 77
    .end local p17    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    .restart local v0    # "modelEqualityDelegate":Lcoil/compose/EqualityDelegate;
    :goto_e
    new-instance v2, Lcoil/compose/AsyncImageState;

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    invoke-direct {v2, v8, v0, v7}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    invoke-static {v11, v10, v9}, Lcoil/compose/UtilsKt;->onStateOf(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    invoke-static {v14, v13, v12}, Lcoil/compose/SubcomposeAsyncImageKt;->contentOf(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    and-int/lit8 v3, p19, 0x70

    shr-int/lit8 v4, p19, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, p19, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, p20, 0xc

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p20, 0xc

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p20, 0xc

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p20, 0xc

    const/high16 v5, 0xe000000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/high16 v4, 0x70000000

    shl-int/lit8 v5, p20, 0xc

    and-int/2addr v4, v5

    or-int v17, v3, v4

    shr-int/lit8 v3, p20, 0x12

    and-int/lit8 v25, v3, 0xe

    const/16 v26, 0x0

    .line 76
    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v27, v9

    .end local v9    # "onError":Lkotlin/jvm/functions/Function1;
    .local v27, "onError":Lkotlin/jvm/functions/Function1;
    move/from16 v9, v21

    move-object/from16 v28, v10

    .end local v10    # "onSuccess":Lkotlin/jvm/functions/Function1;
    .local v28, "onSuccess":Lkotlin/jvm/functions/Function1;
    move-object/from16 v10, v22

    move-object/from16 v29, v11

    .end local v11    # "onLoading":Lkotlin/jvm/functions/Function1;
    .local v29, "onLoading":Lkotlin/jvm/functions/Function1;
    move/from16 v11, v23

    move-object/from16 v30, v12

    .end local v12    # "error":Lkotlin/jvm/functions/Function4;
    .local v30, "error":Lkotlin/jvm/functions/Function4;
    move/from16 v12, v24

    move-object/from16 v31, v13

    .end local v13    # "success":Lkotlin/jvm/functions/Function4;
    .local v31, "success":Lkotlin/jvm/functions/Function4;
    move-object/from16 v13, v16

    move-object/from16 v32, v14

    .end local v14    # "loading":Lkotlin/jvm/functions/Function4;
    .local v32, "loading":Lkotlin/jvm/functions/Function4;
    move-object/from16 v14, p18

    move/from16 v15, v17

    move/from16 v16, v25

    move/from16 v17, v26

    invoke-static/range {v2 .. v17}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p18 .. p18}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 89
    return-void
.end method

.method private static final SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .param p0, "state"    # Lcoil/compose/AsyncImageState;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onState"    # Lkotlin/jvm/functions/Function1;
    .param p5, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p6, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p7, "alpha"    # F
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "filterQuality"    # I
    .param p10, "clipToBounds"    # Z
    .param p11, "content"    # Lkotlin/jvm/functions/Function3;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/compose/AsyncImageState;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "+",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 229
    move-object/from16 v15, p5

    move-object/from16 v14, p6

    move-object/from16 v13, p11

    move/from16 v12, p13

    move/from16 v11, p15

    const v0, -0x24195045

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v0, p13

    .local v0, "$dirty":I
    move/from16 v1, p14

    .local v1, "$dirty1":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v12, 0x380

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v3, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v12, 0x1c00

    if-nez v3, :cond_b

    move-object/from16 v3, p3

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v0, v0, v16

    goto :goto_7

    :cond_b
    move-object/from16 v3, p3

    :goto_7
    and-int/lit8 v16, v11, 0x10

    const v17, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v9, p4

    goto :goto_9

    :cond_c
    and-int v16, v12, v17

    if-nez v16, :cond_e

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v0, v0, v16

    goto :goto_9

    :cond_e
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v16, v11, 0x20

    const/high16 v18, 0x70000

    if-eqz v16, :cond_f

    const/high16 v16, 0x30000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_f
    and-int v16, v12, v18

    if-nez v16, :cond_11

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v16, v11, 0x40

    if-eqz v16, :cond_12

    const/high16 v16, 0x180000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_12
    const/high16 v16, 0x380000

    and-int v16, v12, v16

    if-nez v16, :cond_14

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    goto :goto_c

    :cond_14
    :goto_d
    and-int/lit16 v4, v11, 0x80

    if-eqz v4, :cond_15

    const/high16 v4, 0xc00000

    or-int/2addr v0, v4

    move/from16 v4, p7

    goto :goto_f

    :cond_15
    const/high16 v4, 0x1c00000

    and-int/2addr v4, v12

    if-nez v4, :cond_17

    move/from16 v4, p7

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v0, v0, v19

    goto :goto_f

    :cond_17
    move/from16 v4, p7

    :goto_f
    and-int/lit16 v5, v11, 0x100

    if-eqz v5, :cond_18

    const/high16 v5, 0x6000000

    or-int/2addr v0, v5

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    const/high16 v5, 0xe000000

    and-int/2addr v5, v12

    if-nez v5, :cond_1a

    move-object/from16 v5, p8

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v20, 0x2000000

    :goto_10
    or-int v0, v0, v20

    goto :goto_11

    :cond_1a
    move-object/from16 v5, p8

    :goto_11
    and-int/lit16 v6, v11, 0x200

    if-eqz v6, :cond_1b

    const/high16 v6, 0x30000000

    or-int/2addr v0, v6

    move/from16 v6, p9

    goto :goto_13

    :cond_1b
    const/high16 v6, 0x70000000

    and-int/2addr v6, v12

    if-nez v6, :cond_1d

    move/from16 v6, p9

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v21, 0x10000000

    :goto_12
    or-int v0, v0, v21

    goto :goto_13

    :cond_1d
    move/from16 v6, p9

    :goto_13
    move/from16 v21, v0

    .end local v0    # "$dirty":I
    .local v21, "$dirty":I
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move/from16 v0, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v0, p14, 0xe

    if-nez v0, :cond_20

    move/from16 v0, p10

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_1f

    const/16 v16, 0x4

    goto :goto_14

    :cond_1f
    const/16 v16, 0x2

    :goto_14
    or-int v1, v1, v16

    goto :goto_15

    :cond_20
    move/from16 v0, p10

    :goto_15
    and-int/lit16 v0, v11, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v1, v1, 0x30

    goto :goto_17

    :cond_21
    and-int/lit8 v0, p14, 0x70

    if-nez v0, :cond_23

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v19, 0x20

    goto :goto_16

    :cond_22
    const/16 v19, 0x10

    :goto_16
    or-int v1, v1, v19

    :cond_23
    :goto_17
    move/from16 v16, v1

    .end local v1    # "$dirty1":I
    .local v16, "$dirty1":I
    const v0, 0x5b6db6db

    and-int v0, v21, v0

    const v1, 0x12492492

    if-ne v0, v1, :cond_25

    and-int/lit8 v0, v16, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_18

    .line 289
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v19, v7

    goto/16 :goto_1d

    .line 229
    :cond_25
    :goto_18
    if-eqz v2, :cond_26

    .line 219
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v19, v0

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_19

    .line 229
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_26
    move-object/from16 v19, v7

    .line 232
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcoil/compose/AsyncImageState;->getModel()Ljava/lang/Object;

    move-result-object v0

    .line 233
    shr-int/lit8 v1, v21, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x8

    .line 231
    invoke-static {v0, v14, v10, v1}, Lcoil/compose/UtilsKt;->requestOfWithSizeResolver(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil/request/ImageRequest;

    move-result-object v20

    .line 236
    .local v20, "request":Lcoil/request/ImageRequest;
    nop

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcoil/compose/AsyncImageState;->getImageLoader()Lcoil/ImageLoader;

    move-result-object v1

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    const/4 v7, 0x0

    shr-int/lit8 v0, v21, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x48

    shr-int/lit8 v2, v21, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v21, 0x6

    and-int v2, v2, v17

    or-int/2addr v0, v2

    shr-int/lit8 v2, v21, 0xc

    and-int v2, v2, v18

    or-int v17, v0, v2

    const/16 v18, 0x40

    .line 235
    move-object/from16 v0, v20

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p9

    move-object v6, v7

    move-object v7, v10

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcoil/compose/AsyncImagePainterKt;->rememberAsyncImagePainter-0YpotYA(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;

    move-result-object v17

    .line 244
    .local v17, "painter":Lcoil/compose/AsyncImagePainter;
    invoke-virtual/range {v20 .. v20}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v9

    .line 245
    .local v9, "sizeResolver":Lcoil/size/SizeResolver;
    instance-of v0, v9, Lcoil/compose/ConstraintsSizeResolver;

    const/4 v8, 0x1

    if-nez v0, :cond_2b

    const v0, -0x7bfa8e6f

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 251
    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x180

    shr-int/lit8 v1, v21, 0xc

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    .line 248
    move/from16 v18, v0

    .local v8, "propagateMinConstraints$iv":Z
    .local v18, "$changed$iv":I
    const/16 v22, 0x0

    .local v22, "$i$f$Box":I
    const v0, 0x2bb5b5d7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 407
    shr-int/lit8 v0, v18, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v18, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-static {v15, v8, v10, v0}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v0, v18, 0x3

    and-int/lit8 v0, v0, 0x70

    .line 408
    move/from16 v23, v0

    .local v23, "$changed$iv$iv":I
    const/16 v24, 0x0

    .local v24, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v25

    .line 410
    .local v25, "compositeKeyHash$iv$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 412
    .local v6, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 419
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    shl-int/lit8 v2, v23, 0x9

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v2, v2, 0x6

    .line 411
    move-object v5, v0

    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v4, v1

    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v26, v2

    .local v26, "$changed$iv$iv$iv":I
    const/16 v27, 0x0

    .line 420
    .local v27, "$i$f$ReusableComposeNode":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 421
    :cond_27
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 422
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 423
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    .line 425
    :cond_28
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 427
    :goto_1a
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    .line 414
    .local v1, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 417
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v3, 0x0

    .line 428
    .local v3, "$i$f$set-impl":I
    move-object/from16 p2, v0

    .local p2, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 429
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_2a

    move/from16 p12, v1

    .end local v1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .local p12, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move/from16 v29, v3

    .end local v3    # "$i$f$set-impl":I
    .local v29, "$i$f$set-impl":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_1b

    :cond_29
    move-object/from16 v3, p2

    goto :goto_1c

    .end local v29    # "$i$f$set-impl":I
    .end local p12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v3    # "$i$f$set-impl":I
    :cond_2a
    move/from16 p12, v1

    move/from16 v29, v3

    .line 430
    .end local v1    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .end local v3    # "$i$f$set-impl":I
    .restart local v29    # "$i$f$set-impl":I
    .restart local p12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :goto_1b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, p2

    .end local p2    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 431
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 433
    :goto_1c
    nop

    .line 428
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 433
    nop

    .line 418
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v29    # "$i$f$set-impl":I
    nop

    .line 427
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 434
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v26, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v10, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const v0, 0x7ab4aae9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 436
    shr-int/lit8 v0, v26, 0x9

    and-int/lit8 v28, v0, 0xe

    .local v28, "$changed$iv":I
    move-object v0, v10

    .local v0, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object v3, v0

    .end local v0    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 437
    .local v29, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v0, -0x4ab8dd4f

    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v18, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v30, v1, 0x6

    .local v30, "$changed":I
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .local v1, "$this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    move-object v2, v3

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 262
    .local v31, "$i$a$-Box-SubcomposeAsyncImageKt$SubcomposeAsyncImage$1":I
    nop

    .line 253
    new-instance v0, Lcoil/compose/RealSubcomposeAsyncImageScope;

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 253
    move-object/from16 p2, v0

    move-object v11, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v2, v17

    move-object/from16 v32, v3

    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v32, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v3, p1

    move-object/from16 v33, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v33, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v4, p5

    move-object/from16 v34, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v34, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v5, p6

    move-object/from16 v35, v6

    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v6, p7

    move-object/from16 v36, v7

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v36, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v7, p8

    move/from16 v37, v8

    .end local v8    # "propagateMinConstraints$iv":Z
    .local v37, "propagateMinConstraints$iv":Z
    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcoil/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V

    and-int/lit8 v0, v16, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 262
    move-object/from16 v2, p2

    invoke-interface {v13, v2, v11, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    nop

    .line 437
    .end local v1    # "$this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v30    # "$changed":I
    .end local v31    # "$i$a$-Box-SubcomposeAsyncImageKt$SubcomposeAsyncImage$1":I
    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 436
    .end local v28    # "$changed$iv":I
    .end local v29    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v32    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 438
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 439
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 440
    nop

    .end local v26    # "$changed$iv$iv$iv":I
    .end local v27    # "$i$f$ReusableComposeNode":I
    .end local v33    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 441
    nop

    .end local v23    # "$changed$iv$iv":I
    .end local v24    # "$i$f$Layout":I
    .end local v25    # "compositeKeyHash$iv$iv":I
    .end local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 442
    nop

    .line 245
    .end local v18    # "$changed$iv":I
    .end local v22    # "$i$f$Box":I
    .end local v36    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v37    # "propagateMinConstraints$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1d

    .line 264
    :cond_2b
    const v0, -0x7bf00c18

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    new-instance v7, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, p11

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v11, v7

    move/from16 v7, p7

    move v12, v8

    move-object/from16 v8, p8

    move-object/from16 v18, v9

    .end local v9    # "sizeResolver":Lcoil/size/SizeResolver;
    .local v18, "sizeResolver":Lcoil/size/SizeResolver;
    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;-><init>(Lcoil/size/SizeResolver;Lkotlin/jvm/functions/Function3;Lcoil/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V

    const v0, -0x34f0b6ff    # -9390337.0f

    invoke-static {v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xd80

    shr-int/lit8 v1, v21, 0xc

    and-int/lit8 v1, v1, 0x70

    or-int v5, v0, v1

    const/4 v6, 0x0

    .line 267
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    const/4 v2, 0x1

    move-object v4, v10

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 264
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 289
    .end local v17    # "painter":Lcoil/compose/AsyncImagePainter;
    .end local v18    # "sizeResolver":Lcoil/size/SizeResolver;
    .end local v20    # "request":Lcoil/request/ImageRequest;
    :goto_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v11, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v17, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p9

    move-object/from16 v38, v11

    move/from16 v11, p10

    move-object/from16 v39, v12

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;-><init>(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v17, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1e
    return-void
.end method

.method public static final synthetic SubcomposeAsyncImage-sKDTAoQ(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 25
    .param p0, "model"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcoil/ImageLoader;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "transform"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onState"    # Lkotlin/jvm/functions/Function1;
    .param p6, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p7, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p8, "alpha"    # F
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "filterQuality"    # I
    .param p11, "content"    # Lkotlin/jvm/functions/Function3;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move/from16 v0, p15

    const v1, 0x45888d2f

    move-object/from16 v15, p12

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v1, p3

    .line 191
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 192
    sget-object v2, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v2}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    move-object/from16 v18, v2

    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v2, "transform":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 191
    .end local v2    # "transform":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "transform":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v18, p4

    .line 192
    .end local p4    # "transform":Lkotlin/jvm/functions/Function1;
    .local v18, "transform":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    .line 193
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .end local p5    # "onState":Lkotlin/jvm/functions/Function1;
    .local v2, "onState":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 192
    .end local v2    # "onState":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "onState":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v19, p5

    .line 193
    .end local p5    # "onState":Lkotlin/jvm/functions/Function1;
    .local v19, "onState":Lkotlin/jvm/functions/Function1;
    :goto_2
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    .line 194
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object/from16 v20, v2

    .end local p6    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_3

    .line 193
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p6    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_3
    move-object/from16 v20, p6

    .line 194
    .end local p6    # "alignment":Landroidx/compose/ui/Alignment;
    .local v20, "alignment":Landroidx/compose/ui/Alignment;
    :goto_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 195
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object/from16 v21, v2

    .end local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    goto :goto_4

    .line 194
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .restart local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_4
    move-object/from16 v21, p7

    .line 195
    .end local p7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v21, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_5

    .line 196
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v22, v2

    .end local p8    # "alpha":F
    .local v2, "alpha":F
    goto :goto_5

    .line 195
    .end local v2    # "alpha":F
    .restart local p8    # "alpha":F
    :cond_5
    move/from16 v22, p8

    .line 196
    .end local p8    # "alpha":F
    .local v22, "alpha":F
    :goto_5
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_6

    .line 197
    const/4 v2, 0x0

    move-object/from16 v23, v2

    .end local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v2, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_6

    .line 196
    .end local v2    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_6
    move-object/from16 v23, p9

    .line 197
    .end local p9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v23, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 198
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    .end local p10    # "filterQuality":I
    .local v0, "filterQuality":I
    goto :goto_7

    .line 197
    .end local v0    # "filterQuality":I
    .restart local p10    # "filterQuality":I
    :cond_7
    move/from16 v0, p10

    .line 201
    .end local p10    # "filterQuality":I
    .restart local v0    # "filterQuality":I
    :goto_7
    new-instance v2, Lcoil/compose/AsyncImageState;

    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v3

    move-object/from16 v14, p0

    move-object/from16 v13, p2

    invoke-direct {v2, v14, v3, v13}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    const/4 v12, 0x1

    .line 212
    and-int/lit8 v3, p13, 0x70

    shr-int/lit8 v4, p13, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, p13, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shr-int/lit8 v4, p13, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p13, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p13, 0x3

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v4, p13, 0x3

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    const/high16 v4, 0xe000000

    shr-int/lit8 v5, p13, 0x3

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p14, 0x1b

    const/high16 v5, 0x70000000

    and-int/2addr v4, v5

    or-int v16, v3, v4

    and-int/lit8 v3, p14, 0x70

    or-int/lit8 v17, v3, 0x6

    const/16 v24, 0x0

    .line 200
    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move v11, v0

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v24

    invoke-static/range {v2 .. v17}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 213
    return-void
.end method

.method public static final synthetic SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "$this$SubcomposeAsyncImageContent"    # Lcoil/compose/SubcomposeAsyncImageScope;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "painter"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p5, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p6, "alpha"    # F
    .param p7, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    .line 364
    move/from16 v11, p9

    const v0, -0xfbc0ce9

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v0, p9

    .local v0, "$dirty":I
    const/high16 v1, -0x80000000

    and-int v1, p10, v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p10, 0x2

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_9

    and-int/lit8 v5, p10, 0x4

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    move-object/from16 v5, p3

    :cond_8
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v0, v6

    goto :goto_5

    :cond_9
    move-object/from16 v5, p3

    :goto_5
    const v6, 0xe000

    and-int v7, v11, v6

    if-nez v7, :cond_c

    and-int/lit8 v7, p10, 0x8

    if-nez v7, :cond_a

    move-object/from16 v7, p4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x4000

    goto :goto_6

    :cond_a
    move-object/from16 v7, p4

    :cond_b
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v0, v8

    goto :goto_7

    :cond_c
    move-object/from16 v7, p4

    :goto_7
    const/high16 v8, 0x70000

    and-int v12, v11, v8

    if-nez v12, :cond_f

    and-int/lit8 v12, p10, 0x10

    if-nez v12, :cond_d

    move-object/from16 v12, p5

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x20000

    goto :goto_8

    :cond_d
    move-object/from16 v12, p5

    :cond_e
    const/high16 v13, 0x10000

    :goto_8
    or-int/2addr v0, v13

    goto :goto_9

    :cond_f
    move-object/from16 v12, p5

    :goto_9
    const/high16 v13, 0x380000

    and-int v14, v11, v13

    if-nez v14, :cond_12

    and-int/lit8 v14, p10, 0x20

    if-nez v14, :cond_10

    move/from16 v14, p6

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x100000

    goto :goto_a

    :cond_10
    move/from16 v14, p6

    :cond_11
    const/high16 v15, 0x80000

    :goto_a
    or-int/2addr v0, v15

    goto :goto_b

    :cond_12
    move/from16 v14, p6

    :goto_b
    const/high16 v15, 0x1c00000

    and-int v16, v11, v15

    if-nez v16, :cond_15

    and-int/lit8 v16, p10, 0x40

    if-nez v16, :cond_13

    move-object/from16 v15, p7

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x800000

    goto :goto_c

    :cond_13
    move-object/from16 v15, p7

    :cond_14
    const/high16 v16, 0x400000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_15
    move-object/from16 v15, p7

    :goto_d
    if-ne v4, v2, :cond_17

    const v2, 0x16db6db

    and-int/2addr v2, v0

    const v13, 0x492492

    if-ne v2, v13, :cond_17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_e

    .line 372
    :cond_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p2

    move/from16 v19, v0

    move-object/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v15

    move-object v12, v3

    move-object v14, v5

    move-object v15, v7

    goto/16 :goto_13

    .line 364
    :cond_17
    :goto_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v11, 0x1

    const v13, -0x1c00001

    const v17, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    if-eqz v2, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_f

    .line 363
    :cond_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v4, :cond_19

    and-int/lit16 v0, v0, -0x381

    :cond_19
    and-int/lit8 v1, p10, 0x4

    if-eqz v1, :cond_1a

    and-int/lit16 v0, v0, -0x1c01

    :cond_1a
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_1b

    and-int v0, v0, v19

    :cond_1b
    and-int/lit8 v1, p10, 0x10

    if-eqz v1, :cond_1c

    and-int v0, v0, v18

    :cond_1c
    and-int/lit8 v1, p10, 0x20

    if-eqz v1, :cond_1d

    and-int v0, v0, v17

    :cond_1d
    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_1e

    and-int/2addr v0, v13

    :cond_1e
    move-object/from16 v2, p2

    move-object v1, v3

    move v3, v14

    move-object v4, v15

    move v15, v0

    move-object v0, v12

    goto :goto_12

    .line 364
    :cond_1f
    :goto_f
    if-eqz v1, :cond_20

    .line 357
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 364
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_20
    move-object v1, v3

    .line 357
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v4, :cond_21

    .line 358
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getPainter()Lcoil/compose/AsyncImagePainter;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/painter/Painter;

    .end local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .local v2, "painter":Landroidx/compose/ui/graphics/painter/Painter;
    and-int/lit16 v0, v0, -0x381

    goto :goto_11

    .line 357
    .end local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_21
    move-object/from16 v2, p2

    .line 358
    .end local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_11
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_22

    .line 359
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .end local p3    # "contentDescription":Ljava/lang/String;
    .local v3, "contentDescription":Ljava/lang/String;
    and-int/lit16 v0, v0, -0x1c01

    move-object v5, v3

    .end local v3    # "contentDescription":Ljava/lang/String;
    .local v5, "contentDescription":Ljava/lang/String;
    :cond_22
    and-int/lit8 v3, p10, 0x8

    if-eqz v3, :cond_23

    .line 360
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .end local p4    # "alignment":Landroidx/compose/ui/Alignment;
    .local v3, "alignment":Landroidx/compose/ui/Alignment;
    and-int v0, v0, v19

    move-object v7, v3

    .end local v3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v7, "alignment":Landroidx/compose/ui/Alignment;
    :cond_23
    and-int/lit8 v3, p10, 0x10

    if-eqz v3, :cond_24

    .line 361
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getContentScale()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v3

    .end local p5    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v3, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    and-int v0, v0, v18

    move-object v12, v3

    .end local v3    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v12, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_24
    and-int/lit8 v3, p10, 0x20

    if-eqz v3, :cond_25

    .line 362
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getAlpha()F

    move-result v3

    .end local p6    # "alpha":F
    .local v3, "alpha":F
    and-int v0, v0, v17

    move v14, v3

    .end local v3    # "alpha":F
    .local v14, "alpha":F
    :cond_25
    and-int/lit8 v3, p10, 0x40

    if-eqz v3, :cond_26

    .line 363
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v3

    .end local p7    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v3, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    and-int/2addr v0, v13

    move v15, v0

    move-object v4, v3

    move-object v0, v12

    move v3, v14

    goto :goto_12

    .line 362
    .end local v3    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .restart local p7    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_26
    move v3, v14

    move-object v4, v15

    move v15, v0

    move-object v0, v12

    .line 363
    .end local v12    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .end local v14    # "alpha":F
    .end local p7    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v0, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v3, "alpha":F
    .local v4, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v15, "$dirty":I
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    const/16 v20, 0x0

    and-int/lit8 v12, v15, 0xe

    or-int/lit16 v12, v12, 0x200

    and-int/lit8 v13, v15, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v15, 0x1c00

    or-int/2addr v12, v13

    and-int/2addr v6, v15

    or-int/2addr v6, v12

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    const/high16 v8, 0x380000

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v8, v15

    or-int v22, v6, v8

    const/16 v23, 0x80

    .line 364
    move-object/from16 v12, p0

    move-object v13, v1

    move-object v14, v2

    move v6, v15

    .end local v15    # "$dirty":I
    .local v6, "$dirty":I
    move-object v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v10

    invoke-static/range {v12 .. v23}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v16, v0

    move-object v12, v1

    move-object v13, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object v14, v5

    move/from16 v19, v6

    move-object v15, v7

    .line 372
    .end local v0    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .end local v3    # "alpha":F
    .end local v4    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .end local v5    # "contentDescription":Ljava/lang/String;
    .end local v6    # "$dirty":I
    .end local v7    # "alignment":Landroidx/compose/ui/Alignment;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .local v14, "contentDescription":Ljava/lang/String;
    .local v15, "alignment":Landroidx/compose/ui/Alignment;
    .local v16, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v17, "alpha":F
    .local v18, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v19, "$dirty":I
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_27

    new-instance v7, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    move-object/from16 p1, v12

    move-object v12, v8

    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v8, v18

    move/from16 v9, p9

    move-object/from16 v20, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V

    invoke-interface {v12, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v12    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v20, v10

    move-object/from16 p1, v12

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    return-void
.end method

.method public static final SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0, "$this$SubcomposeAsyncImageContent"    # Lcoil/compose/SubcomposeAsyncImageScope;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "painter"    # Landroidx/compose/ui/graphics/painter/Painter;
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p5, "contentScale"    # Landroidx/compose/ui/layout/ContentScale;
    .param p6, "alpha"    # F
    .param p7, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p8, "clipToBounds"    # Z
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    .line 336
    move/from16 v12, p10

    move/from16 v11, p11

    const v0, 0x347d7a3b

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v0, p10

    .local v0, "$dirty":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v11

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v14, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0xe

    if-nez v1, :cond_2

    move-object/from16 v14, p0

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p0

    :goto_1
    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    and-int/lit16 v5, v12, 0x1c00

    if-nez v5, :cond_9

    and-int/lit8 v5, v11, 0x4

    if-nez v5, :cond_7

    move-object/from16 v5, p3

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x800

    goto :goto_4

    :cond_7
    move-object/from16 v5, p3

    :cond_8
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v0, v6

    goto :goto_5

    :cond_9
    move-object/from16 v5, p3

    :goto_5
    const v6, 0xe000

    and-int/2addr v6, v12

    if-nez v6, :cond_c

    and-int/lit8 v6, v11, 0x8

    if-nez v6, :cond_a

    move-object/from16 v6, p4

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x4000

    goto :goto_6

    :cond_a
    move-object/from16 v6, p4

    :cond_b
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v0, v7

    goto :goto_7

    :cond_c
    move-object/from16 v6, p4

    :goto_7
    const/high16 v7, 0x70000

    and-int/2addr v7, v12

    if-nez v7, :cond_f

    and-int/lit8 v7, v11, 0x10

    if-nez v7, :cond_d

    move-object/from16 v7, p5

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/high16 v8, 0x20000

    goto :goto_8

    :cond_d
    move-object/from16 v7, p5

    :cond_e
    const/high16 v8, 0x10000

    :goto_8
    or-int/2addr v0, v8

    goto :goto_9

    :cond_f
    move-object/from16 v7, p5

    :goto_9
    const/high16 v8, 0x380000

    and-int/2addr v8, v12

    if-nez v8, :cond_12

    and-int/lit8 v8, v11, 0x20

    if-nez v8, :cond_10

    move/from16 v8, p6

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_11

    const/high16 v9, 0x100000

    goto :goto_a

    :cond_10
    move/from16 v8, p6

    :cond_11
    const/high16 v9, 0x80000

    :goto_a
    or-int/2addr v0, v9

    goto :goto_b

    :cond_12
    move/from16 v8, p6

    :goto_b
    const/high16 v9, 0x1c00000

    and-int/2addr v9, v12

    if-nez v9, :cond_15

    and-int/lit8 v9, v11, 0x40

    if-nez v9, :cond_13

    move-object/from16 v9, p7

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/high16 v10, 0x800000

    goto :goto_c

    :cond_13
    move-object/from16 v9, p7

    :cond_14
    const/high16 v10, 0x400000

    :goto_c
    or-int/2addr v0, v10

    goto :goto_d

    :cond_15
    move-object/from16 v9, p7

    :goto_d
    const/high16 v10, 0xe000000

    and-int/2addr v10, v12

    if-nez v10, :cond_18

    and-int/lit16 v10, v11, 0x80

    if-nez v10, :cond_16

    move/from16 v10, p8

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_17

    const/high16 v15, 0x4000000

    goto :goto_e

    :cond_16
    move/from16 v10, p8

    :cond_17
    const/high16 v15, 0x2000000

    :goto_e
    or-int/2addr v0, v15

    goto :goto_f

    :cond_18
    move/from16 v10, p8

    :goto_f
    if-ne v4, v2, :cond_1a

    const v2, 0xb6db6db

    and-int/2addr v2, v0

    const v15, 0x2492492

    if-ne v2, v15, :cond_1a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_10

    .line 352
    :cond_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p2

    move/from16 v23, v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    goto/16 :goto_18

    .line 336
    :cond_1a
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v15, -0xe000001

    const v16, -0x1c00001

    const v17, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    if-eqz v2, :cond_23

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_11

    .line 335
    :cond_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v4, :cond_1c

    and-int/lit16 v0, v0, -0x381

    :cond_1c
    and-int/lit8 v1, v11, 0x4

    if-eqz v1, :cond_1d

    and-int/lit16 v0, v0, -0x1c01

    :cond_1d
    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_1e

    and-int v0, v0, v19

    :cond_1e
    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_1f

    and-int v0, v0, v18

    :cond_1f
    and-int/lit8 v1, v11, 0x20

    if-eqz v1, :cond_20

    and-int v0, v0, v17

    :cond_20
    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_21

    and-int v0, v0, v16

    :cond_21
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_22

    and-int/2addr v0, v15

    :cond_22
    move-object/from16 v2, p2

    move-object v1, v3

    goto :goto_14

    .line 336
    :cond_23
    :goto_11
    if-eqz v1, :cond_24

    .line 328
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 336
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_24
    move-object v1, v3

    .line 328
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    if-eqz v4, :cond_25

    .line 329
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getPainter()Lcoil/compose/AsyncImagePainter;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/painter/Painter;

    .end local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .local v2, "painter":Landroidx/compose/ui/graphics/painter/Painter;
    and-int/lit16 v0, v0, -0x381

    goto :goto_13

    .line 328
    .end local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    :cond_25
    move-object/from16 v2, p2

    .line 329
    .end local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    :goto_13
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_26

    .line 330
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .end local p3    # "contentDescription":Ljava/lang/String;
    .local v3, "contentDescription":Ljava/lang/String;
    and-int/lit16 v0, v0, -0x1c01

    move-object v5, v3

    .end local v3    # "contentDescription":Ljava/lang/String;
    .local v5, "contentDescription":Ljava/lang/String;
    :cond_26
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_27

    .line 331
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .end local p4    # "alignment":Landroidx/compose/ui/Alignment;
    .local v3, "alignment":Landroidx/compose/ui/Alignment;
    and-int v0, v0, v19

    move-object v6, v3

    .end local v3    # "alignment":Landroidx/compose/ui/Alignment;
    .local v6, "alignment":Landroidx/compose/ui/Alignment;
    :cond_27
    and-int/lit8 v3, v11, 0x10

    if-eqz v3, :cond_28

    .line 332
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getContentScale()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v3

    .end local p5    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v3, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    and-int v0, v0, v18

    move-object v7, v3

    .end local v3    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v7, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    :cond_28
    and-int/lit8 v3, v11, 0x20

    if-eqz v3, :cond_29

    .line 333
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getAlpha()F

    move-result v3

    .end local p6    # "alpha":F
    .local v3, "alpha":F
    and-int v0, v0, v17

    move v8, v3

    .end local v3    # "alpha":F
    .local v8, "alpha":F
    :cond_29
    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_2a

    .line 334
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v3

    .end local p7    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v3, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    and-int v0, v0, v16

    move-object v9, v3

    .end local v3    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v9, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    :cond_2a
    and-int/lit16 v3, v11, 0x80

    if-eqz v3, :cond_2b

    .line 335
    invoke-interface/range {p0 .. p0}, Lcoil/compose/SubcomposeAsyncImageScope;->getClipToBounds()Z

    move-result v3

    .end local p8    # "clipToBounds":Z
    .local v3, "clipToBounds":Z
    and-int/2addr v0, v15

    move v10, v3

    .end local v3    # "clipToBounds":Z
    .local v10, "clipToBounds":Z
    :cond_2b
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 337
    nop

    .line 338
    invoke-static {v1, v5}, Lcoil/compose/UtilsKt;->contentDescription(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 339
    nop

    .line 443
    .local v3, "$this$SubcomposeAsyncImageContent_u24lambda_u242":Landroidx/compose/ui/Modifier;
    const/4 v4, 0x0

    .line 339
    .local v4, "$i$a$-run-SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$1":I
    if-eqz v10, :cond_2c

    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    move-object v3, v15

    .line 341
    .end local v3    # "$this$SubcomposeAsyncImageContent_u24lambda_u242":Landroidx/compose/ui/Modifier;
    .end local v4    # "$i$a$-run-SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$1":I
    :cond_2c
    new-instance v4, Lcoil/compose/ContentPainterElement;

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 341
    move-object/from16 p1, v4

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move/from16 p5, v8

    move-object/from16 p6, v9

    invoke-direct/range {p1 .. p6}, Lcoil/compose/ContentPainterElement;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 340
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 336
    sget-object v4, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$2;->INSTANCE:Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$2;

    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/16 v15, 0x30

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    move/from16 p1, v0

    .end local v0    # "$dirty":I
    .local v16, "$i$f$Layout":I
    .local p1, "$dirty":I
    const v0, 0x207baf9a

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 445
    .local v0, "compositeKeyHash$iv":I
    move-object/from16 v17, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 446
    .local v1, "materialized$iv":Landroidx/compose/ui/Modifier;
    nop

    .end local v2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .restart local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 448
    .local v2, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 447
    const/16 v19, 0x6

    .local v19, "$changed$iv$iv":I
    move-object/from16 p3, v18

    .local p3, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    move-object/from16 p4, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v18, "$i$f$ReusableComposeNode":I
    .local p4, "modifier$iv":Landroidx/compose/ui/Modifier;
    const v3, 0x53ca7ea5

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 449
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 450
    :cond_2d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 451
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 452
    new-instance v3, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$$inlined$Layout$1;

    move-object/from16 p5, v5

    move-object/from16 v5, p3

    .end local p3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local p5, "contentDescription":Ljava/lang/String;
    invoke-direct {v3, v5}, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    .line 454
    .end local p5    # "contentDescription":Ljava/lang/String;
    .local v5, "contentDescription":Ljava/lang/String;
    .restart local p3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2e
    move-object/from16 p5, v5

    move-object/from16 v5, p3

    .end local p3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p5    # "contentDescription":Ljava/lang/String;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 456
    :goto_15
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 457
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p3, v5

    .end local v5    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 458
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 459
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 462
    .local v21, "$i$f$set-impl":I
    move-object/from16 p6, v3

    .local p6, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 463
    .local v22, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_30

    move-object/from16 p7, v1

    .end local v1    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .local p7, "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p8, v2

    .end local v2    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local p8, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_16

    :cond_2f
    move-object/from16 v2, p6

    goto :goto_17

    .end local p7    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p8    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v1    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .restart local v2    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_30
    move-object/from16 p7, v1

    move-object/from16 p8, v2

    .line 464
    .end local v1    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v2    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local p7    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .restart local p8    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p6

    .end local p6    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 467
    :goto_17
    nop

    .line 462
    .end local v2    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 467
    nop

    .line 468
    .end local v5    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 456
    .end local v3    # "$this$Layout_u24lambda_u241$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$2$iv":I
    nop

    .line 469
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 470
    nop

    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "$changed$iv$iv":I
    .end local p3    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 471
    move/from16 v23, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    .line 352
    .end local v0    # "compositeKeyHash$iv":I
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "alignment":Landroidx/compose/ui/Alignment;
    .end local v7    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .end local v8    # "alpha":F
    .end local v9    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .end local v10    # "clipToBounds":Z
    .end local p1    # "$dirty":I
    .end local p2    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .end local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "contentDescription":Ljava/lang/String;
    .end local p7    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local p8    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v15, "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .local v16, "contentDescription":Ljava/lang/String;
    .local v18, "alignment":Landroidx/compose/ui/Alignment;
    .local v19, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .local v20, "alpha":F
    .local v21, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    .local v22, "clipToBounds":Z
    .local v23, "$dirty":I
    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_31

    new-instance v9, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object v12, v9

    move/from16 v9, v22

    move-object/from16 p9, v13

    move-object v13, v10

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p9    # "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcoil/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;-><init>(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZII)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_19

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_31
    move-object/from16 p9, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p9    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_19
    return-void
.end method

.method private static final SubcomposeAsyncImageContent$lambda$3(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p11

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final SubcomposeAsyncImageContent$lambda$4(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p10

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final SubcomposeAsyncImage_gl8XCv8$lambda$1(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p15

    move/from16 v16, p14

    invoke-static/range {v1 .. v16}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contentOf(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;
    .locals 3
    .param p0, "loading"    # Lkotlin/jvm/functions/Function4;
    .param p1, "success"    # Lkotlin/jvm/functions/Function4;
    .param p2, "error"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function3<",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 380
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    sget-object v0, Lcoil/compose/ComposableSingletons$SubcomposeAsyncImageKt;->INSTANCE:Lcoil/compose/ComposableSingletons$SubcomposeAsyncImageKt;

    invoke-virtual {v0}, Lcoil/compose/ComposableSingletons$SubcomposeAsyncImageKt;->getLambda-1$coil_compose_base_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;

    invoke-direct {v0, p0, p1, p2}, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)V

    const v1, 0x2cbfdce0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 380
    :goto_1
    return-object v0
.end method
