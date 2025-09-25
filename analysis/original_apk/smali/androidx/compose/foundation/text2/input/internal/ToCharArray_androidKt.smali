.class public final Landroidx/compose/foundation/text2/input/internal/ToCharArray_androidKt;
.super Ljava/lang/Object;
.source "ToCharArray.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "toCharArray",
        "",
        "",
        "destination",
        "",
        "destinationOffset",
        "",
        "startIndex",
        "endIndex",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toCharArray(Ljava/lang/CharSequence;[CIII)V
    .locals 1
    .param p0, "$this$toCharArray"    # Ljava/lang/CharSequence;
    .param p1, "destination"    # [C
    .param p2, "destinationOffset"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I

    .line 31
    instance-of v0, p0, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/TextFieldCharSequenceKt;->toCharArray(Landroidx/compose/foundation/text2/input/TextFieldCharSequence;[CIII)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0, p3, p4, p1, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 36
    :goto_0
    return-void
.end method
