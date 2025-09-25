.class final Landroidx/compose/ui/tooling/data/CompositionCallStack;
.super Ljava/lang/Object;
.source "SlotTree.jvm.kt"

# interfaces
.implements Landroidx/compose/ui/tooling/data/SourceContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/tooling/data/SourceContext;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTree.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTree.jvm.kt\nandroidx/compose/ui/tooling/data/CompositionCallStack\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,878:1\n1855#2,2:879\n1#3:881\n361#4,7:882\n*S KotlinDebug\n*F\n+ 1 SlotTree.jvm.kt\nandroidx/compose/ui/tooling/data/CompositionCallStack\n*L\n591#1:879,2\n659#1:882,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BC\u0012&\u0010\u0003\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\tH\u0002J$\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u00152\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u000000J\u0010\u00101\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u0005H\u0002J\u0012\u00102\u001a\u0004\u0018\u00010\u00052\u0006\u00103\u001a\u00020\u0015H\u0002J\u0008\u00104\u001a\u00020\u0005H\u0002J\u0010\u00105\u001a\u0002062\u0006\u0010-\u001a\u00020\u0005H\u0002R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R.\u0010\u0003\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00050(X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/data/CompositionCallStack;",
        "T",
        "Landroidx/compose/ui/tooling/data/SourceContext;",
        "factory",
        "Lkotlin/Function3;",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "",
        "contexts",
        "",
        "",
        "",
        "(Lkotlin/jvm/functions/Function3;Ljava/util/Map;)V",
        "<set-?>",
        "Landroidx/compose/ui/unit/IntRect;",
        "bounds",
        "getBounds",
        "()Landroidx/compose/ui/unit/IntRect;",
        "current",
        "getCurrent",
        "()Landroidx/compose/runtime/tooling/CompositionGroup;",
        "currentCallIndex",
        "",
        "depth",
        "getDepth",
        "()I",
        "isInline",
        "",
        "()Z",
        "location",
        "Landroidx/compose/ui/tooling/data/SourceLocation;",
        "getLocation",
        "()Landroidx/compose/ui/tooling/data/SourceLocation;",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "parameters",
        "Landroidx/compose/ui/tooling/data/ParameterInformation;",
        "getParameters",
        "()Ljava/util/List;",
        "stack",
        "Lkotlin/collections/ArrayDeque;",
        "contextOf",
        "Landroidx/compose/ui/tooling/data/SourceInformationContext;",
        "information",
        "convert",
        "group",
        "callIndex",
        "out",
        "",
        "isCall",
        "parentGroup",
        "parentDepth",
        "pop",
        "push",
        "",
        "ui-tooling-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bounds:Landroidx/compose/ui/unit/IntRect;

.field private final contexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentCallIndex:I

.field private final factory:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "Ljava/util/List<",
            "+TT;>;TT;>;"
        }
    .end annotation
.end field

.field private final stack:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/util/Map;)V
    .locals 1
    .param p1, "factory"    # Lkotlin/jvm/functions/Function3;
    .param p2, "contexts"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "-",
            "Landroidx/compose/ui/tooling/data/SourceContext;",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->factory:Lkotlin/jvm/functions/Function3;

    .line 581
    iput-object p2, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contexts:Ljava/util/Map;

    .line 583
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    .line 620
    invoke-static {}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getEmptyBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    .line 579
    return-void
.end method

.method private final contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .locals 6
    .param p1, "information"    # Ljava/lang/String;

    .line 659
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contexts:Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 882
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 883
    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 884
    const/4 v4, 0x0

    .line 659
    .local v4, "$i$a$-getOrPut-CompositionCallStack$contextOf$1":I
    const/4 v5, 0x2

    invoke-static {p1, v3, v5, v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->sourceInformationContextOf$default(Ljava/lang/String;Landroidx/compose/ui/tooling/data/SourceInformationContext;ILjava/lang/Object;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v4

    .line 884
    .end local v4    # "$i$a$-getOrPut-CompositionCallStack$contextOf$1":I
    nop

    .line 885
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 888
    :cond_0
    move-object v4, v2

    .line 883
    :goto_0
    nop

    .line 659
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    instance-of v0, v4, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    if-eqz v0, :cond_1

    move-object v3, v4

    check-cast v3, Landroidx/compose/ui/tooling/data/SourceInformationContext;

    .line 660
    :cond_1
    return-object v3
.end method

.method private final getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1

    .line 653
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v0
.end method

.method private final isCall(Landroidx/compose/runtime/tooling/CompositionGroup;)Z
    .locals 5
    .param p1, "group"    # Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 663
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "C"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private final parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 2
    .param p1, "parentDepth"    # I

    .line 656
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    iget-object v1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final pop()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1

    .line 650
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionGroup;

    return-object v0
.end method

.method private final push(Landroidx/compose/runtime/tooling/CompositionGroup;)V
    .locals 1
    .param p1, "group"    # Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 647
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;
    .locals 10
    .param p1, "group"    # Landroidx/compose/runtime/tooling/CompositionGroup;
    .param p2, "callIndex"    # I
    .param p3, "out"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            "I",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroidx/compose/ui/unit/IntRect;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 588
    .local v0, "children":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "box":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->getEmptyBox()Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    .line 589
    invoke-direct {p0, p1}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->push(Landroidx/compose/runtime/tooling/CompositionGroup;)V

    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, "childCallIndex":I
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object v3

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 879
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/tooling/CompositionGroup;

    .local v7, "child":Landroidx/compose/runtime/tooling/CompositionGroup;
    const/4 v8, 0x0

    .line 592
    .local v8, "$i$a$-forEach-CompositionCallStack$convert$1":I
    invoke-virtual {p0, v7, v2, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->convert(Landroidx/compose/runtime/tooling/CompositionGroup;ILjava/util/List;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->union(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    .line 593
    invoke-direct {p0, v7}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->isCall(Landroidx/compose/runtime/tooling/CompositionGroup;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 594
    add-int/lit8 v2, v2, 0x1

    .line 596
    :cond_0
    nop

    .line 879
    .end local v7    # "child":Landroidx/compose/runtime/tooling/CompositionGroup;
    .end local v8    # "$i$a$-forEach-CompositionCallStack$convert$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 880
    :cond_1
    nop

    .line 597
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionGroup;->getNode()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/ui/layout/LayoutInfo;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/compose/ui/layout/LayoutInfo;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 881
    .local v3, "it":Landroidx/compose/ui/layout/LayoutInfo;
    const/4 v4, 0x0

    .line 597
    .local v4, "$i$a$-let-CompositionCallStack$convert$2":I
    invoke-static {v3}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->access$boundsOfLayoutNode(Landroidx/compose/ui/layout/LayoutInfo;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v3

    .end local v3    # "it":Landroidx/compose/ui/layout/LayoutInfo;
    .end local v4    # "$i$a$-let-CompositionCallStack$convert$2":I
    if-nez v3, :cond_4

    :cond_3
    move-object v3, v1

    :cond_4
    move-object v1, v3

    .line 598
    iput p2, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->currentCallIndex:I

    .line 599
    iput-object v1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    .line 600
    iget-object v3, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->factory:Lkotlin/jvm/functions/Function3;

    invoke-interface {v3, p1, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 881
    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 600
    .local v4, "$i$a$-let-CompositionCallStack$convert$3":I
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-CompositionCallStack$convert$3":I
    :cond_5
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->pop()Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 602
    return-object v1
.end method

.method public getBounds()Landroidx/compose/ui/unit/IntRect;
    .locals 1

    .line 620
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->bounds:Landroidx/compose/ui/unit/IntRect;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 644
    iget-object v0, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public getLocation()Landroidx/compose/ui/tooling/data/SourceLocation;
    .locals 6

    .line 625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 881
    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 625
    .local v2, "$i$a$-let-CompositionCallStack$location$context$1":I
    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-CompositionCallStack$location$context$1":I
    if-nez v0, :cond_0

    goto :goto_3

    .line 626
    .local v0, "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    :cond_0
    move-object v2, v0

    .line 627
    .local v2, "parentContext":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    const/4 v3, 0x2

    .line 628
    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->stack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->getSourceFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_3

    .line 629
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-direct {p0, v3}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->parentGroup(I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 881
    .local v3, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 629
    .local v5, "$i$a$-let-CompositionCallStack$location$1":I
    invoke-direct {p0, v3}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v3

    .end local v3    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-CompositionCallStack$location$1":I
    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    move-object v2, v3

    move v3, v4

    goto :goto_0

    .line 631
    .end local v4    # "index":I
    .local v3, "index":I
    :cond_3
    iget v1, p0, Landroidx/compose/ui/tooling/data/CompositionCallStack;->currentCallIndex:I

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/tooling/data/SourceInformationContext;->sourceLocation(ILandroidx/compose/ui/tooling/data/SourceInformationContext;)Landroidx/compose/ui/tooling/data/SourceLocation;

    move-result-object v1

    return-object v1

    .line 625
    .end local v0    # "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .end local v2    # "parentContext":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .end local v3    # "index":I
    :cond_4
    :goto_3
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 11

    .line 607
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 608
    .local v0, "info":Ljava/lang/String;
    :cond_0
    nop

    .line 609
    const-string v2, "CC("

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 610
    :cond_1
    const-string v2, "C("

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 608
    :goto_0
    nop

    .line 613
    .local v2, "startIndex":I
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v6, 0x29

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    .line 614
    .local v3, "endIndex":I
    if-le v3, v4, :cond_2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 611
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :cond_3
    return-object v1
.end method

.method public getParameters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/tooling/data/ParameterInformation;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    .line 637
    .local v0, "group":Landroidx/compose/runtime/tooling/CompositionGroup;
    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 881
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 637
    .local v2, "$i$a$-let-CompositionCallStack$parameters$context$1":I
    invoke-direct {p0, v1}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->contextOf(Ljava/lang/String;)Landroidx/compose/ui/tooling/data/SourceInformationContext;

    move-result-object v1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-CompositionCallStack$parameters$context$1":I
    if-nez v1, :cond_0

    goto :goto_0

    .line 638
    .local v1, "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 639
    .local v2, "data":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getData()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 640
    invoke-static {v2, v1}, Landroidx/compose/ui/tooling/data/SlotTreeKt;->access$extractParameterInfo(Ljava/util/List;Landroidx/compose/ui/tooling/data/SourceInformationContext;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 637
    .end local v1    # "context":Landroidx/compose/ui/tooling/data/SourceInformationContext;
    .end local v2    # "data":Ljava/util/List;
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isInline()Z
    .locals 5

    .line 618
    invoke-direct {p0}, Landroidx/compose/ui/tooling/data/CompositionCallStack;->getCurrent()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSourceInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "CC"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
