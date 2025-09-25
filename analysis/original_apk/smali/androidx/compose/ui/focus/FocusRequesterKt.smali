.class public final Landroidx/compose/ui/focus/FocusRequesterKt;
.super Ljava/lang/Object;
.source "FocusRequester.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "FocusRequesterNotInitialized",
        "",
        "getFocusRequesterNotInitialized$annotations",
        "()V",
        "InvalidFocusRequesterInvocation",
        "getInvalidFocusRequesterInvocation$annotations",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FocusRequesterNotInitialized:Ljava/lang/String; = "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

.field private static final InvalidFocusRequesterInvocation:Ljava/lang/String; = "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"


# direct methods
.method private static synthetic getFocusRequesterNotInitialized$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getInvalidFocusRequesterInvocation$annotations()V
    .locals 0

    return-void
.end method
