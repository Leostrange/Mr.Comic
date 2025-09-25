.class Landroidx/core/view/ViewCompat$Api28Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5876
    return-void
.end method

.method static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 5920
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 5922
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    .line 5923
    .local v0, "viewListeners":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Landroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_0

    .line 5924
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    move-object v0, v1

    .line 5925
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5928
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 5930
    .local v1, "fwListener":Landroid/view/View$OnUnhandledKeyEventListener;
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5931
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 5932
    return-void
.end method

.method static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5886
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static isAccessibilityHeading(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5902
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v0

    return v0
.end method

.method static isScreenReaderFocusable(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5907
    invoke-virtual {p0}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result v0

    return v0
.end method

.method static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 5939
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 5941
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    .line 5942
    .local v0, "viewListeners":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Landroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_0

    .line 5943
    return-void

    .line 5945
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnUnhandledKeyEventListener;

    .line 5946
    .local v1, "fwListener":Landroid/view/View$OnUnhandledKeyEventListener;
    if-eqz v1, :cond_1

    .line 5947
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 5949
    :cond_1
    return-void
.end method

.method static requireViewById(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 5881
    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static setAccessibilityHeading(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isHeading"    # Z

    .line 5897
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    .line 5898
    return-void
.end method

.method static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "accessibilityPaneTitle"    # Ljava/lang/CharSequence;

    .line 5892
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 5893
    return-void
.end method

.method public static setAutofillId(Landroid/view/View;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 5953
    invoke-virtual {p0, p1}, Landroid/view/View;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5954
    return-void
.end method

.method static setScreenReaderFocusable(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "screenReaderFocusable"    # Z

    .line 5912
    invoke-virtual {p0, p1}, Landroid/view/View;->setScreenReaderFocusable(Z)V

    .line 5913
    return-void
.end method
